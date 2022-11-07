using AutoMapper;
using LojinhaManagerDomain.Models;
using LojinhaManagerDomain.Requests;
using LojinhaManagerORM.Contexts;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace LojinhaManagerAPI.Controllers.v1
{
    [Route("api/v1/[controller]")]
    [ApiController]
    public class CustomersController : ControllerBase
    {
        private readonly LojinhaManagerPostgresContext _context;
        private readonly IMapper _mapper;

        public CustomersController(LojinhaManagerPostgresContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllCustomers()
        {
            try
            {
                IEnumerable<Customer> customers = await _context.Customers.ToListAsync();
                return Ok(customers);
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
            }
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetCustomerById(
            [FromRoute] int id)
        {
            try
            {
                var customer = await _context.Customers.FirstOrDefaultAsync(customer => customer.Id == id);
                return Ok(customer ?? throw new Exception("Não há cliente com esse id!"));
            }
            catch (Exception e)
            {
                return NotFound(e.Message);
            }
        }

        [HttpPost]
        public async Task<IActionResult> CreateCostumer(
            [FromBody] CustomerCreateRequest request)
        {
            try
            {
                await _context.Customers.AddAsync(_mapper.Map<Customer>(request));
                await _context.SaveChangesAsync();

                return Ok("Cliente cadastrado com sucesso!");
            }
            catch (Exception)
            {
                return BadRequest("Houve um erro na operação de cadastro de cliente!");
            }
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateCustomer(
            [FromRoute] int id,
            [FromBody] CustomerCreateRequest request)
        {
            try 
            {
                var customer = await _context.Customers.FirstOrDefaultAsync(customer => customer.Id == id);
                if (customer == null)
                    return NotFound();

                customer.Name = request.Name;

                _context.Customers.Update(customer);
                await _context.SaveChangesAsync();

                return Ok($"O cliente de id ${id} foi salvo com sucesso!");
            }
            catch(Exception e)
            {
                return BadRequest(e.Message);    
            }
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCustomer(
            [FromRoute] int id)
        {
            try 
            {
                var customer = await _context.Customers.FirstOrDefaultAsync(customer => customer.Id == id);

                if (customer == null)
                    return NotFound();

                _context.Customers.Remove(customer);
                await _context.SaveChangesAsync();

                return Ok("Customer was deleted sucessfully!");
            }
            catch(Exception)
            {
                return BadRequest("Algo de errado não está certo!");   
            }
        }

    }
}

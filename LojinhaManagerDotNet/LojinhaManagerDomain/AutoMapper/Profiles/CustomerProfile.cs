using AutoMapper;
using LojinhaManagerDomain.Models;
using LojinhaManagerDomain.Requests;

namespace LojinhaManagerDomain.AutoMapper.Profiles
{
    public class CustomerProfile : Profile
    {
        public CustomerProfile()
        {
            CreateMap<CustomerCreateRequest, Customer>();
        }
    }
}

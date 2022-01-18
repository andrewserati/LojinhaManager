using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace LojinhaManagerConsoleClient
{
    public class Tools
    {

        static HttpClient client = new HttpClient();

        public static void ConfigureConnectionWithAPI()
        {
            client.BaseAddress = new Uri("https://localhost:7000/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        }

        public static async Task VerifyConnectionWithAPIAsync(int numberOfConnectionFailures = 0)
        {

            if (numberOfConnectionFailures == 0)
            {
                Console.WriteLine("\nVerifying connection with the API...");
            }
            else if (numberOfConnectionFailures < 4)
            {
                Console.WriteLine($"\nThe API doesn't working at the moment...trying connect again ({numberOfConnectionFailures}x)");
            }
            else
            { 
                Menu.APIDoenstWorking();
            }

            try
            {
                HttpResponseMessage response = await client.GetAsync("");
                if (response.IsSuccessStatusCode)
                {
                    CustomMessage customMessage = await response.Content.ReadAsAsync<CustomMessage>();
                    Console.WriteLine("\n" + customMessage.Message);
                }
                else
                {
                    Thread.Sleep(4000);
                    numberOfConnectionFailures++;
                    await VerifyConnectionWithAPIAsync(numberOfConnectionFailures);
                }
            }
            catch (HttpRequestException)
            {
                numberOfConnectionFailures++;
                await VerifyConnectionWithAPIAsync(numberOfConnectionFailures);
            }

        }

    }

}

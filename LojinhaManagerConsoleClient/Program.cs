using System;

namespace LojinhaManagerConsoleClient
{
    class Program
    {
        static void Main(string[] args)
        {
            Menu.PrintHeader();

            Tools.ConfigureConnectionWithAPI();
            Tools.VerifyConnectionWithAPIAsync().GetAwaiter().GetResult();

            Menu.PrintMenu();

            Console.WriteLine("Digite o número aqui: ");
            string? option = Console.ReadLine();

            Menu.VerifierOptions(option);
            
            Console.ReadKey();

        }

    }
    
}




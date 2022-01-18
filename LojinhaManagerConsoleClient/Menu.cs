using System.Diagnostics;

namespace LojinhaManagerConsoleClient
{
    public class Menu
    {
        public static void PrintHeader()
        {
            Console.Clear();
            Console.WriteLine("==== LOJINHA MANAGER BY SIRLORDX ====");
        }

        public static void PrintMenu()
        {
            // a lista de opções seja dinâmica
            Console.WriteLine("\nSelecione: ");
            Console.WriteLine("\n1 - Products");
            Console.WriteLine("2 - Services");
        }

        public static void APIDoenstWorking()
        {
            Console.WriteLine("\nThe API doens't working at the moment, please, contact the support for help!");
            Process.GetCurrentProcess().Kill();
        }

        public static void VerifierOptions(string? option)
        {
            if (option == null) 
            {
                Console.WriteLine($"Invalid option, type a valid option (between )");
            }
        }
    }
}


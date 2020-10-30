using System;
using TestLib;

namespace TestApp
{
    public static class Program
    {
        [STAThread]
        public static void Main()
        {
            Console.WriteLine(Baz.Foo());

            ConsoleColor color = Console.ForegroundColor;
            try
            {
                Console.ForegroundColor = ConsoleColor.Green;
                Console.Write("SUCCESS");
            }
            finally
            {
                Console.ForegroundColor = color;
            }
            Console.WriteLine();
        }
    }
}
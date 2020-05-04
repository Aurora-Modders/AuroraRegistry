using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace AuroraRegistry
{
    class Program
    {
        static void Main(string[] args)
        {
            var exe = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Aurora.exe");
            var checksum = GetChecksum(File.ReadAllBytes(exe));
            Console.WriteLine(checksum);
            Console.ReadLine();
        }

        public static string GetChecksum(byte[] bytes)
        {
            using (var sha = SHA256.Create())
            {
                var hash = sha.ComputeHash(bytes);
                var str = Convert.ToBase64String(hash);

                return str.Replace("/", "").Replace("+", "").Replace("=", "").Substring(0, 6);
            }
        }
    }
}

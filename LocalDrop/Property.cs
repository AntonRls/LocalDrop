using System.Net;
using System.Net.Sockets;

namespace LocalDrop
{
    class Property
    {
        public static string GetIp()
        {
            IPAddress[] localIp = Dns.GetHostAddresses(Dns.GetHostName());
            foreach (IPAddress address in localIp)
            {
                if (address.AddressFamily == AddressFamily.InterNetwork)
                {
                    return address.ToString();
                }

            }
            return null;
        }
    }
}

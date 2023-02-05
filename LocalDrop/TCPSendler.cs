using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LocalDrop
{
    public class TCPSendler
    {
        public TcpClient client;
        public Action<int> ChangeStatusLoad;
        public TCPSendler(string ip, int port)
        {
            client = new TcpClient();
            client.Connect(ip, port);
        }
        public async void SendDataAsync(byte[] data, string name)
        {
            NetworkStream stream = client.GetStream();
            int bufferSize = 1024;

           
            byte[] textBytes = Encoding.UTF8.GetBytes(name+"`"+data.Length.ToString());
            await stream.WriteAsync(textBytes, 0, textBytes.Length);
            await Task.Delay(500);
            int bytesSent = 0;
            int bytesLeft = data.Length;



            while (bytesLeft > 0)
            {
                int curDataSize = Math.Min(bufferSize, bytesLeft);

                await stream.WriteAsync(data, bytesSent, curDataSize);
             
                bytesSent += curDataSize;
                bytesLeft -= curDataSize;
                
                ChangeStatusLoad.Invoke(int.Parse(Math.Round(float.Parse(bytesSent.ToString())/float.Parse(data.Length.ToString()) * 100).ToString()));
            }
        }
        

    }
}

using System;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Text;

namespace LocalDrop
{
    class TCPGet
    {
        public async void StartListenerAsync(string ip, int port, Action<string, string> CompleteFile)
        {

     
            var pathDown = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryDownloads);

            IPEndPoint point = new IPEndPoint(IPAddress.Parse(ip), port);
            TcpListener listener = new TcpListener(point);
            listener.Start();

            var client = await listener.AcceptTcpClientAsync();
            FileStream fileStream = null;
            string fileName = "";

            bool isSearchText = true;
            int size = 0;
            while (true)
            {
                try
                {
                    byte[] data = new byte[1024];
                    int numberOfBytesRead = 0;

                    NetworkStream stream = client.GetStream();
                    StringBuilder response = new StringBuilder();
                    do
                    {

                        if (isSearchText)
                        {
                            numberOfBytesRead = await stream.ReadAsync(data, 0, data.Length);
                            response.Append(Encoding.UTF8.GetString(data, 0, numberOfBytesRead));
                        }
                        else
                        {
                            numberOfBytesRead = await stream.ReadAsync(data, 0, data.Length);
                            await fileStream.WriteAsync(data, 0, numberOfBytesRead);
                            if (fileStream.Length == size)
                            {
                                fileStream.Close();
                                string sizeFile = Math.Round(float.Parse(size.ToString()) / 1048576f, 2).ToString().Replace(",", ".");
                                CompleteFile.Invoke(fileName, sizeFile);
                           
                                isSearchText = true;
                                listener.Start();
                                client = await listener.AcceptTcpClientAsync();
                            }
                        }
                    }
                    while (stream.DataAvailable);

                    if (isSearchText)
                    {

                        if (fileStream != null)
                        {
                            fileStream.Dispose();
                        }
                        if (response.ToString().Split('`')[0] != null && response.ToString().Split('`')[0] != "")
                        {
                            fileName = response.ToString().Split('`')[0];
                            size = int.Parse(response.ToString().Split('`')[1]);
                            fileStream = new FileStream(pathDown + "/LocalDrop/" + fileName, FileMode.Create);

                            isSearchText = false;
                        }
                    }
                }
                catch (Exception ex)
                {
                  
                    fileStream.Close();
                }
            }
        }
    }
}

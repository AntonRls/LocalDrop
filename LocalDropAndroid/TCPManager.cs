using System;

namespace LocalDrop
{
    class TCPManager
    {
        TCPGet tcpGet;

        string Ip;
        int Port;
        public TCPManager(string ip, int port)
        {
            tcpGet = new TCPGet();

            Ip = ip;
            Port = port;
        }
        public async void SendFileAsync(byte[] data, string name,TCPSendler sendler)
        {
            sendler.SendDataAsync(data, name);
        }
        public async void StartListenerAsync(Action<string, string> CompleteFileDownload)
        {
            tcpGet.StartListenerAsync(Ip, Port, CompleteFileDownload);
        }
    }
}

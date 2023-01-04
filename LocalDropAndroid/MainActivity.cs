using System;
using Android.App;
using Android.OS;
using Android.Runtime;
using Android.Views;
using AndroidX.AppCompat.Widget;
using AndroidX.AppCompat.App;
using Google.Android.Material.FloatingActionButton;
using Google.Android.Material.Snackbar;
using System.Net;
using System.Net.Sockets;
using AndroidX.Core.App;
using Android;
using Android.Widget;
using System.IO;
using System.Text;
using Android.Content;

namespace LocalDropAndroid
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher = true)]
    public class MainActivity : AppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

            CreateNotificationChannel();
            ActivityCompat.RequestPermissions(this, new string[] {
                Manifest.Permission.WriteExternalStorage,
                Manifest.Permission.ReadExternalStorage
                }, 1);

            textLog = FindViewById<TextView>(Resource.Id.textView1);
            textLog.Text = "IP для подключения:\n" + GetIp();
            var pathDown = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryDownloads);

            if (!Directory.Exists(pathDown + "/LocalDrop")) {
                Directory.CreateDirectory(pathDown + "/LocalDrop");
            }
            textLog.Text += "\n\nПуть сохранения:\n"+ pathDown + "/LocalDrop/";
            Get();
        }
        TextView textLog;
        async void Get()
        {
            textLog.Text += "\n\nПолученные файлы:\n";
            var pathDown = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryDownloads);

            IPEndPoint point = new IPEndPoint(IPAddress.Parse(GetIp()), 5555);
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
                                var stackBuilder = Android.App.TaskStackBuilder.Create(this);
                                var resultIntent = new Intent(Intent.ActionView);
                                resultIntent.SetData(Android.Net.Uri.Parse(pathDown+"/LocalDrop/"));
                                stackBuilder.AddNextIntent(resultIntent);
                           
                                var resultPendingIntent = stackBuilder.GetPendingIntent(0, (PendingIntentFlags)(int)PendingIntentFlags.Immutable);
                                var builder = new NotificationCompat.Builder(this, CHANNEL_ID)
                                    .SetAutoCancel(true)
                                     .SetContentIntent(resultPendingIntent)
                                    .SetContentTitle($"{fileName} ({sizeFile} МБ)")
                                    .SetNumber(1)
                                    .SetSmallIcon(Resource.Drawable.abc_ab_share_pack_mtrl_alpha)
                                    .SetContentText("Файл успешно загружен на ваше устройство");
                                var notificationManager = NotificationManagerCompat.From(this);
                                notificationManager.Notify(1000, builder.Build());
                                textLog.Text += "\n- " + fileName + $" ({sizeFile} МБ)";
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
                            fileStream = new FileStream(pathDown + "/LocalDrop/"+fileName, FileMode.Create);
                        
                            isSearchText = false;
                        }
                    }
                }
                catch(Exception ex)
                {
                    textLog.Text += "\n\n" + ex.ToString();
                    fileStream.Close();
                }
            }
        }
        string GetIp()
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
        const string CHANNEL_ID = "newFiles";
        void CreateNotificationChannel()
        {
            if (Build.VERSION.SdkInt < BuildVersionCodes.O)
            {
  
                return;
            }
            var name = "Новые файлы";
            var description = "Используется для уведомления о получении новых файлов";
            var channel = new NotificationChannel(CHANNEL_ID, name, NotificationImportance.Default)
            {
                Description = description
            };

            var notificationManager = (NotificationManager)GetSystemService(NotificationService);
            notificationManager.CreateNotificationChannel(channel);
        }
        public override bool OnCreateOptionsMenu(IMenu menu)
        {
            MenuInflater.Inflate(Resource.Menu.menu_main, menu);
            return true;
        }

        public override bool OnOptionsItemSelected(IMenuItem item)
        {
            int id = item.ItemId;
            if (id == Resource.Id.action_settings)
            {
                return true;
            }

            return base.OnOptionsItemSelected(item);
        }

        private void FabOnClick(object sender, EventArgs eventArgs)
        {
            View view = (View) sender;
            Snackbar.Make(view, "Replace with your own action", Snackbar.LengthLong)
                .SetAction("Action", (View.IOnClickListener)null).Show();
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
	}
}

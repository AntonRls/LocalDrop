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
using Xamarin.Essentials;
using LocalDrop;
using System.Linq;

namespace LocalDropAndroid
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher = true)]
    public class MainActivity : AppCompatActivity
    {
        TCPManager TcpManager;
        const string CHANNEL_ID = "newFiles";
        TextView textLog;

        ProgressBar progressBar;
        string path = null;
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
            textLog.Text += "\n\nПолученные файлы:\n";
         

            Button button = FindViewById<Button>(Resource.Id.button1);
            button.Click += PickFile;

            Button sendButton = FindViewById<Button>(Resource.Id.button2);
            sendButton.Click += SendFile;
      
            progressBar = FindViewById<ProgressBar>(Resource.Id.progressBar1);
            progressBar.Visibility = ViewStates.Gone;


            TcpManager = new TCPManager(GetIp(), 5555);
            TcpManager.StartListenerAsync(CompleteDownloadFile);
        }
        void ChangeStatusUpload(int progress)
        {
            if(progress == 100)
            {
                path = null;
                progressBar.Visibility = ViewStates.Gone;
                Toast.MakeText(this, "Файл успешно передан", ToastLength.Long).Show();
            }
        }
        async void SendFile(object sender, EventArgs e)
        {

            var text = FindViewById<EditText>(Resource.Id.textInputEditText1);
            if (path != null)
            {
                progressBar.Visibility = ViewStates.Visible;
                TCPSendler sendler = new TCPSendler(text.Text, 5555);
                sendler.ChangeStatusLoad = ChangeStatusUpload;
                TcpManager.SendFileAsync(File.ReadAllBytes(path), path.Split('/').Last(), sendler);
            }
            else
            {
                Toast.MakeText(this, "Необходимо выбрать файл!", ToastLength.Long).Show();
            }
            
        }
        async void PickFile(object sender, EventArgs e)
        {
            var file = await FilePicker.PickAsync();
            if (file == null)
            {
                return;
            }
            else
            {
                path = file.FullPath;
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
        void CompleteDownloadFile(string fileName, string sizeFile)
        {
            var pathDown = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryDownloads);

            var stackBuilder = Android.App.TaskStackBuilder.Create(this);
            var resultIntent = new Intent(Intent.ActionView);
            resultIntent.SetData(Android.Net.Uri.Parse(pathDown + "/LocalDrop/"));
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
        }
    }
}

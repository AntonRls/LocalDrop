using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LocalDrop
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        Device devices;
        private void Form1_Load(object sender, EventArgs e)
        {
            devices = new Device();
            UpdateListDevices();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            AddDevice addDevice = new AddDevice();
            devices = addDevice.AddNewDevice();
            UpdateListDevices();
        }
        private void UpdateListDevices()
        {
            comboBox1.Items.Clear();
            foreach (ComboboxItem item in devices.Devices)
            {
                if (item.Text != null && item.Value != null)
                {
                    comboBox1.Items.Add(item);
                }
            }
        }
        private void panel1_DragLeave(object sender, EventArgs e)
        {
           
        }

        private void panel1_DragEnter(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
               
                string[] files = (string[])e.Data.GetData(DataFormats.FileDrop);
                FileAttributes attr = File.GetAttributes(files[0]);
                if((attr & FileAttributes.Directory) == FileAttributes.Directory) { return; }
                if (files.Length > 1)
                {
                    MessageBox.Show("Нельзя перемещать больше одного файла");
                }
                else
                {
                    label2.Text = files[0].Split('\\').Last();
                    PathToFile = files[0];
                }
            }
            e.Effect = DragDropEffects.Move;
        }
        string PathToFile = null;
        private void panel1_DragDrop(object sender, DragEventArgs e)
        {
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            progressBar1.Value = 0;
            ComboboxItem item = (ComboboxItem)comboBox1.SelectedItem;

   
            TCPSendler sendler = new TCPSendler((string)item.Value, 5555);

            sendler.ChangeStatusLoad += ChangeStatusLoad;

            byte[] data = File.ReadAllBytes(PathToFile);
     
            sendler.SendData(data, PathToFile.Split('\\').Last());
        }

        public void ChangeStatusLoad(int progress)
        {
            if (progress <= 100)
            {
                progressBar1.Value = progress;
            }
            else
            {
                progressBar1.Value = 100;
            }
           
        }

    
    }
}

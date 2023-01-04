using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LocalDrop
{
    public partial class AddDevice : Form
    {
        public AddDevice()
        {
            InitializeComponent();
        }
        Device devices;
        public Device AddNewDevice()
        {
            devices = new Device();
            ShowDialog();
            return devices;
        }
        private void button1_Click(object sender, EventArgs e)
        {
            
            devices.Devices.Add(new ComboboxItem()
            {
                Value = textBox2.Text,
                Text = textBox1.Text
            });
            devices.SaveDevices();
            Close();
        }
    }
}

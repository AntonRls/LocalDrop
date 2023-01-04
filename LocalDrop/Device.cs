using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LocalDrop
{
    public class Device
    {
        public Device()
        {
            if (Properties.Settings.Default.Devices != "none")
            {
                Devices = JsonConvert.DeserializeObject<List<ComboboxItem>>(Properties.Settings.Default.Devices);
            }
            else
            {
                Devices = new List<ComboboxItem>();
            }
        }
        public List<ComboboxItem> Devices;
        public void SaveDevices()
        {
            Properties.Settings.Default.Devices = JsonConvert.SerializeObject(Devices);
            Properties.Settings.Default.Save();
        }
    }
    public class ComboboxItem
    {
        public object Value { get; set; }
        public string Text { get; set; }

        public override string ToString()
        {
            return Text;
        }
    }
}

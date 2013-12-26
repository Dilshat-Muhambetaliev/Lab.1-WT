using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MongoDB.Bson;

namespace PG
{
    public class Foto
    {
        public Foto()
        {
            var r = new Random();
            var id = r.Next(int.MinValue, int.MaxValue);
            MyID = id;
        }
        public ObjectId Id { get; set; }
        public int MyID { get; set; }
        public string jpg  { get; set; }
        
    }
}
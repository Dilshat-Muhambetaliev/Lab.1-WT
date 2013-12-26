using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using MongoDB.Bson;
using MongoDB.Driver;
using MongoDB.Driver.Builders;

namespace PG
{
    public class DataAccess
    {
        private MongoCollection<Foto> GetCollection()
        {
            string connectionString =
                "mongodb://qwerty:qwerty@ds053828.mongolab.com:53828/lr1";
            var client = new MongoClient(connectionString);
            var server = client.GetServer();
            var db = server.GetDatabase("lr1");
            var collection = db.GetCollection<Foto>("db1");
            return collection;
        }

        public void Insert(Foto foto)
        {
            var collection = GetCollection();
            collection.Insert(foto);
        }

        public List<Foto> GetFoto1()
        {
            var collection = GetCollection();
            return collection.FindAllAs<Foto>().ToList();
        }

        public void Remove(int myId)
        {
            var collection = GetCollection();
            var query = Query<Foto>.EQ(e => e.MyID, myId);
            collection.Remove(query);

        }
    }
}
using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace PG
{
    public partial class Default : System.Web.UI.Page
    {
      public List<Foto> Foto1
      {
          get { return new DataAccess().GetFoto1(); }
      }
      
        protected void  Page_PreRender(object sender, EventArgs e)
        {
            DataBind();
        }

        //remove button
        protected void btn_Click(object sender, EventArgs e)
        {
            var button = sender as Button;
            var id = Convert.ToInt32(button.CommandArgument);

            new DataAccess().Remove(id);
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            
            if (OurFileUpload.HasFile)
            {
                string path = Server.MapPath("//");
                OurFileUpload.SaveAs(path + OurFileUpload.FileName);

                var currentFoto = new Foto();
                currentFoto.jpg = OurFileUpload.FileName;
                new DataAccess().Insert(currentFoto);
            }
        }












        private void DataBind()
        {
            Repeater1.DataSource = Foto1;
            Repeater1.DataBind();
        }
        
    }
}
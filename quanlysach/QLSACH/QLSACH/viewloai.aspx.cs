using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSACH
{
    public partial class viewloai : System.Web.UI.Page
    {
        ketnoi kn=new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            load();
        }
        public void load()
        {
            string bmaloai = Request.QueryString["maloai"];
            kn.open();
            DataTable dt = new DataTable();
            dt = kn.GetTable("select * from Sach where maloai ='" + bmaloai + "'");
            DataList2.DataSource = dt;
            DataList2.DataBind();
            
        }

        
    }
}
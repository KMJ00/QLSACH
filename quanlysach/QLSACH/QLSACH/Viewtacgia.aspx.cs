using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSACH
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            load();
        }
        public void load()
        {
            string bma = Request.QueryString["matacgia"];
            kn.open();
            DataTable dt = new DataTable();
            dt = kn.GetTable("select * from Sach where matacgia ='" + bma + "'");
            DataList2.DataSource = dt;
            DataList2.DataBind();

        }
    }
}
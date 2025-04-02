using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSACH
{
    public partial class Home : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadvanhoc();
            loadkhoahoc();
            loadtruyen();
        }
        public void loadvanhoc()
        {
            string bmaloai ="001";
            kn.open();
            DataTable dt = new DataTable();
            dt = kn.GetTable("select * from Sach where maloai ='" + bmaloai + "'");
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
        public void loadtruyen()
        {
            string bmaloai = "003";
            kn.open();
            DataTable dt = new DataTable();
            dt = kn.GetTable("select * from Sach where maloai ='" + bmaloai + "'");
            DataList2.DataSource = dt;
            DataList2.DataBind();

        }
        public void loadkhoahoc()
        {
            string bmaloai = "002";
            kn.open();
            DataTable dt = new DataTable();
            dt = kn.GetTable("select * from Sach where maloai ='" + bmaloai + "'");
            DataList3.DataSource = dt;
            DataList3.DataBind();

        }
    }
}
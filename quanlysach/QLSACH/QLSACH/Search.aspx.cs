using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSACH
{
    public partial class Search1 : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
                load();
            }
        }
        public void load()
        {
            string bname = Request.QueryString["name"];
            if (!string.IsNullOrEmpty(bname))
            {
                bname = bname.Replace("'", "''"); 
                bname = bname.Replace("%", ""); 
                string query = "SELECT * FROM Sach WHERE LOWER(tensach) LIKE LOWER(N'%" + bname + "%')";
                kn.open();
                DataList2.DataSource = kn.GetTable(query);
                DataList2.DataBind();
            }
        }
    }
}
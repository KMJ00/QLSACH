using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSACH
{
    public partial class MASTER : System.Web.UI.MasterPage
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            load();
        }
        public void load()
        {
            kn.open();

            string tv = Session["matv"] as string;
            if (!string.IsNullOrEmpty(tv))
            {

                string query = "SELECT tentv FROM taikhoan WHERE matv = '" + tv + "'";
                DataTable dt = kn.GetTable(query);
                string ten = dt.Rows[0]["tentv"].ToString();
                LabelTen.Text = ten;
            }
            else
            {
                LabelTen.Text = "Khách"; // Default text for unauthenticated users
            }
        }
            protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Loin.aspx");
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Lỗi: {ex.Message}');", true);
            }
        }
    }
}
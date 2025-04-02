using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSACH
{
    public partial class USER : System.Web.UI.MasterPage
    {
        ketnoi kn=new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Ensure load is called only on the first page load
            {
                load();
            }
        }
        public void load()
        {
            kn.open();

            string tv = Session["matv"] as string;

            
            DataList1.DataSource = kn.GetTable("SELECT * FROM loai");
            DataList1.DataBind();
            DataList2.DataSource = kn.GetTable("SELECT * FROM nxb");
            DataList2.DataBind();
            DataList3.DataSource = kn.GetTable("SELECT * FROM tacgia");
            DataList3.DataBind();
            if (!string.IsNullOrEmpty(tv))
            {
                
                string query = "SELECT tentv FROM taikhoan WHERE matv = '"+tv+"'";
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
       
        protected void Button2_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            if (!string.IsNullOrEmpty(name))
            {
                Response.Redirect("Search.aspx?name=" + name);
            }
        }
    }
}
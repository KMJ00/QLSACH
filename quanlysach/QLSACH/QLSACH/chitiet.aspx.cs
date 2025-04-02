using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace QLSACH
{
    public partial class chitiet : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string tv = Session["matv"] as string;
            if (!IsPostBack)
            {
                load();
            }
        }
        public void load()
        {
            string bmasach = Request.QueryString["masach"];
            kn.open();
            DataTable dt = new DataTable();
            dt = kn.GetTable("SELECT tensach, loai.tenloai, nxb.nxb, gia, sl,anh, mota, tacgia.tentg " +
                   "FROM Sach " +
                   "JOIN loai ON Sach.maloai = loai.maloai " +
                   "JOIN nxb ON Sach.manxb = nxb.manxb " +
                   "JOIN tacgia ON Sach.matacgia = tacgia.matacgia " +
                   "WHERE masach = '"+bmasach+"'");
            DataList2.DataSource = dt;
            DataList2.DataBind();
            
        }
        
        protected void Dat(object sender, EventArgs e)  
        {
            
            string bmasach = Request.QueryString["masach"];
            
            Response.Redirect("Datsachchon.aspx?masach=" + bmasach);

        }

        protected void Them(object sender, EventArgs e)
        {
            kn.open();
            string tv = Session["matv"] as string; 
            string bmasach = Request.QueryString["masach"];

           
            if (string.IsNullOrEmpty(tv))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bạn cần đăng nhập để thêm vào giỏ hàng.');", true);
                return;
            }
            try
            {
                 
                string queryInsert = "INSERT INTO giohang (matv, masach) VALUES (@TV, @masach)";
                using (var cmdInsert = new SqlCommand(queryInsert, kn.conn))
                {
                    
                    cmdInsert.Parameters.Add("@tv", System.Data.SqlDbType.NVarChar).Value = tv;
                    cmdInsert.Parameters.Add("@masach", System.Data.SqlDbType.NVarChar).Value = bmasach;
                    cmdInsert.ExecuteNonQuery();
                }
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thêm thành công vào giỏ hàng.');", true);

                Response.Redirect("Giohang.aspx");
            }
            catch (Exception ex)
            {
                
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Đã xảy ra lỗi: {ex.Message}');", true);
            }
            finally
            {
                kn.closeconn(); 
            }
        }

    }
}
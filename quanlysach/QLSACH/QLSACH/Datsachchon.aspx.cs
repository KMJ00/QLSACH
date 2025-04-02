using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSACH
{
    public partial class Datsachchon : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
                kn.open();

                string tv = Session["matv"] as string;
                string masach = Request.QueryString["masach"];
                if (!string.IsNullOrEmpty(masach))
                {
                    
                    Dropsach.DataSource = kn.GetTable("SELECT * FROM sach WHERE masach = '" + masach + "'");
                    Dropsach.DataTextField = "tensach";
                    Dropsach.DataValueField = "masach";
                    Dropsach.DataBind();

                    
                    var sachInfo = kn.GetTable("SELECT * FROM sach WHERE masach = '" + masach + "'");
                    if (sachInfo.Rows.Count > 0)
                    {
                        txttt.Text = sachInfo.Rows[0]["gia"].ToString(); 
                    }
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                kn.open(); 

               
                if (
                    string.IsNullOrWhiteSpace(txtthd.Text) ||
                    string.IsNullOrWhiteSpace(Dropsach.SelectedValue) ||
                    string.IsNullOrWhiteSpace(txttt.Text) ||
                    string.IsNullOrWhiteSpace(txtngay.Text))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Vui lòng điền đầy đủ thông tin.');", true);
                    return;
                }

                
                string tv = Session["matv"] as string;

               
                if (string.IsNullOrWhiteSpace(tv))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bạn phải đăng nhập trước.'); window.location='Login.aspx';", true);
                    return;
                }

               
                string queryInsert = "INSERT INTO HoadonKhach (tenhd, masach, matv, tt, ngaylap) VALUES (@tenhd, @masach, @matv, @tt, @ngaylap)";
                using (var cmdInsert = new SqlCommand(queryInsert, kn.conn))
                {
                    cmdInsert.Parameters.Add("@tenhd", System.Data.SqlDbType.NVarChar).Value = txtthd.Text;
                    cmdInsert.Parameters.Add("@masach", System.Data.SqlDbType.NVarChar).Value = Dropsach.SelectedValue;
                    cmdInsert.Parameters.Add("@matv", System.Data.SqlDbType.NVarChar).Value = tv;
                    cmdInsert.Parameters.Add("@tt", System.Data.SqlDbType.NVarChar).Value = txttt.Text;
                    cmdInsert.Parameters.Add("@ngaylap", System.Data.SqlDbType.DateTime).Value = DateTime.ParseExact(txtngay.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture); // Chuyển đổi kiểu ngày

                    cmdInsert.ExecuteNonQuery(); 
                }

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thêm thành công');", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Lỗi: " + ex.Message + "');", true);
            }
            finally
            {
                kn.closeconn(); 
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Datsach.aspx");
        }
    }
}
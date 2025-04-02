using System;
using System.Data.SqlClient;
using System.Globalization;
using System.Web.UI;

namespace QLSACH
{
    public partial class Datsach : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                kn.open();

                string tv = Session["matv"] as string;
                if (string.IsNullOrWhiteSpace(tv))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bạn phải đăng nhập để đặt sách');", true);
                    return;
                }          
                  Dropsach.DataSource = kn.GetTable("SELECT * FROM sach");
                  Dropsach.DataTextField = "tensach";
                  Dropsach.DataValueField = "masach";
                  Dropsach.DataBind();              
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

        protected void Dropsach_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                kn.open();
                string sql = "SELECT gia FROM sach WHERE masach = @masach";
                using (SqlCommand cmd = new SqlCommand(sql, kn.conn))
                {
                    cmd.Parameters.Add("@masach", System.Data.SqlDbType.NVarChar).Value = Dropsach.SelectedValue;

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txttt.Text = reader["gia"].ToString(); 
                        }
                        else
                        {
                            txttt.Text = "Không tìm thấy sách.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                txttt.Text = "Lỗi: " + ex.Message; 
            }
            finally
            {
                kn.closeconn(); 
            }
        }
    }
}
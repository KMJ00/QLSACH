using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace QLSACH
{
    public partial class Loin : System.Web.UI.Page
    {
        public SqlConnection conn;
        private readonly string _connectionString = @"Data Source=MSI\SQLEXPRESS;Initial Catalog=QLSACH;Integrated Security=True";

        public SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM taikhoan WHERE name = @name AND pass = @pass";
            using (SqlConnection conn = new SqlConnection(_connectionString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, conn))
                    {
                        string username = txtName.Text.Trim();
                        string password = txtpass.Text.Trim();
                        cmd.Parameters.AddWithValue("@name", username);
                        cmd.Parameters.AddWithValue("@pass", password);

                        using (SqlDataReader rdr = cmd.ExecuteReader())
                        {
                            if (rdr.Read())
                            {
                                string phanquyen = rdr["phanquyen"].ToString().Trim();

                                // Điều hướng dựa trên giá trị phanquyen
                                if (phanquyen == "user")
                                {
                                    string matv = rdr["matv"].ToString().Trim();
                                    Session["matv"] = matv;
                                    Response.Redirect("Home.aspx");
                                }
                                else if (phanquyen == "addmin")
                                {

                                    string matv = rdr["matv"].ToString().Trim();
                                    Session["matv"] = matv;
                                    Response.Redirect("QTSach.aspx");
                                }
                                else
                                {
                                    // Nếu không có quyền hợp lệ
                                    ClientScript.RegisterStartupScript(this.GetType(), "alert",
                                        "alert('Quyền truy cập không hợp lệ.');", true);
                                }
                            }
                            else
                            {
                                // Thông báo nếu đăng nhập không thành công
                                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                                    "alert('Đăng nhập không thành công');", true);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Ghi lại lỗi ở đây
                    ClientScript.RegisterStartupScript(this.GetType(), "alert",
                        "alert('Lỗi: " + ex.Message + "');", true);
                }
            }
        }
    }
}
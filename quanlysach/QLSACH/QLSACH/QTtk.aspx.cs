using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSACH
{
    public partial class QTtk : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                kn.open();
                loadk();
                loadqt();
            }
        }

        public void loadk()
        {
            kn.open();
            GridView2.DataSource = kn.GetTable("SELECT * FROM taotk");
            GridView2.DataBind();
        }
        public void loadqt()
        {
            kn.open();
            GridView1.DataSource = kn.GetTable("SELECT * FROM taikhoan"); 
            GridView1.DataBind();
        }
        public void clear()
        {
            txtmtk.Text = string.Empty;
            txtt.Text = string.Empty;
            txtName.Text = string.Empty;
            txtpass.Text = string.Empty;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            clear();
            int t = GridView1.SelectedIndex;
            txtmtk.Text = GridView1.Rows[t].Cells[0].Text;
            txtt.Text = HttpUtility.HtmlDecode(GridView1.Rows[t].Cells[1].Text);
            txtName.Text = GridView1.Rows[t].Cells[2].Text;
            txtpass.Text = GridView1.Rows[t].Cells[3].Text;
            
            if (GridView1.Rows[t].Cells[3].Text == "addmin")
            {
                RadioButton1.Checked = true;
            }
            else if(GridView1.Rows[t].Cells[3].Text == "user")
            {
                RadioButton2.Checked = true;
            }
        }
        //add
        protected void Button1_Click1(object sender, EventArgs e)
        {

            try
            {
                kn.open(); // Mở kết nối

                // Kiểm tra tất cả các trường không rỗng
                if (string.IsNullOrWhiteSpace(txtmtk.Text) ||
                    string.IsNullOrWhiteSpace(txtt.Text) ||
                    string.IsNullOrWhiteSpace(txtName.Text) ||
                    string.IsNullOrWhiteSpace(txtpass.Text))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Vui lòng điền đầy đủ thông tin.');", true);
                    return;
                }

                // Thêm hóa đơn vào cơ sở dữ liệu
                string queryInsert = "INSERT INTO taikhoan (matv, tentv, Name, Pass, phanquyen) VALUES (@matv, @tentv, @Name, @Pass, @PhanQ)";
                using (var cmdInsert = new SqlCommand(queryInsert, kn.conn))
                {
                    string pc = string.Empty;
                    if (RadioButton1.Checked == true) {
                        pc = "addmin";
                    }
                    else if (RadioButton2.Checked==true)
                    {
                        pc = "user";
                    }
                    cmdInsert.Parameters.AddWithValue("@matv", txtmtk.Text);
                    cmdInsert.Parameters.AddWithValue("@tentv", txtt.Text);
                    cmdInsert.Parameters.AddWithValue("@Name", txtName.Text);
                    cmdInsert.Parameters.AddWithValue("@Pass",txtpass.Text); // Chuyển đổi kiểu ngày
                    cmdInsert.Parameters.AddWithValue("@PhanQ", pc.Trim());
                    cmdInsert.ExecuteNonQuery(); // Thực thi truy vấn thêm
                }

                // Xóa hóa đơn khách tương ứng
                string queryDelete = "DELETE FROM taotk WHERE ten = @ten";
                using (var cmdDelete = new SqlCommand(queryDelete, kn.conn))
                {
                    cmdDelete.Parameters.AddWithValue("@ten", txtt.Text);
                    cmdDelete.ExecuteNonQuery(); // Thực thi truy vấn xóa
                }

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thêm Thành công');", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Lỗi: " + ex.Message + "');", true);
            }
            finally
            {
                loadk(); // Tải lại dữ liệu hóa đơn khách
                loadqt();
                kn.closeconn(); // Đóng kết nối
                clear(); // Xóa các trường nhập
            }
        }
       




        protected void Sua(object sender, EventArgs e)
        {
            kn.open();
            try
            {
                // Kiểm tra dữ liệu đầu vào
                if (string.IsNullOrWhiteSpace(txtmtk.Text) ||
                    string.IsNullOrWhiteSpace(txtt.Text) ||
                    string.IsNullOrWhiteSpace(txtName.Text) ||
                    string.IsNullOrWhiteSpace(txtpass.Text))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Vui lòng điền đầy đủ thông tin.');", true);
                    return;
                }

                // Xây dựng câu lệnh SQL
                string queryUpdate = "UPDATE taikhoan SET " +
                    "tentv = N'" + txtt.Text + "', " +
                    "Name = '" + txtName.Text + "', " +
                    "Pass = '" + txtpass.Text+ "' " +
                    "WHERE matv = '" + txtmtk.Text + "'";

                // Thực thi câu lệnh SQL
                kn.xuly(queryUpdate);

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Sửa Thành công');", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Lỗi: " + ex.Message + "');", true);
            }
            finally
            {
                loadqt(); // Tải lại dữ liệu hóa đơn
                kn.closeconn(); // Đóng kết nối
                clear(); // Xóa các trường nhập
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            kn.open();
            try
            {
                kn.xuly("delete from taikhoan where matv = '" + txtmtk.Text + "'");
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                        "alert('Xóa Thành công');", true);
                return;
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                         "alert('Lỗi  " + ex.Message + "');", true);
                return;
            }
            finally
            {
                loadqt();
                kn.closeconn();
                clear();
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            clear();
            int t = GridView2.SelectedIndex;
            txtt.Text = HttpUtility.HtmlDecode(GridView2.Rows[t].Cells[0].Text);
            txtName.Text = GridView2.Rows[t].Cells[1].Text;
            txtpass.Text = GridView2.Rows[t].Cells[2].Text;
        }
    }
}
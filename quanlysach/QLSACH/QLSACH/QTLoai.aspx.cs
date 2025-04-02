using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSACH
{
    public partial class QTLoai : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            load();
            kn.closeconn();
        }
        public void load()
        {
            kn.open();
            GridView1.DataSource = kn.GetTable("SELECT * FROM loai");
            GridView1.DataBind();
        }
        public void clear()
        {
            txtma.Text = string.Empty;
            txtten.Text = string.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            kn.open();
            try
            {
                if (string.IsNullOrWhiteSpace(txtma.Text) ||
                   string.IsNullOrWhiteSpace(txtten.Text) 
                 )
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Vui lòng điền đầy đủ thông tin.');", true);
                    return;
                }
                kn.xuly("INSERT INTO loai (maloai,tenloai)VALUES ('" + txtma.Text + "',N'" + txtten.Text + "')");
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                        "alert('Thêm Thành công');", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                         "alert('Lỗi  " + ex.Message + "');", true);
                return;
            }
            finally
            {
                load();
                kn.closeconn();
                clear();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            kn.open();
            try
            {
                kn.xuly("update loai set tenloai=N'" + txtten.Text + "' where maloai = '" + txtma.Text + "'");
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                        "alert('Sửa Thành công');", true);
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
                load();
                kn.closeconn();
                clear();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GridView1.SelectedIndex >= 0)
            {
                int t = GridView1.SelectedIndex;

                // Lấy giá trị từ các ô trong hàng đã chọn
                txtma.Text = GridView1.Rows[t].Cells[0].Text; // Giả sử cột 0 chứa mã tác giả
                txtten.Text = HttpUtility.HtmlDecode(GridView1.Rows[t].Cells[1].Text); // Giải mã tên tác giả
            }
            else
            {
                txtma.Text = string.Empty;
                txtten.Text = string.Empty;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            kn.open();
            try
            {


                kn.xuly("delete from loai where maloai = '" + txtma.Text + "'");
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
                load();
                kn.closeconn();
                clear();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            clear();

        }
    }
}
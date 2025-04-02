using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSACH
{
    public partial class QTNXB : System.Web.UI.Page
    {
        ketnoi kn=new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {

            load();
            kn.closeconn();
        }
        public void clear()
        {
            txtma.Text = string.Empty;
            txtten.Text = string.Empty;
        }
        public void load()
        {
            kn.open();
            GridView1.DataSource = kn.GetTable("SELECT * FROM nxb");
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            kn.open();
            try
            {
                if (string.IsNullOrWhiteSpace(txtma.Text) ||
                   string.IsNullOrWhiteSpace(txtten.Text) )
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Vui lòng điền đầy đủ thông tin.');", true);
                    return;
                }
                kn.xuly("INSERT INTO nxb (manxb,nxb)VALUES ('" + txtma.Text + "',N'" + txtten.Text + "')");
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                       "alert('Thêm Thành công');", true);
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
            load();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            kn.open();
            try
            {
                kn.xuly("update nxb set nxb=N'" + txtten.Text + "' where manxb = '" + txtma.Text + "'");
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            kn.open();
            try
            {


                kn.xuly("delete from nxb where manxb = '" + txtma.Text + "'");
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
    }
}
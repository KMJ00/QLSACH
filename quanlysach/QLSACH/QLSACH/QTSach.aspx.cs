using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
namespace QLSACH
{
    public partial class QTSach : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load();
                kn.closeconn();
            }
        }
        public void load()
        {
            kn.open();
            GridView1.DataSource = kn.GetTable("SELECT * FROM SACH");
            GridView1.DataBind();
            Droploai.DataSource = kn.GetTable("SElEcT * FROM loai");
            Droploai.DataTextField = "tenloai";
            Droploai.DataValueField = "maloai";
            Droploai.DataBind();
            Droptg.DataSource = kn.GetTable("SElEcT * FROM tacgia");
            Droptg.DataTextField = "tentg";
            Droptg.DataValueField = "matacgia";
            Droptg.DataBind();
            Dropnxb.DataSource = kn.GetTable("SElEcT * FROM nxb");
            Dropnxb.DataTextField = "nxb";
            Dropnxb.DataValueField = "manxb";
            Dropnxb.DataBind();
        }
        public void clear()
        {
            txtMa.Text = string.Empty;
            txtTen.Text = string.Empty;
            txtAnh.Text = string.Empty;
            txtGia.Text = string.Empty;
            txtMt.Text = string.Empty;
            txtSl.Text = string.Empty;   
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            clear();
            int t = GridView1.SelectedIndex;
            txtMa.Text = GridView1.Rows[t].Cells[0].Text;
            txtTen.Text = HttpUtility.HtmlDecode(GridView1.Rows[t].Cells[1].Text);
            Droploai.SelectedValue= GridView1.Rows[t].Cells[2].Text;
            Dropnxb.SelectedValue = GridView1.Rows[t].Cells[3].Text;
            txtGia.Text = GridView1.Rows[t].Cells[4].Text;
            txtSl.Text = GridView1.Rows[t].Cells[5].Text;
            txtAnh.Text = GridView1.Rows[t].Cells[6].Text;
            txtMt.Text = HttpUtility.HtmlDecode(GridView1.Rows[t].Cells[7].Text);
            Droptg.SelectedValue = GridView1.Rows[t].Cells[8].Text;
            string tenAnh = txtAnh.Text; 
            Image2.ImageUrl = "~/img/" + tenAnh; // Cập nhật đường dẫn ảnh
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            kn.open();
            try
            {
                if (string.IsNullOrWhiteSpace(txtMa.Text) ||
                    string.IsNullOrWhiteSpace(txtTen.Text) ||
                    string.IsNullOrWhiteSpace(txtGia.Text) ||
                    string.IsNullOrWhiteSpace(txtSl.Text) ||
                    string.IsNullOrWhiteSpace(txtAnh.Text) ||
                    string.IsNullOrWhiteSpace(txtMt.Text))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Vui lòng điền đầy đủ thông tin.');", true);
                    return;
                }
                string query = "INSERT INTO Sach(masach, tensach, maloai, manxb, gia, sl, anh, mota, matacgia) VALUES ('" + txtMa.Text + "', N'" + txtTen.Text + "', '" + Droploai.SelectedValue + "', '" + Dropnxb.SelectedValue + "', '" + txtGia.Text + "', '" + txtSl.Text + "', '" + txtAnh.Text + "', N'" + txtMt.Text + "', '" + Droptg.SelectedValue + "')";
                kn.xuly(query);
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
        protected void btAddImg_Click(object sender, EventArgs e)
        {
            string tenanh;
            tenanh = FileUpload2.FileName;
            FileUpload2.SaveAs(MapPath("~/img/" + tenanh));
            Image2.ImageUrl = "~/img/" + tenanh;
            txtAnh.Text = tenanh;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            kn.open();
            try
            {
                kn.xuly("update sach set tensach= N'" + txtTen.Text + "',maloai='"+Droploai.SelectedValue+"',manxb='"+Dropnxb.SelectedValue+"',gia='"+txtGia.Text+"',sl='"+txtSl.Text+"',anh='"+txtAnh.Text+"',mota=N'"+txtMt.Text+"',matacgia='"+Droptg.SelectedValue+"' where masach = '" + txtMa.Text + "'");
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            kn.open();
            try
            {
                kn.xuly("delete from Sach where masach = '" + txtMa.Text + "'");
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
    }
}
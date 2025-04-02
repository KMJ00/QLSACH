using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSACH
{
    public partial class QTHD : System.Web.UI.Page
    {
        ketnoi kn=new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                kn.open();

                
                Dropsach.DataSource = kn.GetTable("SELECT * FROM sach");
                Dropsach.DataTextField = "tensach";
                Dropsach.DataValueField = "masach";
                Dropsach.DataBind();

                
                Dropkhach.DataSource = kn.GetTable("SELECT * FROM TaiKhoan");
                Dropkhach.DataTextField = "tentv";
                Dropkhach.DataValueField = "matv";
                Dropkhach.DataBind();

                loadk(); 
                Button5.Enabled = false;
                Button2.Enabled = false;
                Button3.Enabled = false;
            }
        }

        public void loadk()
        {
            kn.open();
            GridView1.DataSource = kn.GetTable("SELECT * FROM HoaDonKhach");
            GridView1.DataBind();
        }

        public void loadqt()
        {
            kn.open();
            GridView1.DataSource = kn.GetTable("SELECT * FROM HoaDon"); 
            GridView1.DataBind();
        }
        public void clear()
        {
            txtmhd.Text = string.Empty;
            txthd.Text = string.Empty;
            txttt.Text = string.Empty;
            txtngay.Text = string.Empty;
           
        }
       
    
        
       
        protected void Button5_Click(object sender, EventArgs e)
        {
            Button1.Enabled = true;
            Button6.Enabled = true;
            Button5.Enabled = false;
            Button2.Enabled = false;
            Button3.Enabled = false;
            loadk();
        }
        
        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            clear();
            int t = GridView1.SelectedIndex;
            txtmhd.Text = GridView1.Rows[t].Cells[0].Text;
            txthd.Text = HttpUtility.HtmlDecode(GridView1.Rows[t].Cells[1].Text);
            Dropsach.SelectedValue = GridView1.Rows[t].Cells[2].Text;
            Dropkhach.SelectedValue = GridView1.Rows[t].Cells[3].Text;
            txttt.Text = GridView1.Rows[t].Cells[4].Text;
           txtngay.Text = DateTime.Parse(GridView1.Rows[t].Cells[5].Text).ToString("yyyy-MM-dd");

        }
      
        protected void Button1_Click1(object sender, EventArgs e) 
        {
            
            try
            {
                kn.open(); 

                if (string.IsNullOrWhiteSpace(txtmhd.Text) ||
                    string.IsNullOrWhiteSpace(txthd.Text) ||
                    string.IsNullOrWhiteSpace(Dropsach.SelectedValue) ||
                    string.IsNullOrWhiteSpace(Dropkhach.SelectedValue) ||
                    string.IsNullOrWhiteSpace(txttt.Text) ||
                    string.IsNullOrWhiteSpace(txtngay.Text))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Vui lòng điền đầy đủ thông tin.');", true);
                    return;
                }

                
                string queryInsert = "INSERT INTO Hoadon (mhd, tenhd, masach, matv, tt, ngaylap) VALUES (@mhd, @tenhd, @masach, @matv, @tt, @ngaylap)";
                using (var cmdInsert = new SqlCommand(queryInsert, kn.conn))
                {
                    cmdInsert.Parameters.AddWithValue("@mhd", txtmhd.Text);
                    cmdInsert.Parameters.AddWithValue("@tenhd", txthd.Text);
                    cmdInsert.Parameters.AddWithValue("@masach", Dropsach.SelectedValue);
                    cmdInsert.Parameters.AddWithValue("@matv", Dropkhach.SelectedValue);
                    cmdInsert.Parameters.AddWithValue("@tt", txttt.Text);
                    cmdInsert.Parameters.AddWithValue("@ngaylap", DateTime.Parse(txtngay.Text)); 

                    cmdInsert.ExecuteNonQuery(); 
                }

               
                string queryDelete = "DELETE FROM hoadonkhach WHERE mhd = @mhd";
                using (var cmdDelete = new SqlCommand(queryDelete, kn.conn))
                {
                    cmdDelete.Parameters.AddWithValue("@mhd", txtmhd.Text);
                    cmdDelete.ExecuteNonQuery();
                }

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thêm Thành công');", true);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Lỗi: " + ex.Message + "');", true);
            }
            finally
            {
                loadk(); 
                kn.closeconn(); 
                clear(); 
            }
        }
        protected void Button6_Click1(object sender, EventArgs e)
        {
            Button1.Enabled = false;
            Button6.Enabled = false;
            Button5.Enabled = true;
            Button2.Enabled = true;
            Button3.Enabled = true;
            loadqt();
        }

        
           

        protected void Sua(object sender, EventArgs e)
        {
                kn.open();
                try
                {
                    
                    if (string.IsNullOrWhiteSpace(txtmhd.Text) ||
                        string.IsNullOrWhiteSpace(txthd.Text) ||
                        string.IsNullOrWhiteSpace(Dropsach.SelectedValue) ||
                        string.IsNullOrWhiteSpace(Dropkhach.SelectedValue) ||
                        string.IsNullOrWhiteSpace(txttt.Text) ||
                        string.IsNullOrWhiteSpace(txtngay.Text))
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Vui lòng điền đầy đủ thông tin.');", true);
                        return;
                    }

                    
                    string queryUpdate = "UPDATE Hoadon SET " +
                        "tenhd = N'" + txthd.Text + "', " +
                        "masach = '" + Dropsach.SelectedValue + "', " +
                        "matv = '" + Dropkhach.SelectedValue + "', " +
                        "tt = '" + txttt.Text + "', " +
                        "ngaylap = '" + DateTime.Parse(txtngay.Text).ToString("yyyy-MM-dd") + "' " +
                        "WHERE Mhd = '" + txtmhd.Text + "'";

                    
                    kn.xuly(queryUpdate);

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Sửa Thành công');", true);
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Lỗi: " + ex.Message + "');", true);
                }
                finally
                {
                    loadqt(); 
                    kn.closeconn(); 
                    clear(); 
                }
            }

        protected void Button3_Click(object sender, EventArgs e)
        {
            kn.open();
            try
            {
                kn.xuly("delete from Hoadon where mhd = '" + txtmhd.Text + "'");
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
    }
}
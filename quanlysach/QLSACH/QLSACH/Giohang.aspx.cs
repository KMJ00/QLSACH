
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSACH
{
    public partial class Giohang : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string tv = Session["matv"] as string;
                if (string.IsNullOrWhiteSpace(tv))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bạn phải đăng nhập để đặt sách');", true);
                    return;
                }
                loadGioHang(tv);
            }
        }

        public void loadGioHang(string matv)
        {
            try
            {
                kn.open();
                // Lấy danh sách masach trong giỏ hàng
                DataTable dtGioHang = kn.GetTable("SELECT masach FROM giohang WHERE matv = "+matv);

                if (dtGioHang.Rows.Count > 0)
                {
                    // Tạo một DataTable để chứa thông tin sách
                    DataTable dtSach = new DataTable();
                    dtSach.Columns.Add("masach");
                    dtSach.Columns.Add("tensach");
                    dtSach.Columns.Add("gia");
                    dtSach.Columns.Add("anh");
                    dtSach.Columns.Add("mota");

                    // Lặp qua từng masach trong giỏ hàng để lấy thông tin sách
                    foreach (DataRow row in dtGioHang.Rows)
                    {
                        string masach = row["masach"].ToString();
                        DataTable dtThongTinSach = kn.GetTable("SELECT * FROM Sach WHERE masach ="+ masach);
                        if (dtThongTinSach.Rows.Count > 0)
                        {
                            DataRow sachRow = dtSach.NewRow();
                            sachRow["masach"] = dtThongTinSach.Rows[0]["masach"];
                            sachRow["tensach"] = dtThongTinSach.Rows[0]["tensach"];
                            sachRow["gia"] = dtThongTinSach.Rows[0]["gia"];
                            sachRow["anh"] = dtThongTinSach.Rows[0]["anh"];
                            sachRow["mota"] = dtThongTinSach.Rows[0]["mota"];
                            dtSach.Rows.Add(sachRow);
                        }
                    }

                  
                    DataList2.DataSource = dtSach;
                    DataList2.DataBind();
                }
                else
                {
                   
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Giỏ hàng của bạn trống!');", true);
                }
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
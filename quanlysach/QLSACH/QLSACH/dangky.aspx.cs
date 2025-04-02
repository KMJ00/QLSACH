using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLSACH
{
    public partial class dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ketnoi kn = new ketnoi();
            kn.open();
            try
            {
                kn.xuly("INSERT INTO taotk (ten,Name,pass)VALUES (N'"+txtten.Text+"','" + txtName.Text + "',N'" + txtpass.Text + "')");
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                        "alert('yêu cầu của bạn đang chờ duyệt');", true);
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
               
            }
        }
    }
}
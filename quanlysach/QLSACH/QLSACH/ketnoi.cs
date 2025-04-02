using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace QLSACH
{
    public class ketnoi
    {
        public SqlConnection conn;
        string chkn = @"Data Source=MSI\SQLEXPRESS;Initial Catalog=QLSACH;Integrated Security=True";
        public SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;
        public void open()
        {
            {
                conn = new SqlConnection(chkn);
                conn.Open();
            }
        }
        public void closeconn()
        {
            conn.Close();
        }
        public DataTable GetTable(string sql)
        {
            cmd = new SqlCommand(sql, conn);
            adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }
        public void xuly(string sql)
        {
            cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
        }
    }
}
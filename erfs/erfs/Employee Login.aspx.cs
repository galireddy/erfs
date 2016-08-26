using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace erfs
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select count(*) from emplog where uname='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(s, con);
            con.Open();
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            if (i == 1)
            {
                con.Open();
                string s1 = "select pword from emplog where uname='" + TextBox1.Text + "'";
                SqlCommand cmd1 = new SqlCommand(s1, con);
                string p = cmd1.ExecuteScalar().ToString();
                con.Close();
                if (p == TextBox2.Text)
                {
                    Response.Write("valid");
                }

                else
                {
                    Response.Write("invalid");
                }

            }
            else
            {
                Response.Write("enter correct username");
            }

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace erfs
{
    public partial class Daily_Sales : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                ListItem li = new ListItem("Select Pump", "-1");
                DropDownList1.Items.Insert(0, li);
                ListItem li1 = new ListItem("Select Pump", "-1");
                DropDownList2.Items.Insert(0, li1);

                
                

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "insert into dailysalesms values(@p1,@p2,@p3,@p4,@p5)";
            SqlCommand cmd = new SqlCommand(s,con);
            cmd.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@p2", TextBox7.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p4", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p5", TextBox3.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            double currentsales = Convert.ToDouble(TextBox1.Text);
            double previoussales = Convert.ToDouble(TextBox2.Text);
            double totalsales = previoussales - currentsales;
            string sales = totalsales.ToString();
            TextBox3.Text = sales;
        }
    }
}
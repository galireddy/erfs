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
    public partial class Pay_Slip : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
        private object messageBox;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            ListItem li1 = new ListItem("Select Employee", "-1");
            DropDownList2.Items.Insert(0, li1);
            ListItem li = new ListItem("Select Type", "-1");
            DropDownList1.Items.Insert(0, li);

            string s = "select name from payslipdetails order by name";
            SqlCommand cmd = new SqlCommand(s, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                DropDownList2.Items.Add(dr[0].ToString());
            }
            con.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select empid,basicpay,name,fname from payslipdetails where name='" + DropDownList2.SelectedItem + "'";
            SqlCommand cmd = new SqlCommand(s, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            TextBox1.Text = dr["empid"].ToString();
            TextBox2.Text = dr["basicpay"].ToString();
            TextBox5.Text = dr["name"].ToString();
            TextBox6.Text = dr["fname"].ToString();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
                DateTime from = Convert.ToDateTime(TextBox8.Text);
                DateTime to = Convert.ToDateTime(TextBox9.Text);
                if (from < to)
                {
                    TimeSpan ts = to - from;
                    int days = ts.Days;
                    TextBox4.Text = days.ToString();

                }
                
                else
                {
                TextBox4.Text = string.Empty;
                Response.Write("Enter Correct date");
                }
            

            //TextBox4.Text = "" + ((from > to) ? (from -to).TotalDays : (to - from).TotalDays);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(TextBox2.Text);
            int b = Convert.ToInt32(TextBox4.Text);
            int result = a * b;
            TextBox11.Text = result.ToString();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(TextBox3.Text);
            int b = Convert.ToInt32(TextBox10.Text);
            int c = Convert.ToInt32(TextBox11.Text);
            int result = a - b + c;
            TextBox12.Text = result.ToString();
        }
   
        protected void Button4_Click(object sender, EventArgs e)
        {
            string s = "insert into payslip values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11,@p12,@p13)";
            int empid = Convert.ToInt32(TextBox1.Text);
            string name = TextBox5.Text;
            string fname = TextBox6.Text;
            string paymenttype = DropDownList1.SelectedValue;
            string voucherID = TextBox7.Text;
            int basicpay= Convert.ToInt32(TextBox2.Text); ;
            DateTime fromdate = Convert.ToDateTime(TextBox8.Text);
            DateTime todate = Convert.ToDateTime(TextBox9.Text);
            int allowances = Convert.ToInt32(TextBox3.Text);
            int noofdaysworked = Convert.ToInt32(TextBox4.Text);
            int cashinadvance = Convert.ToInt32(TextBox10.Text);
            int grosspay = Convert.ToInt32(TextBox11.Text);
            int netpay = Convert.ToInt32(TextBox12.Text);
            SqlCommand cmd = new SqlCommand(s, con);
            
            cmd.Parameters.AddWithValue("@p1", empid);
            cmd.Parameters.AddWithValue("@p2", name);
            cmd.Parameters.AddWithValue("@p3", fname);
            cmd.Parameters.AddWithValue("@p4", paymenttype);
            cmd.Parameters.AddWithValue("@p5", voucherID);
            cmd.Parameters.AddWithValue("@p6", basicpay);
            cmd.Parameters.AddWithValue("@p7", fromdate);
            cmd.Parameters.AddWithValue("@p8", todate);
            cmd.Parameters.AddWithValue("@p9", allowances);
            cmd.Parameters.AddWithValue("@p10", noofdaysworked);
            cmd.Parameters.AddWithValue("@p11", cashinadvance);
            cmd.Parameters.AddWithValue("@p12", grosspay);
            cmd.Parameters.AddWithValue("@p13", netpay);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Data Saved succesfully");
        }
    }
}
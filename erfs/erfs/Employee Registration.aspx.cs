using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace erfs
{
    public partial class example : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ListItem li = new ListItem("Select Gender", "-1");
                ddlGender.Items.Insert(0, li);
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label7.Text = txtFname.Text;
            Label9.Text = txtLname.Text;
            Label11.Text = ddlGender.Text;
            Label13.Text = txtEmail.Text;
            Label15.Text = txtPhoneNo.Text;
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
            MultiView1.ActiveViewIndex = 1;

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }
    }
}
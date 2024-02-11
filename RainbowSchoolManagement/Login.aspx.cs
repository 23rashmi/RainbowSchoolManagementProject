using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


namespace RainbowSchoolManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblMsg.Visible = false;

            Page.UnobtrusiveValidationMode=UnobtrusiveValidationMode.None;

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            LblMsg.Visible=true;
            if((TxtName.Text=="rashmi") && (TxtPwd.Text == "rashmi@123"))
            {
                FormsAuthentication.RedirectFromLoginPage(TxtName.Text, true);
            }
            else
            {
                LblMsg.Text = "Invalid credentials";
            }

            LblMsg.Text = "Welcome : ";
            LblMsg.Text += "<br/> User Name: " + TxtName.Text;
            LblMsg.Text += "<br/> Password: " + TxtPwd.Text;
        }
    }
}
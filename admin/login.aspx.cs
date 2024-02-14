using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop.admin
{
    public partial class login : System.Web.UI.Page
    {
        admin.ADMIN_SELECTDataTable adt = new admin.ADMIN_SELECTDataTable();
        App_Data.adminTableAdapters.ADMIN_SELECTTableAdapter aadpter = new App_Data.adminTableAdapters.ADMIN_SELECTTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var Vicky = aadpter.selectlogin(txtuname.Text, txtpass.Text);
            if (Vicky.Rows.Count >= 1)
            {
                Response.Redirect("addcategory.aspx");
            }
            else
            {
                lblmsg.Text = "Invalid Username And Password";
            }

            
            //adt = aadpter.selectlogin(txtuname.Text, txtpass.Text);
            //if (adt.Rows.Count >= 1)
            //{
            //    Response.Redirect("addcategory.aspx");
            //}
            //else
            //{
            //    lblmsg.Text = "Invalid Username And Password";
            //}
        }

        protected void txtuname_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
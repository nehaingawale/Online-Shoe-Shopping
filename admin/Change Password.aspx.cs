using System;
using onlineshop.App_Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop.admin
{
    public partial class Change_Password : System.Web.UI.Page
    {
        admin.ADMIN_SELECTDataTable adt = new admin.ADMIN_SELECTDataTable();
        App_Data.adminTableAdapters.ADMIN_SELECTTableAdapter aadpter = new App_Data.adminTableAdapters.ADMIN_SELECTTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            aadpter.ADMIN_CHANGE_PASSWORD("admin", txtpass.Text);

            Label1.Text = "Password Changed";
        }
    }
}
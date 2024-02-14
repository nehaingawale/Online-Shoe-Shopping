using onlineshop.App_Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop.admin
{
    public partial class VIEWPAYMENT : System.Web.UI.Page
    {
        DS_ORDER.ORDER_SELECTDataTable ODT = new DS_ORDER.ORDER_SELECTDataTable();
        App_Data.DS_ORDERTableAdapters.ORDER_SELECTTableAdapter OAdapter = new App_Data.DS_ORDERTableAdapters.ORDER_SELECTTableAdapter();

        DS_PAyment.PAYMENTMST_SELECTDataTable PDT = new DS_PAyment.PAYMENTMST_SELECTDataTable();
        App_Data.DS_PAymentTableAdapters.PAYMENTMST_SELECTTableAdapter PAdapter = new App_Data.DS_PAymentTableAdapters.PAYMENTMST_SELECTTableAdapter();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                PDT = PAdapter.SELECT_DIST();
                drpuser.DataSource = PDT;
                drpuser.DataTextField = "UNAME";
                drpuser.DataValueField = "UNAME";
                drpuser.DataBind();


            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            PDT = PAdapter.Select_BY_UNAME(drpuser.SelectedItem.Text);
            GridView1.DataSource = PDT;
            GridView1.DataBind();
        }
    }
}
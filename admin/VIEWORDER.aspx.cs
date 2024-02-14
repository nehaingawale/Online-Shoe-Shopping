using onlineshop.App_Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop.admin
{
    public partial class VIEWORDER : System.Web.UI.Page
    {
        DS_ORDER.ORDER_SELECTDataTable ODT = new DS_ORDER.ORDER_SELECTDataTable();
        App_Data.DS_ORDERTableAdapters.ORDER_SELECTTableAdapter OAdapter = new App_Data.DS_ORDERTableAdapters.ORDER_SELECTTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                ODT = OAdapter.SELECT_DISTINCT();
                DropDownList1.DataSource = ODT;
                DropDownList1.DataTextField = "uname";
                DropDownList1.DataValueField = "oid";
                DropDownList1.DataBind();
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            ODT = OAdapter.Sleect_BY_UNAME_Status(DropDownList1.SelectedItem.Text, drpstatus.SelectedIndex);
            GridView1.DataSource = ODT;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridView1.PageIndex = e.NewSelectedIndex;
            ODT = OAdapter.Sleect_BY_UNAME_Status(DropDownList1.SelectedItem.Text, drpstatus.SelectedIndex);
            GridView1.DataSource = ODT;
            GridView1.DataBind();
        }
    }
}
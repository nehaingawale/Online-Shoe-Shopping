using onlineshop.App_Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineshop.admin
{
    public partial class Addcategory : System.Web.UI.Page
    {
        DS_CAT.CATEMST_SELECTDataTable CDT = new DS_CAT.CATEMST_SELECTDataTable();
        App_Data.DS_CATTableAdapters.CATEMST_SELECTTableAdapter CAdapter = new App_Data.DS_CATTableAdapters.CATEMST_SELECTTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                CDT = CAdapter.select();
                GridView1.DataSource = CDT;
                GridView1.DataBind();
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            int inst = CAdapter.Insert(txtname.Text);
            CDT = CAdapter.select();
            GridView1.DataSource = CDT;
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            CDT = CAdapter.select();
            GridView1.DataSource = CDT;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int CID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            int del = CAdapter.Delete(CID);


            bindgrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int CID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            TextBox tcat = GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox;

            int CDT = CAdapter.Update(CID, tcat.Text);
            GridView1.EditIndex = -1;
            bindgrid();
        }

        private void bindgrid()
        {
            CDT = CAdapter.select();
            GridView1.DataSource = CDT;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            CDT = CAdapter.select();
            GridView1.DataSource = CDT;
            GridView1.DataBind();
            bindgrid();
        }
    }
}
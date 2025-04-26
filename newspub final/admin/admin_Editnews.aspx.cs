using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin_Editnews_aspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Session["flag"] == null)
        {
            Response.Redirect("../dl1.aspx");
        }
    }

    protected void btnQuery_Click(object sender, EventArgs e)
    {
        string sql = "select * from lbnr";
        if (txtValue.Text.Trim().Length != 0)
        {
            //sql = sql + " where " + DropDownList1.SelectedValue + " like '% " + txtValue.Text.Trim() + "% '";
            //sql = sql + " where " + DropDownList1.SelectedValue + "='" + txtValue.Text.Trim() + "'";
            sql = sql + " where " + DropDownList1.SelectedValue + " like '%" + txtValue.Text.Trim() + "%'";
            SqlDataSource1.SelectCommand = sql;
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            Response.Write(sql);
        }
    }
}
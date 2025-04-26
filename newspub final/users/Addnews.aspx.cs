using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class users_Addnews1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Session["flag"] == null)
        {
            Response.Redirect("../dl1.aspx");
        }
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn = new SqlConnection("server=.;database=lb;integrated security=true");
            cn.Open();

            SqlCommand cmd = new SqlCommand("select * from lbnr", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataRow dr = ds.Tables[0].NewRow();

            dr["categoryid"] = DropDownList1.SelectedValue;
            dr["title"] = txtTitle.Text;
            dr["contents"] = txtContents.Text;
            dr["submitdate"] = System.DateTime.Now.ToString();
            dr["publisher"] = this.Session["username"].ToString();
            ds.Tables[0].Rows.Add(dr);

            SqlCommandBuilder builder = new SqlCommandBuilder(da);
            da.Update(ds);
            lblInfo.Text = "新闻添加成功！";
            cn.Close();
        }
        catch
        {
            lblInfo.Text = "新闻添加时出现错误，请重新添加！";
        }
    }

    protected void btnCan_Click(object sender, EventArgs e)
    {
        txtTitle.Text = "";
        txtContents.Text = "";
        DropDownList1.SelectedValue = 1.ToString();
        txtTitle.Focus();
        lblInfo.Text = "";
    }
}
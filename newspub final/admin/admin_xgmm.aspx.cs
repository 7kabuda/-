using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_admin_xgmm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Session["flag"] == null)
        {
            Response.Redirect("../dl1.aspx");
        }
        txtOriginalPassword.Text = this.Session["password"].ToString();
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("server=.;database=lb;integrated security=true");
        cn.Open();

        SqlCommand cmd = new SqlCommand("select * from yhb where username='" + Session["username"].ToString() + "'", cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        ds.Tables[0].Rows[0]["password"] = txtNewPassword.Text.Trim();
        SqlCommandBuilder builder = new SqlCommandBuilder(da);
        da.Update(ds);
        lblInfo.Text = "密码修改成功！";
        cn.Close();
    }

    protected void btnCan_Click(object sender, EventArgs e)
    {
        txtNewPassword.Text = "";
        txtConNewPassword.Text = "";
        txtNewPassword.Focus();

        lblInfo.Text = "";
    }


}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class dl1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Session["flag"] == "s")
        {
            Response.Redirect("admin/admin.aspx");
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //SqlConnection cn = new SqlConnection("server=.;database=lb;integrated security=true");
        //cn.Open();

        //SqlCommand cmd = new SqlCommand("select * from yhb where username='" + txtUser.Text + "' and password='" + txtPassword.Text + "'", cn);
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //DataSet ds = new DataSet();
        //da.Fill(ds);

        //if (ds.Tables[0].Rows.Count > 0)
        //{
        //    this.Session["username"] = ds.Tables[0].Rows[0]["username"].ToString();
        //    this.Session["password"] = ds.Tables[0].Rows[0]["password"].ToString();
        //    this.Session["id"] = ds.Tables[0].Rows[0]["id"].ToString();

        //    Response.Redirect("aaa.aspx");

        //}
        //else
        //{
        //    this.Label1.Text = "用户名或密码错误！";
        //}
        //cn.Close();

        DB.GetCn();
        string str = "select * from yhb where username='" + txtUser.Text + "' and password='" + txtPassword.Text + "'";
        DataTable dt = DB.GetDataSet(str);
        if(dt.Rows.Count > 0)
        {
            this.Session["username"] = dt.Rows[0]["username"].ToString();
            //this.Session["username"] = txtUser.Text;
            this.Session["password"] = dt.Rows[0]["password"].ToString();
            //this.Session["password"] = txtPassword.Text;
            this.Session["id"] = dt.Rows[0]["id"].ToString();
            this.Session["keys"] = dt.Rows[0]["keys"].ToString();
            this.Session["flag"] = "s";

            if (this.Session["keys"].ToString() == "2")
            {
                //跳转到用户页面
                Response.Redirect("users/users.aspx");
            }
            else
            {
                //跳转到管理员页面
                Response.Redirect("admin/admin.aspx");
            }
        }
        else
        {
            this.Label1.Text = "用户名或密码错误！";
        }
    }

    protected void btnReg_Click(object sender, EventArgs e)
    {
        Response.Redirect("zc1.aspx");
    }
}
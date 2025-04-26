using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class zc1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRe_Click(object sender, EventArgs e)
    {
        if(txtUser.Text.Trim()!="" && txtPassword.Text.Trim() != "")
        {
            SqlConnection cn = new SqlConnection("server=.;database=lb;integrated security=true");
            cn.Open();

            SqlCommand cmd = new SqlCommand("select * from yhb where username='" + txtUser.Text + "'", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                this.lblInfo.Text = "已存在用户名！";

            }
            else
            {
                if (txtPassword.Text == txtPassword1.Text)
                {
                    DataRow dr = ds.Tables[0].NewRow();
                    dr["username"] = txtUser.Text;
                    dr["password"] = txtPassword.Text;
                    ds.Tables[0].Rows.Add(dr);
                    SqlCommandBuilder builder = new SqlCommandBuilder(da);
                    da.Update(ds);
                    lblInfo.Text = "注册成功！";
                }
                //else
                //{
                //    lblInfo.Text = "两次输入密码不一致";
                //}
            }
            cn.Close();

            //DB.GetCn();
            //string str = "select * from yhb where username='" + txtUser.Text + "'";
            //DataTable dt = DB.GetDataSet(str);
            //if (dt.Rows.Count > 0)
            //{
            //    this.lblInfo.Text = "已存在用户名！";

            //}
            //else
            //{
            //    if (txtPassword.Text == txtPassword1.Text)
            //    {
            //    DataRow dr = dt.NewRow();
            //    dr["username"] = txtUser.Text;
            //    dr["password"] = txtPassword.Text;
            //    dr["keys"] = 2;
            //    dt.Rows.Add(dr);
            //    SqlCommandBuilder builder = new SqlCommandBuilder(DB.da);
            //    DB.da.Update(dt);
            //    //if (DB.sqlEx(str))
            //    //{
            //    //    lblInfo.Text = "注册成功！";
            //    //}
            //    lblInfo.Text = "注册成功！";
            //    }
            //    else
            //    {
            //        lblInfo.Text = "两次输入密码不一致";
            //    }


        
        }
        else
        {
            lblInfo.Text = "用户名和密码不能为空！";
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("dl1.aspx");
    }

    protected void btnCan_Click(object sender, EventArgs e)
    {
        txtUser.Text = "";
        txtPassword.Text = "";
        txtPassword1.Text = "";

        DropDownList1.SelectedIndex = -1;
        txtUser.Focus();

        lblInfo.Text = "";
    }
}
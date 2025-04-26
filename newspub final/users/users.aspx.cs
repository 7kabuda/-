using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class users_users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.txtUser.Text = "登陆成功！当前用户为：" + Session["username"].ToString();
    }
}
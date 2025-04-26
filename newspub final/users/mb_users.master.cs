using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class users_mb_users : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.txtYonghu.Text = Session["username"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.Session["flag"] == null)
        {
            Response.Redirect("../dl1.aspx");
        }
        if (this.Session["flag"].ToString() == "s")
        {
            Session["flag"] = null;
            Response.Redirect("../dl1.aspx");

        }
    }
}

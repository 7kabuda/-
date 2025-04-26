using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// DB 的摘要说明
/// </summary>
public class DB
{
    private static SqlConnection cn;
    public static SqlDataAdapter da;

    public static SqlConnection GetCn()
    {
        string myStr = ConfigurationManager.ConnectionStrings["xw1"].ConnectionString;
        if (cn == null || cn.State == ConnectionState.Closed)
        {
            cn = new SqlConnection(myStr);
            cn.Open();
        }
        return cn;
    }

    public static DataTable GetDataSet(string sql)
    {
        SqlCommand cmd = new SqlCommand(sql, cn);
        da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];
    }

    public static Boolean sqlEx(string sql)
    {
        SqlCommand cmd = new SqlCommand(sql, cn);
        try
        {
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        catch
        {
            cn.Close();
            return false;
        }
        return true;
    }
}
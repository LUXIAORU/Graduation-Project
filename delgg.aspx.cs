﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class delgg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["delid"].ToString().Trim() != "")
        {
            string sql;


            sql = "delete from " + Request["tablename"].ToString().Trim() + " where id=" + int.Parse(Request["delid"].ToString().Trim()) + "";
            new Class1().hsgexucute(sql);
            Response.Redirect(Request.QueryString["npage"].ToString().Trim()+"?lb="+Request.QueryString["lb"].ToString().Trim());
        }
    }
}

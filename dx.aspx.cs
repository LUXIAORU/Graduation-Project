using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class dx : System.Web.UI.Page
{
    public string lb, lbtxt, sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbtxt = Request.QueryString["lb"].ToString().Trim();
       
        if (!IsPostBack)
        {
            sql = "select content from dx where leibie='" + lbtxt + "'";
            DataSet result = new DataSet();
            result = new Class1().hsggetdata(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    content.Value = result.Tables[0].Rows[0][0].ToString();
                }
                else
                {
                    sql = "insert into dx(leibie,content) values('" + lbtxt + "','" + lbtxt + "')";
                    int result2;
                    result2 = new Class1().hsgexucute(sql);
                    content.Value = lbtxt;
                }
                

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sql = "update dx set content='" + Request.Form["content"] + "' where leibie='" + lbtxt + "'";

        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('编辑成功');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误');</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}

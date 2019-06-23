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

public partial class jrsc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["username"] == null)
         {
           Response.Write("<script>javascript:alert('对不起，请您先登陆！');history.back();</script>");
           Response.End();
         }
        string id = Request.QueryString["id"].ToString().Trim();
        string biao = Request.QueryString["biao"].ToString().Trim();
        string ziduan = Request.QueryString["ziduan"].ToString().Trim();
        string biaoti = "";
        string sql;
        sql = "select "+ziduan+" from "+biao+" where id="+id;
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {

            if (result.Tables[0].Rows.Count > 0)
            {
                biaoti = result.Tables[0].Rows[0][0].ToString().Trim();
            }
        }
        sql = "insert into shoucangjilu(username,xwid,ziduan,biao,biaoti) values('"+Session["username"].ToString().Trim()+"','"+id+"','"+ziduan+"','"+biao+"','"+biaoti+"')";
        int result2;
        result2 = new Class1().hsgexucute(sql);
        if (result2 == 1)
        {
            Response.Write("<script>javascript:alert('操作成功！');history.back();</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
        }
    }
}

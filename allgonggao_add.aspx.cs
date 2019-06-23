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

public partial class allgonggao_add : System.Web.UI.Page
{
    public string lb, lbtxt, sql; //定义全局变量
    protected void Page_Load(object sender, EventArgs e)
    {
        lbtxt = Request.QueryString["lb"].ToString().Trim();  //类别为提交来的参数,即分为新闻中心和网站规章
        
        leibie.Text = lbtxt;
         Random rnd = new Random();
         int n = rnd.Next(1, 100);
         dianjilv.Text = n.ToString().Trim();
        dianjilv.ReadOnly = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "insert into allgonggao(title,content,leibie,shouyetupian,dianjilv,tianjiaren) values('" + title.Text.ToString().Trim() + "','" + Request.Form["content"] + "','" + leibie.Text.ToString().Trim() + "','" + shouyetupian.Text.ToString().Trim() + "','" + dianjilv.Text.ToString().Trim() + "','"+Session["username"].ToString().Trim()+"') ";
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('添加成功');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
        }
    }
}


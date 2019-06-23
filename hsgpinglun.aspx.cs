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
using System.Text.RegularExpressions;
using System.Reflection;

public partial class hsgpinglun : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null && Session["userip"] != null)
        {
            string sqllb = "select * from shangpinxinxi where id=" + Request.QueryString["id"].ToString().Trim();
            DataSet resultlb = new DataSet();
            resultlb = new Class1().hsggetdata(sqllb);
            if (resultlb.Tables[0].Rows[0]["faburen"].ToString().Trim() == Session["username"].ToString().Trim())
            {

                Response.Write("<script>javascript:alert('对不起，不能评论自己的商品！');window.opener.location.reload();window.close();</script>");
                Response.End();

            }
            string shangpinbianhao = resultlb.Tables[0].Rows[0]["shangpinbianma"].ToString().Trim();
            string sqlgm = "select * from goumaijilu where shangpinbianma=" + shangpinbianhao + " and yonghuming=" + Session["username"];
            DataSet result = new DataSet();
            result = new Class1().hsggetdata(sqlgm);
            if (result.Tables[0].Rows.Count<1)
            {
                Response.Write("<script>javascript:alert('您没买此物品，没有权限评论！');window.close();</script>");
                Response.End();
            }
            string id = resultlb.Tables[0].Rows[0]["ID"].ToString().Trim();
            string sql = "select * from pinglun where xinwenID='" + id + "' and pinglunren='" + Session["username"]+"'";
            DataSet result1 = new DataSet();
            result1 = new Class1().hsggetdata(sql);
            if (result1.Tables[0].Rows.Count >1)
            {
                Response.Write("<script>javascript:alert('您已评论过此商品！');window.close();</script>");
                Response.End();
            }
        }
        else
        {
            Response.Write("<script>javascript:alert('对不起，请您先登陆!');window.close();</script>");
            Response.End();

        }
        if (!IsPostBack)
        {
            pingjia.Items.Add("好评");
            pingjia.Items.Add("中评");
            pingjia.Items.Add("差评");
            xiangpianID.Text = Request.QueryString["id"].ToString().Trim();
            pinglunren.Text = Session["username"].ToString().Trim();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "insert into pinglun(xinwenID,pingjia,pinglunren,fuwu,miaoshu,biao) values('" + xiangpianID.Text.ToString().Trim() + "','" + pingjia.Text.ToString().Trim() + "','" + pinglunren.Text.ToString().Trim() + "','" + fuwu.Text.ToString().Trim() + "','" + miaoshu.Text.ToString().Trim() + "','" + Request.QueryString["biao"].ToString().Trim()+"') ";
        int result;
        result = new Class1().hsgexucute(sql);

        if (result == 1)
        {
            Response.Write("<script>javascript:alert('操作成功！');window.opener.location.reload();window.close();</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
        }
    }
    private bool FilterIllegalChar(string sWord)
    {
        bool result = false;
        string keyWord = @"select|insert|delete|from|count\(|drop table|update|truncate|asc\(|mid\(|char\(|xp_cmdshell|exec master|netlocalgroup administrators|:|net user|""|or|and";
        string StrRegex = @"[-|;|,|/|\(|\)|\[|\]|}|{|%|\@|*|!|']";
        if (Regex.IsMatch(sWord, keyWord, RegexOptions.IgnoreCase) || Regex.IsMatch(sWord, StrRegex))
            return true;

        return result;
    }
}

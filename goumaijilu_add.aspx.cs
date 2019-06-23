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

public partial class goumaijilu_add : System.Web.UI.Page
{
    public string nshangpinbianma, nshangpinmingcheng, nleibie, nxinjiuchengdu, njiage, nfaburen;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>javascript:alert('对不起，请您先登陆！');history.back();</script>");
            Response.End();
        }
        if (!IsPostBack)
        {
            Random rnd = new Random();
            int n = rnd.Next(100, 999);
            string newname = DateTime.Now.Month.ToString().Trim() + DateTime.Now.Day.ToString().Trim() + DateTime.Now.Hour.ToString().Trim() + DateTime.Now.Minute.ToString().Trim() + DateTime.Now.Second.ToString().Trim() + n.ToString().Trim();
            goumaidanhao.Text = newname;
            yonghuming.Text = Session["username"].ToString().Trim(); yonghuming.ReadOnly = true;
            string sqlxigming = "select * from yonghuzhuce where yonghuming = '" + Session["username"]+"'";
            DataSet resultxingming = new DataSet();
            resultxingming = new Class1().hsggetdata(sqlxigming);
            //xingming.Text = resultxingming.Tables[0].Rows[0]["xingming"].ToString().Trim();
            //shouji.Text = resultxingming.Tables[0].Rows[0]["dianhua"].ToString().Trim();
            //youxiang.Text = resultxingming.Tables[0].Rows[0]["youxiang"].ToString().Trim();
            //dizhi.Text = resultxingming.Tables[0].Rows[0]["dizhi"].ToString().Trim();
            if (resultxingming != null)
            {
                if (resultxingming.Tables[0].Rows.Count > 0)
                {
                    xingming.Text = resultxingming.Tables[0].Rows[0]["xingming"].ToString().Trim();
                    shouji.Text = resultxingming.Tables[0].Rows[0]["dianhua"].ToString().Trim();
                    youxiang.Text = resultxingming.Tables[0].Rows[0]["youxiang"].ToString().Trim();
                    dizhi.Text = resultxingming.Tables[0].Rows[0]["dizhi"].ToString().Trim();
                }
            }

            string sqllb = "select * from shangpinxinxi where id=" + Request.QueryString["id"].ToString().Trim();
            DataSet resultlb = new DataSet();
            resultlb = new Class1().hsggetdata(sqllb);
            string sqlgwc = "select * from gouwuche where yonghuming=" + Session["username"];
            DataSet resultlbgwc = new DataSet();
            resultlbgwc = new Class1().hsggetdata(sqlgwc);
            string gwcID = resultlbgwc.Tables[0].Rows[0]["ID"].ToString().Trim();
            
            int gwcGMS = int.Parse(resultlbgwc.Tables[0].Rows[0]["goumaishu"].ToString().Trim());
            if (resultlbgwc != null)
            {

                if (resultlbgwc.Tables[0].Rows.Count > 0)
                {
                    goumaidanhao.ReadOnly = true;
                    nshangpinbianma = resultlbgwc.Tables[0].Rows[0]["shangpinbianhao"].ToString().Trim();
                    nshangpinmingcheng = resultlbgwc.Tables[0].Rows[0]["shangpinmingcheng"].ToString().Trim();
                    goumaishu.Text = resultlbgwc.Tables[0].Rows[0]["goumaishu"].ToString().Trim();
                    goumaishu.ReadOnly = true;
                    njiage = resultlbgwc.Tables[0].Rows[0]["jiage"].ToString().Trim();
                    float Jine = float.Parse(resultlbgwc.Tables[0].Rows[0]["jiage"].ToString()) * float.Parse(resultlbgwc.Tables[0].Rows[0]["goumaishu"].ToString().Trim());
                    jine.Text = Jine.ToString();
                }
            }
            if (nfaburen == Session["username"].ToString().Trim())
            {

                Response.Write("<script>javascript:alert('对不起，不能购买自己的商品！');location.href='Default.aspx';</script>");
                Response.End();

            }
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string sqllbb = "select * from shangpinxinxi where shangpinbianma='" + nshangpinbianma+"'";
        //DataSet resultlbb = new DataSet();
        //resultlbb = new Class1().hsggetdata(sqllbb);
        //string spMC = resultlbb.Tables[0].Rows[0]["shangpinbianma"].ToString().Trim();
        string sqllb = "select * from [gouwuche] where shangpinbianhao=" + nshangpinbianma;
        DataSet resultlb = new DataSet();
        resultlb = new Class1().hsggetdata(sqllb);
        string sql;
        double jinej = float.Parse(resultlb.Tables[0].Rows[0]["jiage"].ToString().Trim()) * float.Parse(goumaishu.Text.ToString().Trim());
        if (float.Parse(goumaishu.Text.ToString().Trim()) > float.Parse(resultlb.Tables[0].Rows[0]["shuliang"].ToString().Trim())) { Response.Write("<script>javascript:alert('对不起，该商品库存不足!');history.back();</script>"); Response.End(); }

        sql = "insert into goumaijilu(goumaidanhao,shangpinbianma,shangpinmingcheng,leibie,xinjiuchengdu,jiage,faburen,goumaishu,jine,yonghuming,xingming,shouji,youxiang,dizhi,beizhu)" +
            " values('" + goumaidanhao.Text.ToString().Trim() + "'," +
            "'" + resultlb.Tables[0].Rows[0]["shangpinbianma"].ToString().Trim() + "'," +
            "'" + resultlb.Tables[0].Rows[0]["shangpinmingcheng"].ToString().Trim() + "'," +
            "'" + resultlb.Tables[0].Rows[0]["leibie"].ToString().Trim() + "'," +
            "'" + resultlb.Tables[0].Rows[0]["xinjiuchengdu"].ToString().Trim() + "'," +
            "'" + resultlb.Tables[0].Rows[0]["jiage"].ToString().Trim() + "'," +
            "'" + resultlb.Tables[0].Rows[0]["faburen"].ToString().Trim() + "'," +
            "'" + goumaishu.Text + "','" + jine.Text + "'," +
            "'" + yonghuming.Text.ToString().Trim() + "'," +
            "'" + xingming.Text.ToString().Trim() + "'," +
            "'" + shouji.Text.ToString().Trim() + "'," +
            "'" + youxiang.Text.ToString().Trim() + "'," +
            "'" + dizhi.Text.ToString().Trim() + "'," +
            "'" + beizhu.Text.ToString().Trim() + "') ";
        int result;
        result = new Class1().hsgexucute(sql);

        sql = "update shangpinxinxi set shuliang=shuliang-" + goumaishu.Text.ToString().Trim() + " where shangpinbianma='" + resultlb.Tables[0].Rows[0]["shangpinbianma"].ToString().Trim() + "'";
        result = new Class1().hsgexucute(sql);



        if (result == 1)
        {
            Response.Write("<script>javascript:alert('订单添加成功，请前往付款！');window.location.href='Default.aspx'</script>");
            //Response.Redirect("main.aspx");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
        }
    }

}

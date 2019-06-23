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

public partial class sh : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["id"].ToString().Trim() != "")
        {
            string sql;
            // int result;
            //result=new TestOnline.Class1().hsgrz(Request["tablename"].ToString().Trim(),int.Parse(Request["delid"].ToString().Trim()),"删除",Session["adminId"].ToString().Trim());
            //审核申请卖家
            if (Request["seller"].ToString().Trim() == "seller") {
                if (Request["yuan2"].ToString().Trim() == "是")
                {
                    sql = "update " + Request["tablename"].ToString().Trim() + " set issh2='否' where id=" + Request["id"].ToString().Trim();
                }
                else
                {
                    sql = "update " + Request["tablename"].ToString().Trim() + " set issh2='是' where id=" + Request["id"].ToString().Trim() + "and issh='是'";
                }
            }
            //审核发布的商品
            else if (Request["seller"].ToString().Trim() == "shangpin")
            {
                if (Request["yuan"].ToString().Trim() == "是")
                {
                    sql = "update " + Request["tablename"].ToString().Trim() + " set issh='否' where id=" + Request["id"].ToString().Trim();
                }
                else
                {
                    sql = "update " + Request["tablename"].ToString().Trim() + " set issh='是' where id=" + Request["id"].ToString().Trim();
                }


            }
            //申请注册用户
            else/* if(Request["seller"].ToString().Trim() == "zhuce")*/
            {
                if (Request["yuan"].ToString().Trim() == "是")
                {
                    sql = "update " + Request["tablename"].ToString().Trim() + " set issh='否' where id=" + Request["id"].ToString().Trim();
                }
                else
                {
                    sql = "update " + Request["tablename"].ToString().Trim() + " set issh='是' where id=" + Request["id"].ToString().Trim();
                }
            
                
            }
            // sql = "delete from " + Request["tablename"].ToString().Trim() + " where id=" + int.Parse(Request["delid"].ToString().Trim()) + "";
            new Class1().hsgexucute(sql);
            Response.Redirect(Request.UrlReferrer.ToString().Trim());

            
        }
    }
}

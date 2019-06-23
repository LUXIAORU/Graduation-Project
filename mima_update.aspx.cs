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

public partial class mima_update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (MD5.Md5Func(TextBox1.Text.ToString().Trim()) == "" || MD5.Md5Func(TextBox2.Text.ToString().Trim()) == "" || MD5.Md5Func(TextBox3.Text.ToString().Trim()) == "")
        {
            Response.Write("<script>javascript:alert('请填写完整');history.back();</script>");
        }
        else
        {
            if (MD5.Md5Func(TextBox2.Text.ToString().Trim()) != MD5.Md5Func(TextBox3.Text.ToString().Trim()))
            {
                Response.Write("<script>javascript:alert('两次密码不一至，请确认');history.back();</script>");
            }
            if (MD5.Md5Func(TextBox1.Text.ToString().Trim()) == MD5.Md5Func(TextBox2.Text.ToString().Trim()))
            {
                Response.Write("<script>javascript:alert('新密码不能与旧密码一致！');history.back();</script>");
            }
            else
            {
                string sql;
                sql = "select * from yonghuzhuce where yonghuming='" + Session["username"].ToString().Trim() + "' and mima='" + MD5.Md5Func(TextBox1.Text.ToString().Trim()) + "'";

                DataSet result = new DataSet();
                result = new Class1().hsggetdata(sql);
                if (result != null)
                {
                    if (result.Tables[0].Rows.Count > 0)
                    {
                        sql = "update yonghuzhuce set mima='" + MD5.Md5Func(TextBox2.Text.ToString().Trim()) + "' where yonghuming='" + Session["username"].ToString().Trim() + "'";
                        int result2;
                        result2 = new Class1().hsgexucute(sql);

                        if (result2 == 1)
                        {
                            //Response.Redirect("<script>javascript:alert('修改成功');</script>");
                            Response.Write("<script>javascript:alert('修改成功');</script>");
                        }
                        else
                        {
                            Response.Write("<script>javascript:alert('系统错误');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>javascript:alert('原密码不正确');</script>");
                    }
                }


            }
        }
    }

}

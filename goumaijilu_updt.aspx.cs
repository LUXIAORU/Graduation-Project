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

public partial class goumaijilu_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
			
		    
			
			
            string sql;
            sql = "select * from goumaijilu where id=" + Request.QueryString["id"].ToString().Trim() ;
            getdata(sql);
        }
    }

	

    private void getdata(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                goumaidanhao.Text = result.Tables[0].Rows[0]["goumaidanhao"].ToString().Trim();
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        
        sql = "update goumaijilu set goumaidanhao='" + goumaidanhao.Text.ToString().Trim() + "',shangpinbianma='" + shangpinbianma.Text.ToString().Trim() + "',shangpinmingcheng='" + shangpinmingcheng.Text.ToString().Trim() + "',leibie='" + leibie.Text.ToString().Trim() + "',xinjiuchengdu='" + xinjiuchengdu.Text.ToString().Trim() + "',jiage='" + jiage.Text.ToString().Trim() + "',shuliang='" + shuliang.Text.ToString().Trim() + "',faburen='" + faburen.Text.ToString().Trim() + "',goumaishu='" + goumaishu.Text.ToString().Trim() + "',jine='" + jine.Text.ToString().Trim() + "',yonghuming='" + yonghuming.Text.ToString().Trim() + "',xingming='" + xingming.Text.ToString().Trim() + "',shouji='" + shouji.Text.ToString().Trim() + "',youxiang='" + youxiang.Text.ToString().Trim() + "',dizhi='" + dizhi.Text.ToString().Trim() + "',beizhu='" + beizhu.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('�޸ĳɹ�');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('ϵͳ����');</script>");
        }
    }
   
   
   
   
   
   
}

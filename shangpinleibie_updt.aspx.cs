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

public partial class shangpinleibie_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
			
		    
			
			
            string sql;
            sql = "select * from shangpinleibie where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                leibie.Text = result.Tables[0].Rows[0]["leibie"].ToString().Trim();                tedian.Text = result.Tables[0].Rows[0]["tedian"].ToString().Trim();                shuoming.Text = result.Tables[0].Rows[0]["shuoming"].ToString().Trim();                
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        
        sql = "update shangpinleibie set leibie='" + leibie.Text.ToString().Trim() + "',tedian='" + tedian.Text.ToString().Trim() + "',shuoming='" + shuoming.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('修改成功');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误');</script>");
        }
    }
   
   
   
   
   
   
}


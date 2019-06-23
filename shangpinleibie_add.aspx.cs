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

public partial class shangpinleibie_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
        {
			
			
			
            
			
			 
			
			
			
           
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
		
        string sql;
		
		
		ischongfu("select id from shangpinleibie where  leibie='"+leibie.Text.ToString().Trim()+"'");
		
		
        sql="insert into shangpinleibie(leibie,tedian,shuoming) values('"+leibie.Text.ToString().Trim()+"','"+tedian.Text.ToString().Trim()+"','"+shuoming.Text.ToString().Trim()+"') ";
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
	
	
	
	public void ischongfu(string sql)
    {
        DataSet result = new DataSet();
            result = new Class1().hsggetdata(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    Response.Write("<script>javascript:alert('提示,类别已存在,不要重复添加');location.href='shangpinleibie_add.aspx';</script>");
                    Response.End();
                }
            }
    }
	
	
	
	
	
	
	
}


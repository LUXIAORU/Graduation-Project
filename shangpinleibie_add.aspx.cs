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
            Response.Write("<script>javascript:alert('��ӳɹ�');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('ϵͳ�����������ݿ���������');</script>");
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
                    Response.Write("<script>javascript:alert('��ʾ,����Ѵ���,��Ҫ�ظ����');location.href='shangpinleibie_add.aspx';</script>");
                    Response.End();
                }
            }
    }
	
	
	
	
	
	
	
}


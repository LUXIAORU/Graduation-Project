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
public partial class gouwuche : System.Web.UI.Page
{
    public string nshangpinbianma,nshangpinmingcheng,nleibie,nxinjiuchengdu, njiage, nfaburen;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
         {
           Response.Write("<script>javascript:alert('�Բ��������ȵ�½��');history.back();</script>");
           Response.End();
         }
		if (!IsPostBack)
        {
            string sql;
            sql = "select * from gouwuche where yonghuming="+ Session["username"].ToString().Trim();
            getdata(sql);

        }

        
    }
    private void getdata(string sql)
    {
        sql = "select * from gouwuche where yonghuming=" + Session["username"].ToString().Trim();
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {

            if (result.Tables[0].Rows.Count > 0)
            {
                DataGrid1.DataSource = result.Tables[0];
                DataGrid1.DataBind();
                Label1.Text = "���������й�" + result.Tables[0].Rows.Count + "��";
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
                Label1.Text = "�����κ�����";
            }
        }
    }
    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from gouwuche";
        getdata(sql);      
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        DataGrid1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("goumaijilu_add.aspx?id=" + Request.QueryString["id"]);


    }
}



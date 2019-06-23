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

public partial class pinglun_list : System.Web.UI.Page
{
    public string nbiao,nid;
    protected void Page_Load(object sender, EventArgs e)
    {
        nbiao = Request.QueryString["biao"].ToString().Trim();
        nid = Request.QueryString["id"].ToString().Trim();
        if (Request.QueryString["delid"] != null)
        {
            string delsql = "delete from pinglun where id="+Request.QueryString["delid"].ToString().Trim();
            new Class1().hsgexucute(delsql);
            Response.Redirect("pinglun_list.aspx?id=" + nid + "&biao=" + nbiao);
        }
        if (!IsPostBack)
        {
            string sql;
            sql = "select * from pinglun where xinwenID='"+Request.QueryString["id"].ToString().Trim()+"' and biao='"+nbiao+"' order by id desc";
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
                DataGrid1.DataSource = result.Tables[0];
                DataGrid1.DataBind();
                Label1.Text = "以上数据中共" + result.Tables[0].Rows.Count+"条";
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
                Label1.Text = "暂无任何数据";
            }
        }
    }
      protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from pinglun order by id desc";
        getdata(sql);
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        DataGrid1.DataBind();
    }
}


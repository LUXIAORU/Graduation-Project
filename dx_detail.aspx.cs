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

public partial class dx_detail : System.Web.UI.Page
{
    public string lb, ncontent, lbtxt;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {


            //addxiala("shangpinleibie","leibie","leibie");


            //string sql;
            //sql = "select * from shangpinxinxi where  issh='是' and shuliang > 0 order by id desc";
            ////select * from shangpinxinxi where  issh='是' order by id desc
            //getdata(sql);

            string sql;
            sql = "select * from shangpinxinxi where issh='是' and shuliang > 0 order by id desc";


            if (Session["username"] != null)
            {
                string licSql = string.Format(@"select top 3 * from search where Yonghuming='{0}' order by Addtime desc", Session["username"].ToString());

                DataSet resultlb = new DataSet();
                resultlb = new Class1().hsggetdata(licSql);
                sql = "select * from shangpinxinxi where issh='是' and shuliang > 0 and";
                ArrayList list = new ArrayList();
                foreach (DataRow item in resultlb.Tables[0].Rows)
                {
                    list.Add(string.Format(@" shangpinmingcheng like '%{0}%' ", item["Search"]));
                }
                sql += string.Join(" or ", (string[])list.ToArray(typeof(string)));
                //list.Add(string.Format(@" order by id desc "));
            }

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
                Label1.Text = "以上数据中共" + result.Tables[0].Rows.Count + "条";
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
        sql = "select * from shangpinxinxi where issh='是' and shuliang > 0 order by id desc";


        if (Session["username"] != null)
        {
            string licSql = string.Format(@"select top 3 * from search where Yonghuming='{0}' order by Addtime desc", Session["username"].ToString());

            DataSet resultlb = new DataSet();
            resultlb = new Class1().hsggetdata(licSql);
            sql = "select * from shangpinxinxi where issh='是' and shuliang > 0 and";
            ArrayList list = new ArrayList();
            foreach (DataRow item in resultlb.Tables[0].Rows)
            {
                list.Add(string.Format(@" shangpinmingcheng like '%{0}%' ", item["Search"]));
            }
            sql += string.Join(" or ", (string[])list.ToArray(typeof(string)));
            //list.Add(string.Format(@" order by id desc "));
        }

        getdata(sql);
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        DataGrid1.DataBind();
    }
    public string riqigeshi(object str)
    {
        string strTmp = str.ToString();
        DateTime dt = Convert.ToDateTime(strTmp);
        string ss = dt.ToShortDateString();
        return ss;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("shangpinxinxilisttp.aspx");
    }
}

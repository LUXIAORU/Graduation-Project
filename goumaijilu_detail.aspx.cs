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

public partial class goumaijilu_detail : System.Web.UI.Page
{
	public string ngoumaidanhao,nshangpinbianma,nshangpinmingcheng,nleibie,nxinjiuchengdu,njiage,nshuliang,nfaburen,ngoumaishu,njine,nyonghuming,nxingming,nshouji,nyouxiang,ndizhi,nbeizhu,nid;
    protected void Page_Load(object sender, EventArgs e)
    {
   		nid = Request.QueryString["id"].ToString().Trim();
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
                ngoumaidanhao = result.Tables[0].Rows[0]["goumaidanhao"].ToString().Trim();nshangpinbianma = result.Tables[0].Rows[0]["shangpinbianma"].ToString().Trim();nshangpinmingcheng = result.Tables[0].Rows[0]["shangpinmingcheng"].ToString().Trim();nleibie = result.Tables[0].Rows[0]["leibie"].ToString().Trim();nxinjiuchengdu = result.Tables[0].Rows[0]["xinjiuchengdu"].ToString().Trim();njiage = result.Tables[0].Rows[0]["jiage"].ToString().Trim();nshuliang = result.Tables[0].Rows[0]["shuliang"].ToString().Trim();nfaburen = result.Tables[0].Rows[0]["faburen"].ToString().Trim();ngoumaishu = result.Tables[0].Rows[0]["goumaishu"].ToString().Trim();njine = result.Tables[0].Rows[0]["jine"].ToString().Trim();nyonghuming = result.Tables[0].Rows[0]["yonghuming"].ToString().Trim();nxingming = result.Tables[0].Rows[0]["xingming"].ToString().Trim();nshouji = result.Tables[0].Rows[0]["shouji"].ToString().Trim();nyouxiang = result.Tables[0].Rows[0]["youxiang"].ToString().Trim();ndizhi = result.Tables[0].Rows[0]["dizhi"].ToString().Trim();nbeizhu = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();
                
            }
        }
    }
    
}


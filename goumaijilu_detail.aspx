<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goumaijilu_detail.aspx.cs" Inherits="goumaijilu_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>购买记录</title>
	<LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" border="1" bordercolordark="#9cc7ef" bordercolorlight="#145aa0"
            cellpadding="4" cellspacing="0" width="90%">
            <tr bgcolor="#4296e7">
                <td colspan="4">
                    <div align="center">
                        <font color="#ffffff">购买记录详细</font></div>
                </td>
            </tr>
            <tr>
                <td width='11%'>购买单号：</td><td width='39%'><%=ngoumaidanhao%></td>                <td width='11%'>商品编码：</td><td width='39%'><%=nshangpinbianma%></td></tr><tr>                <td width='11%'>商品名称：</td><td width='39%'><%=nshangpinmingcheng%></td>                <td width='11%'>类别：</td><td width='39%'><%=nleibie%></td></tr><tr>                <td width='11%'>新旧程度：</td><td width='39%'><%=nxinjiuchengdu%></td>                <td width='11%'>价格：</td><td width='39%'><%=njiage%></td></tr><tr>                <td width='11%'>数量：</td><td width='39%'><%=nshuliang%></td>                <td width='11%'>发布人：</td><td width='39%'><%=nfaburen%></td></tr><tr>                <td width='11%'>购买数：</td><td width='39%'><%=ngoumaishu%></td>                <td width='11%'>金额：</td><td width='39%'><%=njine%></td></tr><tr>                <td width='11%'>用户名：</td><td width='39%'><%=nyonghuming%></td>                <td width='11%'>姓名：</td><td width='39%'><%=nxingming%></td></tr><tr>                <td width='11%'>手机：</td><td width='39%'><%=nshouji%></td>                <td width='11%'>邮箱：</td><td width='39%'><%=nyouxiang%></td></tr><tr>                <td width='11%'>地址：</td><td width='39%'><%=ndizhi%></td>                <td width='11%'>备注：</td><td width='39%'><%=nbeizhu%></td>                </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 style='border:solid 1px #000000; color:#666666' onClick="javascript:history.back()" /></td></tr>

            <tr bgcolor="#4296e7">
                <td colspan="4">&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>


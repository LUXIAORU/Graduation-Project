<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goumaijilu_detail.aspx.cs" Inherits="goumaijilu_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>�����¼</title>
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
                        <font color="#ffffff">�����¼��ϸ</font></div>
                </td>
            </tr>
            <tr>
                <td width='11%'>���򵥺ţ�</td><td width='39%'><%=ngoumaidanhao%></td>                <td width='11%'>��Ʒ���룺</td><td width='39%'><%=nshangpinbianma%></td></tr><tr>                <td width='11%'>��Ʒ���ƣ�</td><td width='39%'><%=nshangpinmingcheng%></td>                <td width='11%'>���</td><td width='39%'><%=nleibie%></td></tr><tr>                <td width='11%'>�¾ɳ̶ȣ�</td><td width='39%'><%=nxinjiuchengdu%></td>                <td width='11%'>�۸�</td><td width='39%'><%=njiage%></td></tr><tr>                <td width='11%'>������</td><td width='39%'><%=nshuliang%></td>                <td width='11%'>�����ˣ�</td><td width='39%'><%=nfaburen%></td></tr><tr>                <td width='11%'>��������</td><td width='39%'><%=ngoumaishu%></td>                <td width='11%'>��</td><td width='39%'><%=njine%></td></tr><tr>                <td width='11%'>�û�����</td><td width='39%'><%=nyonghuming%></td>                <td width='11%'>������</td><td width='39%'><%=nxingming%></td></tr><tr>                <td width='11%'>�ֻ���</td><td width='39%'><%=nshouji%></td>                <td width='11%'>���䣺</td><td width='39%'><%=nyouxiang%></td></tr><tr>                <td width='11%'>��ַ��</td><td width='39%'><%=ndizhi%></td>                <td width='11%'>��ע��</td><td width='39%'><%=nbeizhu%></td>                </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� style='border:solid 1px #000000; color:#666666' onClick="javascript:history.back()" /></td></tr>

            <tr bgcolor="#4296e7">
                <td colspan="4">&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>


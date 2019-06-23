<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goumaijiluadd.aspx.cs" Inherits="goumaijiluadd" %>
<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>

<%@ Register Src="qtdown.ascx" TagName="qtdown" TagPrefix="uc2" %>

<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>购买记录</title>
	
    <LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /></head>
<script language="javascript">	
function OpenScript(url,width,height)
{
  var win = window.open(url,"SelectToSort",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}
	function OpenDialog(sURL, iWidth, iHeight)
{
   var oDialog = window.open(sURL, "_EditorDialog", "width=" + iWidth.toString() + ",height=" + iHeight.toString() + ",resizable=no,left=0,top=0,scrollbars=no,status=no,titlebar=no,toolbar=no,menubar=no,location=no");
   oDialog.focus();
}
</script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
    <div>
        <table width="1014" height="1056" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td>
            <uc1:qttop ID="Qttop1" runat="server" />
        </td>
	</tr>
	<tr>
		<td height="778"><table id="Table2" width="1014" height="778" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="778" valign="top" bgcolor="#E7DFC8">
                <uc3:qtleft ID="Qtleft1" runat="server" />
            </td>
            <td valign="top" bgcolor="#E7DFC8"><table id="Table12" width="778" height="778" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td height="233" valign="top"><table id="Table13" width="778" height="233" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="778" height="41" background="qtimages/1_02_02_02_01.gif"><table width="100%" height="22" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="23%" height="22" align="center" valign="bottom"><strong>购买记录</strong></td>
                        <td width="77%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="Table14" width="778" height="712" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="17" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="727" height="180" valign="top" bgcolor="#F3ECDA" class=newsline>                                              
                            <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse" class="newsline">
			                <tr><td><FONT face='宋体'>购买单号:</FONT></td><td width='79%'><asp:TextBox ID='goumaidanhao' runat='server'></asp:TextBox></td></tr>
			                <tr><td><FONT face='宋体'>商品编码:</FONT></td><td width='79%'><%=nshangpinbianma %></td></tr>
			                <tr><td><FONT face='宋体'>商品名称:</FONT></td><td width='79%'><%=nshangpinmingcheng %></td></tr>
			                <tr><td><FONT face='宋体'>类别:</FONT></td><td width='79%'><%=nleibie %></td></tr>
			                <tr><td><FONT face='宋体'>新旧程度:</FONT></td><td width='79%'><%=nxinjiuchengdu %></td></tr>
			                <tr><td><FONT face='宋体'>价格:</FONT></td><td width='79%'><%=njiage %></td></tr>
			                <tr><td><FONT face='宋体'>发布人:</FONT></td><td width='79%'><%=nfaburen %></td></tr>
			                <tr><td><FONT face='宋体'>购买数:</FONT></td><td width='79%'><asp:TextBox ID='goumaishu' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorgoumaishu" runat="server" ControlToValidate="goumaishu" ErrorMessage="必填"></asp:RequiredFieldValidator> 必需数字型 <asp:RegularExpressionValidator ID="gsyzgoumaishu" runat="server" ControlToValidate="goumaishu" ErrorMessage="必需数字" ValidationExpression="^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$"></asp:RegularExpressionValidator> </td></tr>
			                <tr><td><FONT face='宋体'>金额:</FONT></td><td width='79%'><asp:TextBox ID='jine' runat='server' style='border:solid 1px #000000; color:#666666;background-color:#CCCCCC' ReadOnly='true'></asp:TextBox>&nbsp;此项不必填写，系统自动计算</td></tr>
			                <tr><td><FONT face='宋体'>用户名:</FONT></td><td width='79%'><asp:TextBox ID='yonghuming' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>
			                <tr><td><FONT face='宋体'>姓名:</FONT></td><td width='79%'><asp:TextBox ID='xingming' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>
			                <tr><td><FONT face='宋体'>手机:</FONT></td><td width='79%'><asp:TextBox ID='shouji' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorshouji" runat="server" ControlToValidate="shouji" ErrorMessage="必填"></asp:RequiredFieldValidator> 必需手机型 <asp:RegularExpressionValidator ID="gsyzshouji" runat="server" ControlToValidate="shouji" ErrorMessage="必需手机格式" ValidationExpression="^1[3|4|5|6|7|8|9][0-9]\d{8,8}$"></asp:RegularExpressionValidator> </td></tr>
			                <tr><td><FONT face='宋体'>邮箱:</FONT></td><td width='79%'><asp:TextBox ID='youxiang' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatoryouxiang" runat="server" ControlToValidate="youxiang" ErrorMessage="必填"></asp:RequiredFieldValidator> 必需邮箱型 <asp:RegularExpressionValidator ID="gsyzyouxiang" runat="server" ControlToValidate="youxiang" ErrorMessage="必需邮箱格式" ValidationExpression="^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$"></asp:RegularExpressionValidator> </td></tr>
			                <tr><td><FONT face='宋体'>地址:</FONT></td><td width='79%'><asp:TextBox ID='dizhi' Width='395px' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>
			                <tr><td><FONT face='宋体'>备注:</FONT></td><td width='79%'><asp:TextBox ID='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			
				            <tr>
					            <td noWrap height="25" style="WIDTH: 80px">
						            <div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					            </td>
					            <td width="59%" height="25">&nbsp;
						            <asp:button id="Button1" runat="server" Text="确定" onclick="Button1_Click" style='border:solid 1px #000000; color:#666666'></asp:button><FONT face="宋体">&nbsp;</FONT>
                                    <input id="Reset1" type="reset" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
				            </tr>
            				
				            <tr bgColor="#f1f8f5">
					            <td colSpan="2">&nbsp;</td>
				            </tr>
			            </table>
                            
                            
                        </td>
                        <td width="34" background="qtimages/1_02_02_02_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="12"><img src="qtimages/1_02_02_02_03.gif" width="778" height="12" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
            </table></td>
          </tr>
      </table></td>
	</tr>
	<tr>
		<td>
            <uc2:qtdown ID="Qtdown1" runat="server" />
        </td>
	</tr>
</table>

    </div>
       
    </form>
</body>
</html>



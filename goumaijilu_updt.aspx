<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goumaijilu_updt.aspx.cs" Inherits="goumaijilu_updt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>�����¼</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
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
	<body>
		<form id="Form1" method="post" runat="server">
			<br />
			   <table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
				<tr bgColor="#f1f8f5">
					<td colSpan="2">
						<div align="center">�޸Ĺ����¼</div>
					</td>
				</tr>
				<tr><td><FONT face='����'>���򵥺�:</FONT></td><td width='79%'><asp:textbox id='goumaidanhao' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>				<tr><td><FONT face='����'>��Ʒ����:</FONT></td><td width='79%'><asp:textbox id='shangpinbianma' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>				<tr><td><FONT face='����'>��Ʒ����:</FONT></td><td width='79%'><asp:textbox id='shangpinmingcheng' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>				<tr><td><FONT face='����'>���:</FONT></td><td width='79%'><asp:textbox id='leibie' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>				<tr><td><FONT face='����'>�¾ɳ̶�:</FONT></td><td width='79%'><asp:textbox id='xinjiuchengdu' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>				<tr><td><FONT face='����'>�۸�:</FONT></td><td width='79%'><asp:textbox id='jiage' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>				<tr><td><FONT face='����'>����:</FONT></td><td width='79%'><asp:textbox id='shuliang' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>				<tr><td><FONT face='����'>������:</FONT></td><td width='79%'><asp:textbox id='faburen' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>				<tr><td><FONT face='����'>������:</FONT></td><td width='79%'><asp:textbox id='goumaishu' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorgoumaishu" runat="server" ControlToValidate="goumaishu" ErrorMessage="����"></asp:RequiredFieldValidator>				<tr><td><FONT face='����'>���:</FONT></td><td width='79%'><asp:textbox id='jine' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>				<tr><td><FONT face='����'>�û���:</FONT></td><td width='79%'><asp:textbox id='yonghuming' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>				<tr><td><FONT face='����'>����:</FONT></td><td width='79%'><asp:textbox id='xingming' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>				<tr><td><FONT face='����'>�ֻ�:</FONT></td><td width='79%'><asp:textbox id='shouji' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorshouji" runat="server" ControlToValidate="shouji" ErrorMessage="����"></asp:RequiredFieldValidator>				<tr><td><FONT face='����'>����:</FONT></td><td width='79%'><asp:textbox id='youxiang' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatoryouxiang" runat="server" ControlToValidate="youxiang" ErrorMessage="����"></asp:RequiredFieldValidator>				<tr><td><FONT face='����'>��ַ:</FONT></td><td width='79%'><asp:textbox id='dizhi' Width='395px' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>				<tr><td><FONT face='����'>��ע:</FONT></td><td width='79%'><asp:textbox id='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox></td></tr>				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="����"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="�޸�" OnClick="Button1_Click" style='border:solid 1px #000000; color:#666666'></asp:button><FONT face="����">&nbsp;</FONT>
                        <input id="Reset1" type="reset" value="����" style='border:solid 1px #000000; color:#666666' /></td>
				</tr>
				
				<tr bgColor="#f1f8f5">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</HTML>


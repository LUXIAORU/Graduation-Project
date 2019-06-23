<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>校园二手交易平台</title>
<style type="text/css">
<!--
*{overflow:hidden; font-size:9pt;}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	
	background-repeat: repeat-x;
	background-color: #D4D8E3;
}
.STYLE8 {color: #A1A8D2}
.STYLE7 {color: #FFFFFF}
-->
</style>
</head>
<script language=javascript>
function refreshimg(){ 
document.getElementById("getcode").src = "VerifyCode.aspx?"+Math.random(); 
} 
</script>
<body>
    <form id="form1" runat="server">
    <div>
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="44" background="images/HeaderBg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td background="images/bbgg.jpg"><table width="589" height="539" border="0" align="center" cellpadding="0" cellspacing="0" background="images/login.jpg" id="__01">
      <tr>
        <td height="135" colspan="3" ><div align="center"  style="color:#4A85BD;font-size: 26pt; font-weight: bold;  line-height:80px">校园二手交易平台</div></td>
      </tr>
      <tr>
        <td width="290" rowspan="2" align="center">&nbsp;</td>
        <td width="219" height="176"><table width="205" border="0" align="center" cellpadding="0" cellspacing="0">
         
            <tr>
              <td width="55" height="30">用&nbsp;&nbsp;户:</td>
              <td height="30" colspan="2">
                  <asp:TextBox ID="TextBox1" runat="server" Style="border-right: #cadcb2 1px solid;
                      border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                      width: 130px; border-bottom: #cadcb2 1px solid; height: 18px" Width="138px"></asp:TextBox></td>
            </tr>
            <tr>
              <td height="30">密&nbsp;&nbsp;码:</td>
              <td height="30" colspan="2">
                  <asp:TextBox ID="TextBox2" runat="server" Style="border-right: #cadcb2 1px solid;
                      border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                      width: 130px; border-bottom: #cadcb2 1px solid; height: 18px" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
              <td height="30">权&nbsp;&nbsp;限:</td>
              <td height="30" colspan="2">
                  <asp:DropDownList ID="cx" runat="server">
                  </asp:DropDownList></td>
            </tr>
            <tr>
              <td height="30">验证码:</td>
              <td width="54" height="30">
                  <asp:TextBox ID="yzm" runat="server" Style="border-right: #cadcb2 1px solid; border-top: #cadcb2 1px solid;
                      font-size: 12px; border-left: #cadcb2 1px solid; width: 50px; color: #81b432;
                      border-bottom: #cadcb2 1px solid; height: 18px"></asp:TextBox></td>
              <td width="96"><a href="javascript:refreshimg()" title="看不清楚，换个图片。"><asp:Image ID="getcode" runat="server" src="VerifyCode.aspx" /></a></td>
            </tr>
            <tr>
              <td height="30" colspan="3">
                  &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="background:url(images/the_formbtn.gif) no-repeat;color:#000000;width:80px;height: 24px; border:0px;line-height:24px; font-size:12px;margin-right: 5px; cursor:pointer" Text="登陆" />
                  <input type="reset" name="Submit2" value="重置" style="background:url(images/the_formbtn.gif) no-repeat;color:#000000;width:80px;height: 24px; border:0px;line-height:24px; font-size:12px;margin-right: 5px; cursor:pointer"></td>
            </tr>
         
        </table></td>
        <td width="80" rowspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="28" background="images/Footer.gif">&nbsp;</td>
  </tr>
</table>

    </div> </form>
</body>
</html>

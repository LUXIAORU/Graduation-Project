<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hsgpinglun.aspx.cs" Inherits="hsgpinglun" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>在线评论</title>
    <style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>
</head>

<body>
    <form id="form1" runat="server">
    <div>
       <table width="100%" border="1" align="center" cellpadding="4" cellspacing="0" bordercolorlight="#145aa0" bordercolordark="#9cc7ef">
  <tbody>
    <tr style="display:none">
      <td nowrap="nowrap" >数据ID:</td>
      <td align="left"><asp:TextBox id="xiangpianID" runat="server"></asp:TextBox>
        *</td>
    </tr>
<%--    <tr>
      <td nowrap="nowrap"><span>内容</span>:</td>
      <td align="left"><asp:TextBox id="pinglunneirong" runat="server" Width="318px" TextMode="MultiLine" Height="67px" OnTextChanged="pinglunneirong_TextChanged"></asp:TextBox>
        *
          <asp:RequiredFieldValidator id="RequiredFieldValidatorpinglunneirong" runat="server" ErrorMessage="必填" ControlToValidate="pinglunneirong"></asp:RequiredFieldValidator></td>
    </tr>--%>
      <tr>
      <td nowrap="nowrap"><span>评分:</span></td>
      <td align="left" width="79%">
          <asp:DropDownList id="pingjia" runat="server"> 
          </asp:DropDownList></td>
    </tr>
    <tr>
      <td nowrap="nowrap"><span>描述相符评分:</span></td>
      <td align="left" width="79%">
          <asp:DropDownList id="miaoshu" runat="server"> 
          <asp:ListItem>★★★★★</asp:ListItem>
          <asp:ListItem>★★★★</asp:ListItem>
          <asp:ListItem>★★★</asp:ListItem>
          <asp:ListItem>★★</asp:ListItem>
          <asp:ListItem>★</asp:ListItem>
          </asp:DropDownList></td>
    </tr>
      <tr>
      <td nowrap="nowrap"><span>服务态度评分:</span></td>
      <td align="left" width="79%">
          <asp:DropDownList id="fuwu" runat="server"> 
          <asp:ListItem>★★★★★</asp:ListItem>
          <asp:ListItem>★★★★</asp:ListItem>
          <asp:ListItem>★★★</asp:ListItem>
          <asp:ListItem>★★</asp:ListItem>
          <asp:ListItem>★</asp:ListItem>
          </asp:DropDownList></td>
    </tr>
    <tr>
      <td nowrap="nowrap"><span>发表人:</span></td>
      <td align="left" width="79%"><asp:TextBox id="pinglunren" runat="server"></asp:TextBox>
          <span>*</span><span> </span></td>
    </tr>
    <tr>
      <td nowrap="nowrap" height="25">&nbsp;</td>
      <td align="left" width="59%" height="25">
        <asp:Button id="Button1" onclick="Button1_Click" runat="server" Text="添加"></asp:Button>&nbsp;<input name="reset" type="reset" id="Reset1" value="重置" /></td>
    </tr>
  </tbody>
</table>
    </div>
    </form>
</body>
</html>

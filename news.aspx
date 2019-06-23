<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" EnableEventValidation="false"  %>

<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>

<%@ Register Src="qtdown.ascx" TagName="qtdown" TagPrefix="uc2" %>

<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>校园二手交易平台</title><LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
body {
	background-color: #bdae97;
}
-->
</style>
</head>
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
                        <td width="23%" height="22" align="center" valign="bottom"><strong><% =lbtxt%></strong></td>
                        <td width="77%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="Table14" width="778" height="712" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="17" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="727" height="180" valign="top" bgcolor="#F3ECDA" class=newsline>
                            <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                BorderWidth="0" ItemStyle-Height="25" OnPageIndexChanged="DataGrid1_PageIndexChanged"
                                PageSize="25" ShowHeader="False" Width="100%">
                                <Columns>
                                    <asp:TemplateColumn>
                                        <ItemTemplate>
                                            <img src="qtimages/1.jpg">
                                        </ItemTemplate>
                                        <HeaderStyle Width="30px" />
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="标题">
                                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                            Font-Underline="False" HorizontalAlign="Left" />
                                        <ItemTemplate>
                                            [<%#DataBinder.Eval(Container.DataItem, "leibie")%>] <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>
                                                <%#DataBinder.Eval(Container.DataItem, "title") %>
                                            </a>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn>
                                        <ItemTemplate>
                                            被点击
                                            <%# DataBinder.Eval(Container.DataItem, "dianjilv")%>
                                            次
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="addtime" HeaderText="发布时间">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundColumn>
                                </Columns>
                                <PagerStyle NextPageText="下一页" PrevPageText="上一页" />
                                <ItemStyle Height="25px" />
                            </asp:DataGrid></td>
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

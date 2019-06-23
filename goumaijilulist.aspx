<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goumaijilulist.aspx.cs" Inherits="goumaijilulist" %>
<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>

<%@ Register Src="qtdown.ascx" TagName="qtdown" TagPrefix="uc2" %>

<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>购买记录</title>
	
    <LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /></head>
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
                        
                        
                            <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
            <tbody>
               
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; 商品名称：<asp:TextBox ID=shangpinmingcheng runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 类别：<asp:TextBox ID=leibie runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 新旧程度：<asp:TextBox ID=xinjiuchengdu runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 姓名：<asp:TextBox ID=xingming runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 手机：<asp:TextBox ID=shouji runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" style='border:solid 1px #000000; color:#666666' /><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="切换视图" style='border:solid 1px #000000; color:#666666' />
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BorderWidth=0
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True" class="newsline">
                            <HeaderStyle BackColor="#F8FAFC" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle Font-Bold="True" Font-Names="宋体" ForeColor="Blue" HorizontalAlign="Right"
                NextPageText="下一页" PrevPageText="上一页" />
                            <EditItemStyle BackColor="#E9F0F8" CssClass="input_text" Font-Bold="False" Font-Italic="False"
                                Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="序号">
                                    <HeaderStyle Width="50px" />
                                    <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField='goumaidanhao' HeaderText='购买单号'></asp:BoundColumn>
                                <asp:BoundColumn DataField='shangpinbianma' HeaderText='商品编码'></asp:BoundColumn>
                                <asp:BoundColumn DataField='shangpinmingcheng' HeaderText='商品名称'></asp:BoundColumn>
                                <asp:BoundColumn DataField='leibie' HeaderText='类别'></asp:BoundColumn>
                                <asp:BoundColumn DataField='xinjiuchengdu' HeaderText='新旧程度'></asp:BoundColumn>
                                <asp:BoundColumn DataField='jiage' HeaderText='价格'></asp:BoundColumn>
                                <asp:BoundColumn DataField='shuliang' HeaderText='数量'></asp:BoundColumn>
                                <asp:BoundColumn DataField='faburen' HeaderText='发布人'></asp:BoundColumn>
                                <asp:BoundColumn DataField='goumaishu' HeaderText='购买数'></asp:BoundColumn>
                                <asp:BoundColumn DataField='jine' HeaderText='金额'></asp:BoundColumn>
                                <asp:BoundColumn DataField='yonghuming' HeaderText='用户名'></asp:BoundColumn>
                                <asp:BoundColumn DataField='xingming' HeaderText='姓名'></asp:BoundColumn>
                                <asp:BoundColumn DataField='shouji' HeaderText='手机'></asp:BoundColumn>
                                <asp:BoundColumn DataField='youxiang' HeaderText='邮箱'></asp:BoundColumn>
                                <asp:BoundColumn DataField='dizhi' HeaderText='地址'></asp:BoundColumn>
                                <asp:BoundColumn DataField='beizhu' HeaderText='备注'></asp:BoundColumn>
                                
                                
                                
								<asp:TemplateColumn HeaderText="详细"><ItemTemplate><a href='goumaijiludetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>详细</a></ItemTemplate><HeaderStyle Width="50px" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" /><ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" /> <FooterStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" /></asp:TemplateColumn>
                            </Columns>
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                </tr>
            </tbody>
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



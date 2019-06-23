<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gouwuche.aspx.cs" Inherits="gouwuche" %>
<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>

<%@ Register Src="qtdown.ascx" TagName="qtdown" TagPrefix="uc2" %>

<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>购物车</title>
	
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
                        <td width="23%" height="22" align="center" valign="bottom"><strong>购物车</strong></td>
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
                       
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderColor="Black" BorderWidth="0" CellPadding="2" class="newsline" font-name="verdana" Font-Names="verdana" Font-Size="8pt" OnPageIndexChanged="DataGrid1_PageIndexChanged" PageSize="8" Width="100%">
                            <HeaderStyle BackColor="#F8FAFC" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle Font-Bold="True" Font-Names="宋体" ForeColor="Blue" HorizontalAlign="Right" NextPageText="下一页" PrevPageText="上一页" />
                            <EditItemStyle BackColor="#E9F0F8" CssClass="input_text" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="序号">
                                    <HeaderStyle Width="50px" />
                                    <ItemTemplate>
                                                                                        <%#Container.ItemIndex+1 %>
                                                                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField="shangpinbianhao" HeaderText="商品编码"></asp:BoundColumn>
                                <asp:BoundColumn DataField="shangpinmingcheng" HeaderText="商品名称"></asp:BoundColumn>
                                <asp:BoundColumn DataField="jiage" HeaderText="价格"></asp:BoundColumn>
                                <asp:BoundColumn DataField="goumaishu" HeaderText="购买数"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="图片">
                                    <ItemTemplate>
                                        <a href='<%#DataBinder.Eval(Container.DataItem, "tupian") %>' target="_blank">
                                                                                            <img src='<%#DataBinder.Eval(Container.DataItem, "tupian") %>' width='88' height='99' border='0' /></a>
                                    </ItemTemplate>
                                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                                    <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" Width="90px" />
                                </asp:TemplateColumn>
                                <asp:TemplateColumn>
                                        <ItemTemplate>
                                            <a href='goumaijiluadd.aspx?shangpinbianma=<%#DataBinder.Eval(Container.DataItem, "shangpinbianhao")%>&&goumaishu=<%#DataBinder.Eval(Container.DataItem, "goumaishu")%>'>确定</a>
                                            <%--<a href='goumaijiluadd.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>确定</a>--%>
                                            <%--<asp:Button ID="Button2" runat="server" onclick="Button1_Click" style="border:solid 1px #000000; color:#666666" Text="确定" />--%>

                                        </ItemTemplate>
                                </asp:TemplateColumn>
                                 <asp:TemplateColumn HeaderText="删除">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=gouwuche&npage=gouwuche.aspx' onclick="return confirm('确定要删除？')">删除</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
                            </Columns>
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataGrid>
                    </td>
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



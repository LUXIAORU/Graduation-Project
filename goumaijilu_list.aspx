<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goumaijilu_list.aspx.cs" Inherits="goumaijilu_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>购买记录</title>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">所有购买记录列表</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; 商品名称：<asp:TextBox ID=shangpinmingcheng runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 类别：<asp:TextBox ID=leibie runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 新旧程度：<asp:TextBox ID=xinjiuchengdu runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 姓名：<asp:TextBox ID=xingming runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 手机：<asp:TextBox ID=shouji runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" style='border:solid 1px #000000; color:#666666' /> &nbsp;<%--<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="导出EXCEL" style='border:solid 1px #000000; color:#666666' />--%>
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
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
                                <asp:BoundColumn DataField='faburen' HeaderText='发布人'></asp:BoundColumn>
                                <asp:BoundColumn DataField='goumaishu' HeaderText='购买数'></asp:BoundColumn>
                                <asp:BoundColumn DataField='jine' HeaderText='金额'></asp:BoundColumn>
                                <asp:BoundColumn DataField='yonghuming' HeaderText='用户名'></asp:BoundColumn>
                                <asp:BoundColumn DataField='xingming' HeaderText='姓名'></asp:BoundColumn>
                                <asp:BoundColumn DataField='shouji' HeaderText='手机'></asp:BoundColumn>
                                <asp:BoundColumn DataField='youxiang' HeaderText='邮箱'></asp:BoundColumn>
                                <asp:BoundColumn DataField='dizhi' HeaderText='地址'></asp:BoundColumn>
                                <asp:BoundColumn DataField='beizhu' HeaderText='备注'></asp:BoundColumn>
                                
                                
								<%--<asp:BoundColumn DataField=iszf HeaderText='是否支付'><HeaderStyle Width="80px" /></asp:BoundColumn>--%>
								<asp:BoundColumn DataField=iszf HeaderText='是否支付'><HeaderStyle Width="80px" /></asp:BoundColumn>
                                <%--<asp:TemplateColumn HeaderText="修改">
                               		<ItemTemplate>
                                    	<a href='goumaijilu_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>修改</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>--%>
                                <asp:TemplateColumn HeaderText="删除">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=goumaijilu&npage=goumaijilu_list.aspx' onclick="return confirm('确定要删除？')">删除</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="详细"><ItemTemplate><a href='goumaijilu_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>详细</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
                            </Columns>
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </tr>
            </tbody>
        </table>
		
		
    </div>
    </form>
</body>
</html>

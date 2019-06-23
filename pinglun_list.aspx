<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pinglun_list.aspx.cs" Inherits="pinglun_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="search" align="center" border="1" bordercolor="#cccccc" cellpadding="0"
            cellspacing="1" class="table_1" width="98%">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        所有评论信息列表</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" 
                           
                            PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
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
                                <asp:BoundColumn DataField="xinwenID" HeaderText='数据ID'></asp:BoundColumn>
                                <asp:BoundColumn DataField="pinglunren" HeaderText='留言人'></asp:BoundColumn>
                                <asp:BoundColumn DataField="pingjia" HeaderText='评分'></asp:BoundColumn>
                                <asp:BoundColumn DataField="miaoshu" HeaderText='描述评分'></asp:BoundColumn>
                                <asp:BoundColumn DataField="fuwu" HeaderText='服务评分'></asp:BoundColumn>
                              <%--  <asp:TemplateColumn HeaderText="修改">
                                <ItemTemplate>
                                    <a href='pinglun_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'
                                       >修改</a>
                                </ItemTemplate>
                                </asp:TemplateColumn>--%>
                                <asp:TemplateColumn HeaderText="删除">
                                 <ItemTemplate>
                                    <a href='pinglun_list.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&id=<%=nid %>&biao=<%=nbiao %>'
                                        onclick="return confirm('确定要删除？')">删除</a>
                                </ItemTemplate>
                                </asp:TemplateColumn>
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

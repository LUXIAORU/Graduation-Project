<%@ Control Language="C#" AutoEventWireup="true" CodeFile="qtleft.ascx.cs" Inherits="qtleft" %>
<table id="Table3" border="0" cellpadding="0" cellspacing="0" height="764" width="236">
    <tr>
        <td height="225">
            <table id="Table4" border="0" cellpadding="0" cellspacing="0" height="225" width="236">
                <tr>
                    <td background="qtimages/1_02_01_01_01.gif" height="40" width="236">
                        <table border="0" cellpadding="0" cellspacing="0" height="22" width="100%">
                            <tr>
                                <td align="center" height="22" valign="bottom" width="69%">
                                    <strong>系统公告</strong></td>
                                <td width="31%">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table id="Table5" border="0" cellpadding="0" cellspacing="0" height="175" width="236">
                            <tr>
                                <td background="qtimages/1_02_01_01_02_01.gif" width="30">
                                    &nbsp;</td>
                                <td height="175" width="190">
                                    <marquee border="0" direction="up" height="170" onmouseout="start()" onmouseover="stop()"
                                        scrollamount="1" scrolldelay="50"><TABLE 
                  height="98%" cellSpacing=5 cellPadding=0 width="100%" 
                  align=center 
                        border=0><TBODY><TR><TD><P><%=ngg %></P></TD></TR></TBODY></TABLE></marquee>
                                </td>
                                <td background="qtimages/1_02_01_01_02_03.gif" width="16">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img alt="" height="10" src="qtimages/1_02_01_01_03.gif" width="236" /></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="186">
            <table id="Table6" border="0" cellpadding="0" cellspacing="0" height="186" width="236">
                <tr>
                    <td background="qtimages/1_02_01_01_01.gif" height="40" width="236">
                        <table border="0" cellpadding="0" cellspacing="0" height="22" width="100%">
                            <tr>
                                <td align="center" height="22" valign="bottom" width="69%">
                                    <strong>用户登陆</strong></td>
                                <td width="31%">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="136">
                        <table id="Table7" border="0" cellpadding="0" cellspacing="0" height="136" width="236">
                            <tr>
                                <td background="qtimages/1_02_01_01_02_01.gif" width="30">
                                    &nbsp;</td>
                                <td height="136" width="190">
                                   
                                    <asp:Panel ID="Panel1" runat="server"  Width="184">
                                                    <table align="center" border="0" cellpadding="0" cellspacing="0" height="154" style="width: 173px">
                                                        <tr>
                                                            <td align="right">
                                                                用户名:</td>
                                                            <td align="left" colspan="2">
                                                                <asp:TextBox ID="TextBox1" runat="server" Style="border-right: #cadcb2 1px solid;
                                                                    border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                                                    width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                    密码:</td>
                                                            <td align="left" colspan="2">
                                                                <asp:TextBox ID="TextBox2" runat="server" Style="border-right: #cadcb2 1px solid;
                                                                    border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                                                    width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"
                                                                    TextMode="Password"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                    权限:</td>
                                                            <td align="left" colspan="2">
                                                                <asp:DropDownList ID="cx" runat="server">
                                                                </asp:DropDownList></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                验证码:</td>
                                                            <td align="left">
                                                                <asp:TextBox ID="yzm" runat="server" Width="51px"></asp:TextBox></td>
                                                            <td align="left">
                                                                <asp:Image ID="getcode" runat="server" src="VerifyCode.aspx" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" style="height: 24px">
                                                                &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Height="18px" OnClick="Button1_Click"
                                                                    Style="border-right: #cadcb2 1px solid; border-top: #cadcb2 1px solid; font-size: 12px;
                                                                    border-left: #cadcb2 1px solid; color: #81b432; border-bottom: #cadcb2 1px solid"
                                                                    Text=" 登 陆 " Width="46px" />
                                                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="border-right: #cadcb2 1px solid;
                                                                    border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                                                    color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px" Text="用户注册" /></td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                                <asp:Panel ID="Panel2" runat="server"  Width="193">
                                                    <table align="center" border="0" cellpadding="0" cellspacing="0" height="103" style="width: 181px">
                                                        <tr>
                                                            <td align="right" style="width: 63px">
                                                                用户名:</td>
                                                            <td align="left">
                                                                <%=Session["username"].ToString().Trim() %>
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" style="width: 63px">
                                                                您的权限:</td>
                                                            <td align="left">
                                                                <%=Session["cx"].ToString().Trim() %>
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                &nbsp;
                                                                &nbsp;<asp:Button ID="Button2" runat="server" Height="18px" OnClick="Button2_Click"
                                                                    Style="border-right: #cadcb2 1px solid; border-top: #cadcb2 1px solid; font-size: 12px;
                                                                    border-left: #cadcb2 1px solid; color: #81b432; border-bottom: #cadcb2 1px solid"
                                                                    Text=" 退 出 " Width="46px" />
                                                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Style="border-right: #cadcb2 1px solid;
                                                                    border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                                                    color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px" Text="个人后台" /></td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                   
                                </td>
                                <td background="qtimages/1_02_01_01_02_03.gif" width="16">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="10">
                        <img alt="" height="10" src="qtimages/1_02_01_01_03.gif" width="236" /></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="167">
            <table id="Table8" border="0" cellpadding="0" cellspacing="0" height="167" width="236">
                <tr>
                    <td background="qtimages/1_02_01_01_01.gif" height="40" width="236">
                        <table border="0" cellpadding="0" cellspacing="0" height="22" width="100%">
                            <tr>
                                <td align="center" height="22" valign="bottom" width="69%">
                                    <strong>站内搜索</strong></td>
                                <td width="31%">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="117">
                        <table id="Table9" border="0" cellpadding="0" cellspacing="0" height="117" width="236">
                            <tr>
                                <td background="qtimages/1_02_01_01_02_01.gif" width="30">
                                    &nbsp;</td>
                                <td height="117" width="190">
                                    <table border="0" cellpadding="0" cellspacing="0" height="100" width="100%">
                                        <tr>
                                            <td width="19%">
                                                标题</td>
                                            <td width="81%">
                                                <asp:TextBox ID="keyword" runat="server" Style="border-right: #cadcb2 1px solid;
                                                    border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                                    color: #81b432; border-bottom: #cadcb2 1px solid"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                类别</td>
                                            <td>
                                                <asp:DropDownList ID="lb" runat="server" Style="border-right: #cadcb2 1px solid;
                                                    border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                                    color: #81b432; border-bottom: #cadcb2 1px solid">
                                                </asp:DropDownList></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Style="border-right: #cadcb2 1px solid;
                                                    border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                                    color: #81b432; border-bottom: #cadcb2 1px solid" Text="搜索" /></td>
                                        </tr>
                                    </table>
                                </td>
                                <td background="qtimages/1_02_01_01_02_03.gif" width="16">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="10">
                        <img alt="" height="10" src="qtimages/1_02_01_01_03.gif" width="236" /></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <table id="Table10" border="0" cellpadding="0" cellspacing="0" height="186" width="236">
                <tr>
                    <td background="qtimages/1_02_01_01_01.gif" height="40" width="236">
                        <table border="0" cellpadding="0" cellspacing="0" height="22" width="100%">
                            <tr>
                                <td align="center" height="22" valign="bottom" width="69%">
                                    <strong>友情连接</strong></td>
                                <td width="31%">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="136">
                        <table id="Table11" border="0" cellpadding="0" cellspacing="0" height="136" width="236">
                            <tr>
                                <td background="qtimages/1_02_01_01_02_01.gif" width="30">
                                    &nbsp;</td>
                                <td height="136" width="190" class="newsline">
                                    <asp:DataGrid ID="DataGridyqlj" runat="server" AutoGenerateColumns="False" BorderWidth="0"
                                        Height="100%" ShowHeader="False" Width="100%">
                                        <Columns>
                                            <asp:TemplateColumn HeaderText="gregre">
                                                <ItemTemplate>
                                                    <a href='<%#DataBinder.Eval(Container.DataItem, "wangzhi") %>' target="_blank">
                                                        <%#DataBinder.Eval(Container.DataItem, "wangzhanmingcheng") %>
                                                    </a>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="友情链接">
                                                <ItemTemplate>
                                                    <a href='<%#DataBinder.Eval(Container.DataItem, "wangzhi") %>' target="_blank">
                                                        <%#DataBinder.Eval(Container.DataItem, "wangzhi")%>
                                                    </a>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                        </Columns>
                                    </asp:DataGrid></td>
                                <td background="qtimages/1_02_01_01_02_03.gif" style="color: #000000" width="16">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="10">
                        <img alt="" height="10" src="qtimages/1_02_01_01_03.gif" width="236" /></td>
                </tr>
            </table>
        </td>
    </tr>
</table>

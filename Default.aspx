<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>

<%@ Register Src="qtdown.ascx" TagName="qtdown" TagPrefix="uc2" %>

<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>

<head runat="server">
    <title>校园二手交易平台

    </title><LINK href="qtimages/style.css" type=text/css rel=stylesheet>
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
                <td><table id="Table13" width="778" height="246" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="266" height="246" align="right" valign="middle" bgcolor="#E7DFC8">
					  <SCRIPT type=text/javascript>
var focus_width=260;
var focus_height=220;
var text_height=20;
var swf_height = focus_height+text_height;
var pics="";
var links="";
var texts="";


pics="<%=npics %>";
links="<%=nlinks %>";
texts="<%=ntexts %>";

document.write('<embed src="qtimages/pixviewer.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#ffffff" quality="Best" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash">');

</SCRIPT></td>
                    <td><table id="Table14" width="512" height="246" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="512" height="42" background="qtimages/1_02_02_01_02_01.gif"><table width="100%" height="17" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="26%" align="center" valign="middle"><strong><a href="news.aspx?lb=校园新闻">校园新闻</a></strong></td>
                            <td width="74%">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><table id="Table15" width="512" height="191" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td><img src="qtimages/1_02_02_01_02_02_01.gif" width="12" height="191" alt=""></td>
                            <td width="466" height="191" valign="top" class="newsline">
                                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" BorderWidth="0"
                                    ItemStyle-Height="25" ShowHeader="False" Width="100%">
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
                                                    <%# CutStr(DataBinder.Eval(Container.DataItem, "title "))%>
                                                </a>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:BoundColumn DataField="addtime" HeaderText="发布时间">
                                            <HeaderStyle Width="100px" />
                                        </asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid></td>
                            <td><img src="qtimages/1_02_02_01_02_02_03.gif" width="34" height="191" alt=""></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="qtimages/1_02_02_01_02_03.gif" width="512" height="13" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="233"><table id="Table16" width="778" height="233" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="778" height="41" background="qtimages/1_02_02_02_01.gif"><table width="100%" height="22" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="23%" height="22" align="center" valign="bottom"><strong>热销商品</strong></td>
                        <td width="77%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="Table17" width="778" height="180" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="17" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="727" height="180" bgcolor="#F3ECDA">
                            <asp:DataList ID="DataList1" runat="server" Height="100%" RepeatColumns="5" Width="100%">
                                <ItemTemplate>
                                    <table align="center" border="0" bordercolor="#00FFFF" cellpadding="3" cellspacing="1"
                                        style="border-collapse: collapse" width="120">
                                        <tr>
                                            <td align="center" height="140">
                                                <a href='shangpinxinxidetail.aspx?id=<%# Eval("id") %>'>
                                                    <asp:Image ID="Image1" runat="server" Height="100%" ImageUrl='<%# Eval("tupian") %>'
                                                        Width="116" /></a></td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("shangpinmingcheng") %>'></asp:Label></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList></td>
                        <td width="34" background="qtimages/1_02_02_02_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="12"><img src="qtimages/1_02_02_02_03.gif" width="778" height="12" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="293"><table id="Table18" width="778" height="293" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="293"><table id="Table19" width="377" height="293" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="377" height="44" background="qtimages/1_02_02_03_01_01.gif"><table width="100%" height="17" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="33%" align="center" valign="middle"><strong><a href="news.aspx?lb=交易须知">交易须知</a></strong></td>
                            <td width="67%">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="239"><table id="Table20" width="377" height="239" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="16" background="qtimages/1_02_02_03_01_02_01.gif">&nbsp;</td>
                            <td width="349" height="239" valign="top" bgcolor="#F3ECDA" class=newsline>
                                <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" BorderWidth="0"
                                    ItemStyle-Height="25" ShowHeader="False" Width="100%">
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
                                                    <%# CutStr(DataBinder.Eval(Container.DataItem, "title "))%>
                                                </a>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                    </Columns>
                                </asp:DataGrid></td>
                            <td width="12" background="qtimages/1_02_02_03_01_02_03.gif">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="qtimages/1_02_02_03_01_03.gif" width="377" height="10" alt=""></td>
                      </tr>
                    </table></td>
                    <td><table id="Table21" width="401" height="289" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="401" height="43" background="qtimages/1_02_02_03_02_01.gif"><table width="100%" height="17" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="33%" align="center" valign="middle"><strong><a href="news.aspx?lb=常见问题">常见问题</a></strong></td>
                            <td width="67%">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="234"><table id="Table22" width="401" height="234" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="10" background="qtimages/1_02_02_03_02_02_01.gif">&nbsp;</td>
                            <td width="360" height="239" valign="top" bgcolor="#F3ECDA" class=newsline>
                                <asp:DataGrid ID="DataGrid3" runat="server" AutoGenerateColumns="False" BorderWidth="0"
                                    ItemStyle-Height="25" ShowHeader="False" Width="100%">
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
                                                    <%# CutStr(DataBinder.Eval(Container.DataItem, "title "))%>
                                                </a>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                    </Columns>
                                </asp:DataGrid></td>
                            <td width="31" background="qtimages/1_02_02_03_02_02_03.gif">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="qtimages/1_02_02_03_02_03.gif" width="401" height="11" alt=""></td>
                      </tr>
                    </table></td>
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

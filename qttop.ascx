<%@ Control Language="C#" AutoEventWireup="true" CodeFile="qttop.ascx.cs" Inherits="qttop" %>
<table id="Table1" width="1014" height="193" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="1014" height="104" background="qtimages/1_01_01.gif"><table width="54%" height="51" border="0" align="left">
              <tr>
                <td><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
                    <div align="center" class="STYLE5">校园二手交易平台</div>
                </div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td width="1014" height="48" background="qtimages/1_01_02.gif"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="red">
              <tr>
                <td align="center"><strong><a href="default.aspx"><font  class="STYLE1">首页</font></a></strong></td>                
                <td align="center"><strong><a href="shangpinxinxilist.aspx"><font  class="STYLE1">二手商品</font></a></strong></td>
                <td align="center"><strong><a href="news.aspx?lb=校园新闻"><font  class="STYLE1">校园新闻</font></a></strong></td>              
                <td align="center"><strong><a href="news.aspx?lb=交易须知"><font  class="STYLE1">交易须知</font></a></strong></td>
                <td align="center"><strong><a href="news.aspx?lb=常见问题"><font  class="STYLE1">常见问题</font></a></strong></td>
                <%--<td align="center"><strong><a href="lyb.aspx"><font  class="STYLE1">在线留言</font></a></strong></td>--%>
                  <% if (Session["username"] != null){ %>
                 <td align="center"><strong><a href="gouwuche.aspx"><font  class="STYLE1">购物车</font></a></strong></td>
                  <%} %>
                   <% if (Session["username"] != null){ %>
                <td align="center"><strong><a href="dx_detail.aspx"><font  class="STYLE1">系统推荐</font></a></strong></td>
                  <%}else { %>
                  <td align="center"><strong><a href="shangpinxinxilist.aspx"><font  class="STYLE1">最新商品</font></a></strong></td>
                  <%} %>
                  <% if (Session["username"] == null){ %>
                <td align="center"><strong><a href="userreg.aspx"><font  class="STYLE1">用户注册</font></a></strong></td>
                  <%} %>
                    <% if (Session["username"] == null){ %>
                <td align="center"><strong><a href="login.aspx"><font  class="STYLE1">后台</font></a></strong></td>
                   <%} %>   
              </tr>
            </table></td>
          </tr>
          <tr>
            <td width="1014" height="41" background="qtimages/1_01_03.gif"><TABLE width="80%" 
border=0 align="center" cellPadding=0 cellSpacing=0>
              <TBODY>
                <TR>
                  <TD width="3%" height="17" align=center vAlign=center class="h2">&nbsp;</TD>
                  <TD width="97%" align=right vAlign=bottom><marquee behavior=alternate width=100% scrollAmount=3 class="STYLE6">
                    欢迎登陆校园二手交易网站，希望能给你带来好心情，谢谢！
                  </MARQUEE></TD>
                </TR>
              </TBODY>
            </TABLE></td>
          </tr>
        </table>
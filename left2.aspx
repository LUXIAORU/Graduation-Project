<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left2.aspx.cs" Inherits="left2" %>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
<link rel="StyleSheet" href="dtree.css" type="text/css" />
	<script type="text/javascript" src="dtree.js"></script>

<link href="css_admin/admin_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/alogin_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/topleft_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/manage_menu.css" rel="stylesheet" type="text/css" />
<link href="css_admin/newdiv_window.css" rel="stylesheet" type="text/css" />
</head>
<body class="menu_body" >
<base target="frame_main" />
<div class="amanagemenu_div">
  <div class="Left_NavTop"></div>
  <span class="mmenu_title2">网站栏目</span>
  
  
  
  <div class="dtree">

	<script type="text/javascript">
		d = new dTree('d');

		d.add(0,-1,'');
        d.add(1, 0, 'authority', '', '个人资料管理 ', "", "", "", "", "", "", "", "open");
        <% if (Session["username"] != null && Session["issh"].ToString().Trim() == "是" && Session["issh2"].ToString().Trim() == "是") { %>
        d.add(2, 0, 'authority', '', '二手商品管理 ');
         <%} %>        
		d.add(3,0,'authority','','交易记录管理 ');
		d.add(4,0,'authority','','收藏记录管理 ');


        d.add(12, 1, 'authority', '', '个人资料管理 ', "", "", "yonghuzhuce_updt2.aspx");
        d.add(13, 1, 'authority', '', '修改密码 ', "", "", "mima_update.aspx");
         <% if (Session["username"] != null && Session["issh2"].ToString().Trim() != "是") {%>
        d.add(14,1,'authority','','申请卖家 ',"","","shenqingSeller.aspx");
        <%} %>

		d.add(12,2,'authority','','发布二手商品 ',"","","shangpinxinxi_add.aspx");
		d.add(13,2,'authority','','二手商品查看 ',"","","shangpinxinxi_list2.aspx");
				
        d.add(12, 3, 'authority', '', '购买记录查询 ', "", "", "goumaijilu_list2.aspx");

         <% if (Session["username"] != null && Session["issh"].ToString().Trim() == "是" && Session["issh2"].ToString().Trim() == "是"){ %>
		d.add(13,3,'authority','','出售记录查询 ',"","","goumaijilu_list3.aspx");
		 <%} %>
		d.add(14,4,'authority','','收藏记录查询 ',"","","shoucangjilu_list2.aspx");
	
		document.write(d);
		
	</script>

<%--</div>
  <span class="mmenu_title2">版权所有</span>
  <p style="padding-left:10px;">校园二手交易平台 <br />开发日期：<%=DateTime.Now.Date.ToShortDateString().Trim()%><br />联系电话：xxxxxxx</p>
</div>--%>

</BODY>
    
</html>

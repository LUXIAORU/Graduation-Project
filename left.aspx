<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>


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
		d.add(1,0,'authority','','系统用户管理 ',"","","","","","","","open");
		d.add(2,0,'authority','','校园新闻管理 ');
		d.add(3,0,'authority','','商品类别管理 ');
		d.add(4,0,'authority','','商品信息管理 ');
		d.add(6,0,'authority','','购买记录管理 ');
		
		
		
       d.add(5,0,'authority','','系统管理 ',"","","","","","","","open");
		
		d.add(12,1,'authority','','修改密码 ',"","","mod.aspx");
		d.add(13,1,'authority','','管理员添加 ',"","","edituser.aspx");
		d.add(15,1,'authority','','管理员查询 ',"","","listuser.aspx");
        d.add(14, 1, 'authority', '', '注册用户管理 ', "", "", "yonghuzhuce_list.aspx");
        d.add(16,1,'authority','','卖家用户管理 ',"","","selleryonghu_list.aspx");
		
		d.add(12,2,'authority','','校园新闻添加 ',"","","allgonggao_add.aspx?lb=校园新闻");
		d.add(13,2,'authority','','校园新闻查询 ',"","","allgonggao_list.aspx?lb=校园新闻");
		d.add(14,2,'authority','','交易须知添加 ',"","","allgonggao_add.aspx?lb=交易须知");
		d.add(15,2,'authority','','交易须知查询 ',"","","allgonggao_list.aspx?lb=交易须知");
		d.add(16,2,'authority','','常见问题添加 ',"","","allgonggao_add.aspx?lb=常见问题");
		d.add(17,2,'authority','','常见问题查询 ',"","","allgonggao_list.aspx?lb=常见问题");
				
		d.add(12,3,'authority','','商品类别添加 ',"","","shangpinleibie_add.aspx");
		d.add(13,3,'authority','','商品类别查询 ',"","","shangpinleibie_list.aspx");
		
	//	d.add(12,4,'authority','','商品信息添加 ',"","","shangpinxinxi_add.aspx");
		d.add(13,4,'authority','','二手商品查询 ',"","","shangpinxinxi_list.aspx");
		
		
        d.add(12, 6, 'authority', '', '购买记录查询 ', "", "", "goumaijilu_list.aspx");
        d.add(13,6,'authority','','统计购买记录 ',"","","tongji_list.aspx");
		
		d.add(12,5,'authority','','系统简介 ',"","","dx.aspx?lb=系统简介");
		d.add(13,5,'authority','','系统公告 ',"","","dx.aspx?lb=系统公告");
		d.add(14,5,'authority','','友情链接添加 ',"","","youqinglianjie_add.aspx");
		d.add(15,5,'authority','','友情链接查询 ',"","","youqinglianjie_list.aspx");
		document.write(d);
		
	</script>

</div>
  <span class="mmenu_title2">版权所有</span>
  <p style="padding-left:10px;">校园二手交易平台 <br />登录日期：<%=DateTime.Now.Date.ToShortDateString().Trim()%><br /></p>
</div>

</BODY>
    
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />


<title>校园二手交易平台 - 后台管理面板</title>

<link href="css_admin/admin_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/alogin_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/topleft_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/manage_menu.css" rel="stylesheet" type="text/css" />
<link href="css_admin/newdiv_window.css" rel="stylesheet" type="text/css" />

</head>




<frameset rows="121,*" framespacing="0" border="0" frameborder="0">
  <frame name="frame_top" src="top.aspx" scrolling="no" noresize="true" target="frame_main" />
  <frameset cols="179,*">
    <frame id="frame_left" name="frame_left" src="mygo.aspx" scrolling="auto" target="frame_main" />
      <%if (Session["cx"].ToString().Trim() == "超级管理员"){%>
      <frame id="frame_main" name="frame_main" src="tongji_list.aspx" scrolling="yes" target="frame_main" style=" margin-right:5px;" />
      <%} %>
    <frame id="frame_main" name="frame_main" src="sy.aspx" scrolling="yes" target="frame_main" style=" margin-right:5px;" />
  </frameset>
  <noframes>
  <body topmargin="0" leftmargin="0">
 
  </body>
  </noframes>
</frameset>

</html>
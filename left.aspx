<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>�ޱ���ҳ</title>
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
  <span class="mmenu_title2">��վ��Ŀ</span>
  
  
  
  <div class="dtree">

	<script type="text/javascript">
		d = new dTree('d');

		d.add(0,-1,'');
		d.add(1,0,'authority','','ϵͳ�û����� ',"","","","","","","","open");
		d.add(2,0,'authority','','У԰���Ź��� ');
		d.add(3,0,'authority','','��Ʒ������ ');
		d.add(4,0,'authority','','��Ʒ��Ϣ���� ');
		d.add(6,0,'authority','','�����¼���� ');
		
		
		
       d.add(5,0,'authority','','ϵͳ���� ',"","","","","","","","open");
		
		d.add(12,1,'authority','','�޸����� ',"","","mod.aspx");
		d.add(13,1,'authority','','����Ա��� ',"","","edituser.aspx");
		d.add(15,1,'authority','','����Ա��ѯ ',"","","listuser.aspx");
        d.add(14, 1, 'authority', '', 'ע���û����� ', "", "", "yonghuzhuce_list.aspx");
        d.add(16,1,'authority','','�����û����� ',"","","selleryonghu_list.aspx");
		
		d.add(12,2,'authority','','У԰������� ',"","","allgonggao_add.aspx?lb=У԰����");
		d.add(13,2,'authority','','У԰���Ų�ѯ ',"","","allgonggao_list.aspx?lb=У԰����");
		d.add(14,2,'authority','','������֪��� ',"","","allgonggao_add.aspx?lb=������֪");
		d.add(15,2,'authority','','������֪��ѯ ',"","","allgonggao_list.aspx?lb=������֪");
		d.add(16,2,'authority','','����������� ',"","","allgonggao_add.aspx?lb=��������");
		d.add(17,2,'authority','','���������ѯ ',"","","allgonggao_list.aspx?lb=��������");
				
		d.add(12,3,'authority','','��Ʒ������ ',"","","shangpinleibie_add.aspx");
		d.add(13,3,'authority','','��Ʒ����ѯ ',"","","shangpinleibie_list.aspx");
		
	//	d.add(12,4,'authority','','��Ʒ��Ϣ��� ',"","","shangpinxinxi_add.aspx");
		d.add(13,4,'authority','','������Ʒ��ѯ ',"","","shangpinxinxi_list.aspx");
		
		
        d.add(12, 6, 'authority', '', '�����¼��ѯ ', "", "", "goumaijilu_list.aspx");
        d.add(13,6,'authority','','ͳ�ƹ����¼ ',"","","tongji_list.aspx");
		
		d.add(12,5,'authority','','ϵͳ��� ',"","","dx.aspx?lb=ϵͳ���");
		d.add(13,5,'authority','','ϵͳ���� ',"","","dx.aspx?lb=ϵͳ����");
		d.add(14,5,'authority','','����������� ',"","","youqinglianjie_add.aspx");
		d.add(15,5,'authority','','�������Ӳ�ѯ ',"","","youqinglianjie_list.aspx");
		document.write(d);
		
	</script>

</div>
  <span class="mmenu_title2">��Ȩ����</span>
  <p style="padding-left:10px;">У԰���ֽ���ƽ̨ <br />��¼���ڣ�<%=DateTime.Now.Date.ToShortDateString().Trim()%><br /></p>
</div>

</BODY>
    
</html>

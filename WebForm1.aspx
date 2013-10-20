<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="lr1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Styles/Styles.css" rel="stylesheet" type="text/css" />
               <script language = "JavaScript">
                   var bigsize = "100"; //Размер большой картинки
                   var smallsize = "150"; //Размер маленькой картинки
                   function changeSizeImage(im) {
                       if (im.height == bigsize) im.height = smallsize;
                       else im.height = bigsize;
                   }
</script>
</head>


<body>
    <form id="form1" runat="server">
 <div id="menu_it">
    <div class="parent">
    <div class="child">
    <div style="height: 600px">
    <div style="text-align:center">

<a href="WebForm1.aspx">Домашняя</a><a href="WebForm2.aspx">Страница управления</a> <a href="#">Обновить</a>
 <div id="img">

                            <img height="100" onclick="changeSizeImage(this) "img src="img/12.gif" />
                            <img height="100" onclick="changeSizeImage(this) "img src="img/83.gif" />
                            <img height="100" onclick="changeSizeImage(this) "img src="img/407131499.jpg" />
                  
                  
   
 
 </div>
 </form>

</body>
</html>

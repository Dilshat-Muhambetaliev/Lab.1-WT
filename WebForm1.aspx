<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="lr1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Styles/Styles.css" rel="stylesheet" type="text/css" />
               <script language = "JavaScript">
                   var bigsize = "250"; //Размер большой картинки
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
<a href="WebForm1.aspx">Домашняя</a>
 <a href="WebForm2.aspx">Страница управления</a>
 <a href="#">Обновить</a>
 </div>
<div id="left"></div>
<div id="right"></div>
<div id="top"></div>
<div id="bottom"></div>
 </form>
 <div id="img">

                            <img height="150" onclick="changeSizeImage(this) "img src="img/407131499.jpg" />
                  
                  
   
 </div>
</body>
</html>

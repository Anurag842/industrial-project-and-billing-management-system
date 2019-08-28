
<body>
<script type="text/javascript" >
   	function preventBack()
   	{
   		window.history.forward();
   	}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
<jsp:include page="header2.jsp"/>
<h1>logged out</h1>
<a href="login">return to login</a>
 <jsp:include page="footer2.jsp"/>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>晟润业贸易（大连）有限公司</title>
  <link href="<%=request.getContextPath()%>/css/login.css" type="text/css" rel="stylesheet">
  <script src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>


  <script>
    function submit_form(obj) {
      $.ajax({
        cache: true,
        type: "POST",
        url:"verify",
        data:$('#login_form').serialize(),// 你的formid
        async: false,
        error: function(res) {
          alert("Connection error");
        },
        success: function(data) {
          if(data=="error")
          {alert("登录失败！");}
          else
          {
            var user_id=data.toString();
            window.location.href="http://localhost:8080/main_page/"+user_id;
          }
        }
      });
    }

  </script>
</head>
<body>


<div class="login">
  <div class="message">晟润业系统-用户登录</div>
  <div id="darkbannerwrap"></div>

  <form method="post" action="/verify" id="login_form">
    <input name="login_username" placeholder="用户名" required="" type="text">
    <hr class="hr15">
    <input name="login_password" placeholder="密码" required="" type="password">
    <hr class="hr15">
    <input value="登录" style="width:100%;" type="button" onclick="submit_form(this)">
    <hr class="hr20">
    <a href="/register">新用户注册</a>
  </form>


</div>

</body>
</html>
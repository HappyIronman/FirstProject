<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>晟润业系统-用户注册</title>
    <link href="<%=request.getContextPath()%>/css/register.css" type="text/css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/js/check.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>

    <script>
        function submit_form(obj) {
            $.ajax({
                cache: true,
                type: "POST",
                url:"submit",
                data:$('#register_form').serialize(),// 你的formid
                async: false,
                error: function(res) {
                    alert("Connection error");
                },
                success: function(data) {
                    if(data=="error")
                    {alert("注册失败！");}
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
<div class="register">
    <div class="message">用户注册</div>
    <div id="darkbannerwrap"></div>

    <form method="post" action="submit" id="register_form">
        <input id="username" name="username" placeholder="用户名" required="" type="text" onblur="isExists(this)">
        <hr class="hr15">
        <input id="password" name="password" placeholder="密码" required="" type="password">
        <hr class="hr15">
        <input id="re_password" name="re_password" placeholder="确认密码" required="" type="password">
        <hr class="hr15">
        <input id="dept" name="dept" placeholder="所属部门" required="" type="text">
        <hr class="hr15">
        <input type="button" value="注册" style="width:100%;" onclick="submit_form(this)"/>
        <hr class="hr20">
        <!-- 帮助 <a onClick="alert('请联系管理员')">忘记密码</a> -->
    </form>


</div>

</body>
</html>
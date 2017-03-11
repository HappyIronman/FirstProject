<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 3/6/2017
  Time: 4:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script>
        function setName(obj,type,selector) {
            var x=document.getElementById(type);
            x.name=document.getElementById(selector).value;
        }
    </script>
    <link href="<%=request.getContextPath()%>/css/table.css" type="text/css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/stockpile.css" type="text/css" rel="stylesheet">
</head>
<body>

<div class="mid_div">
    <h3>成品模具库存</h3>

    <div class="search_div">
        <p>库存检索</p>
        <form id="searchModel" action="/searchModel" method="post">
            <select  id="s_selector" onchange="setName(this,'s_type','s_selector')">
                <option value="default" selected="selected">请选择搜索项</option>
                <option value="id">按ID</option>
                <option value="name">按名称</option>
            </select>
            <input id="s_type" type="text"  placeholder="输入检索内容">
            <input type="submit">
        </form>
    </div>

    <br>
    <p>库存列表</p>
    <table class="bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>名称</th>
            <th>数量（万件）</th>
            <th>生产日期</th>
        </tr>
        </thead>
        <c:forEach items="${l_model}" var="model" varStatus="s" begin="0" end="${l_model.size()}">
            <tr>
                <td>
                    <div class="tt">
                        <p>${model.getId()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${model.getName()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${model.getNum()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${model.getPro_date()}</p>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

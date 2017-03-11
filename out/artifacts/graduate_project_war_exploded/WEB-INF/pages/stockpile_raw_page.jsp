<!--原材料信息页面代码-->
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
    <h3>原材料信息</h3>

    <div class="search_div">
        <p>信息检索</p>
        <form id="searchRaw" action="/searchRaw" method="post">
            <select  id="s_selector" onchange="setName(this,'s_type','s_selector')">
                <option value="default" selected="selected">请选择搜索项</option>
                <option value="id">按ID</option>
                <option value="name">按名称</option>
                <option value="provider">按生产商</option>
            </select>
            <input id="s_type" type="text"  placeholder="请输入检索内容">
            <input type="submit">
        </form>
    </div>

    <br>
    <p>信息列表</p>
    <table class="bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>名称</th>
            <th>数量（万件）</th>
            <th>生产商</th>
            <th>购买日期</th>
        </tr>
        </thead>
        <c:forEach items="${l_raw}" var="raw" varStatus="s" begin="0" end="${l_raw.size()}">
            <tr>
                <td>
                    <div class="tt">
                        <p>${raw.getId()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${raw.getName()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${raw.getNum()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${raw.getProvider()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${raw.getPur_date()}</p>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

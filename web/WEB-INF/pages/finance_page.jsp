<!-- 报表输出页面代码-->
<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 3/7/2017
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="<%=request.getContextPath()%>/css/table.css" type="text/css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/finance.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="main_div">
    <h3>财务总览</h3>
    <br>
    <table class="bordered">
        <thead>
        <tr>
            <th>ID流水号</th>
            <th>商品名称</th>
            <th>数量</th>
            <th>单价（元）</th>
            <th>交易日期</th>
            <th>交易方式</th>
        </tr>
        </thead>
        <c:forEach items="${l_finance}" var="finance" varStatus="s" begin="0" end="${l_finance.size()}">
            <tr>
                <td>
                    <div class="tt">
                        <p>${finance.getId()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${finance.getName()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${finance.getNum()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${finance.getPer_price()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${finance.getDate()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${finance.getMethod()}</p>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
    </table>
</div>
</body>
</html>

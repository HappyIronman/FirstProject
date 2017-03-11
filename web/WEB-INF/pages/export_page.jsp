<!--出口业务页面代码-->
<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 3/10/2017
  Time: 5:17 PM
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
    <link href="<%=request.getContextPath()%>/css/export.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="left_div">
    <div class="update_div">
        <p>更新客户信息</p>
        <form  id="updateCustomer" action="/updateCustomer" method="post">
            <input type="text" name="id" placeholder="请输入用户ID">
            <select  id="u_selector" onchange="setName(this,'u_type','u_selector')">
                <option value="default" selected="selected">请选择更改项</option>
                <option value="cname">客户姓名</option>
                <option value="tel">客户电话</option>
                <option value="company">客户公司名</option>
                <option value="address">客户地址</option>
            </select>
            <input id="u_type" type="text"  placeholder="请输入新内容">
            <input type="submit">
        </form>
    </div>

    <div class="delete_div">
        <p>删除客户</p>
        <form  id="deleteCustomer" action="/deleteCustomer" method="post">
            <input name="id" placeholder="请输入客户ID" type="text">
            <input type="submit">
        </form>
    </div>
</div>

<div class="mid_div">

    <div class="title" style="text-align: center">
        <h3>出口业务</h3>
    </div>

    <div class="search_div">
        <p>客户信息检索</p>
        <form id="searchCustomer" action="/searchCustomer" method="post">
            <select  id="s_selector" onchange="setName(this,'s_type','s_selector')">
                <option value="default" selected="selected">请选择检索项</option>
                <option value="id">客户ID</option>
                <option value="cname">客户姓名</option>
                <option value="tel">客户电话</option>
                <option value="company">客户公司名</option>
            </select>
            <input id="s_type" type="text"  placeholder="输入检索内容">
            <input type="submit">
        </form>
    </div>

    <p>客户信息</p>
    <table class="bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>姓名</th>
            <th>公司</th>
            <th>电话</th>
            <th>地址</th>
        </tr>
        </thead>

        <c:forEach items="${l_customer}" var="customer" varStatus="s" begin="0" end="${l_customer.size()}">
            <tr>
                <td>
                    <div class="tt">
                        <p>${customer.getId()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${customer.getCname()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${customer.getCompany()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${customer.getTel()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${customer.getAddress()}</p>
                    </div>
                </td>

            </tr>
        </c:forEach>
    </table>

</div>


<div class="right_div">
    <p>添加客户</p>
    <form id="addCustomer" action="/addCustomer" method="post">
        <input type="text" name="cname" placeholder="姓名">
        <input type="text" name="company" placeholder="公司">
        <input type="text" name="tel" placeholder="电话">
        <input type="text" name="address" placeholder="地址">
        <input type="submit">
    </form>


</div>

</body>
</html>

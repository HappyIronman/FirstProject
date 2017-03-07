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
    <link href="<%=request.getContextPath()%>/css/export.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="left_div">
    <div class="update_div">
        <p>更新客户信息</p>
        <form  id="updateCustomer" action="/updateCustomer" method="post">
            <input type="text" name="id" placeholder="id">
            <select  id="u_selector" onchange="setName(this,'u_type','u_selector')">
                <option value="default" selected="selected">请选择更改项</option>
                <option value="cname">NAME</option>
                <option value="tel">TEL</option>
                <option value="company">Company</option>
                <option value="address">ADDRESS</option>
            </select>
            <input id="u_type" type="text"  placeholder="WHAT?">
            <input type="submit">
        </form>
    </div>

    <div class="delete_div">
        <p>删除客户</p>
        <form  id="deleteCustomer" action="/deleteCustomer" method="post">
            <input name="id" placeholder="ID" type="text">
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
                <option value="default" selected="selected">请选择搜索项</option>
                <option value="id">ID</option>
                <option value="cname">NAME</option>
                <option value="tel">TEL</option>
                <option value="company">Company</option>
            </select>
            <input id="s_type" type="text"  placeholder="WHAT?">
            <input type="submit">
        </form>
    </div>

    <p>客户信息</p>
    <table class="bordered">
        <thead>
        <tr>
            <th>id</th>
            <th>name</th>
            <th>company</th>
            <th>tel</th>
            <th>address</th>
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
        <input type="text" name="cname" placeholder="name">
        <input type="text" name="company" placeholder="company">
        <input type="text" name="tel" placeholder="tel">
        <input type="text" name="address" placeholder="address">
        <input type="submit">
    </form>


</div>

</body>
</html>

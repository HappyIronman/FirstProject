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
    <link href="<%=request.getContextPath()%>/css/manufacture.css" type="text/css" rel="stylesheet">
</head>
<body>

<div class="left_div">
    <p>添加供应商</p>
    <form id="addProvider" action="/addProvider" method="post">
    <input type="text" name="cname" placeholder="名称">
    <input type="text" name="company" placeholder="公司">
    <input type="text" name="tel" placeholder="电话">
    <input type="text" name="address" placeholder="地址">
    <input type="text" name="fax" placeholder="传真">
    <input type="submit">
    </form>
</div>

<div class="mid_div">

    <div class="title" style="text-align: center">
        <h3>模具加工</h3>
    </div>

    <div class="search_div">
        <p>供应商信息检索</p>
        <form id="searchProvider" action="/searchProvider" method="post">
            <select  id="s_selector" onchange="setName(this,'s_type','s_selector')">
                <option value="default" selected="selected">请选择搜索项</option>
                <option value="id">按ID</option>
                <option value="cname">按名称</option>
                <option value="tel">按电话</option>
                <option value="company">按公司</option>
            </select>
            <input id="s_type" type="text"  placeholder="输入检索内容">
            <input type="submit">
        </form>
    </div>

    <p>供应商信息</p>
    <table class="bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>名称</th>
            <th>公司</th>
            <th>电话</th>
            <th>地址</th>
            <th>传真</th>
        </tr>
        </thead>

        <c:forEach items="${l_provider}" var="provider" varStatus="s" begin="0" end="${l_provider.size()}">
            <tr>
                <td>
                    <div class="tt">
                        <p>${provider.getId()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${provider.getCname()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${provider.getCompany()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${provider.getTel()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${provider.getAddress()}</p>
                    </div>
                </td>
                <td>
                    <div class="tt">
                        <p>${provider.getFax()}</p>
                    </div>
                </td>


            </tr>
        </c:forEach>
    </table>

</div>


<div class="right_div">

    <div class="update_div">
        <p>更新供应商信息</p>
        <form  id="updateProvider" action="/updateProvider" method="post">
            <input type="text" name="id" placeholder="请输入供应商ID">
            <select  id="u_selector" onchange="setName(this,'u_type','u_selector')">
                <option value="default" selected="selected">请选择更改项</option>
                <option value="cname">名称</option>
                <option value="tel">电话</option>
                <option value="company">公司</option>
                <option value="address">地址</option>
                <option value="fax">传真</option>
            </select>
            <input id="u_type" type="text"  placeholder="请输入新的值">
            <input type="submit">
        </form>
    </div>

    <div class="delete_div">
        <p>删除供应商</p>
        <form  id="deleteProvider" action="/deleteProvider" method="post">
         <input name="id" placeholder="请输入供应商ID" type="text">
         <input type="submit">
        </form>
    </div>

</div>

</body>
</html>

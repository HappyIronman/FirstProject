<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 3/6/2017
  Time: 4:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="<%=request.getContextPath()%>/css/main_page.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="top">
    <table>
        <tr>
            <td></td>
            <td><span>XXX贸易（大连）有限公司</span>
                <p><b>主营产品：</b> 精密模具 </p></td>
        </tr>
    </table>
</div>


<div class="menu">
    <p  class="bg_add" >
        <a href="/main_page/${user.getUser_id()}">首页</a>
        <a href="/manufacture" class="drop" id="cpzx">模具加工</a>
        <a href="/export">出口业务</a>
        <a href="/stockpile_raw">原材料信息</a>
        <a href="/stockpile_model" class="drop" id="jszx">成品模具库存</a>
        <a href="/output">财务总览</a>
        <a href="" class="nobor">联系我们</a>
    </p>
</div>




</div>  <div class="location">您好： ${user.getUsername()}</div>
<div class="box" style="margin:12px auto 0;">
    <div class="boxleft" style="border-bottom:1px solid #e6e6e6;">
        <script type="text/javascript">
            var intSkinID = "14";
            var intCompanyID = "545031";
        </script>
        <div class="boxlefttitle">
            <a href="javascript:void(0);" class="hot" onclick="jq('#clientClass').show();jq('#brandClass').hide();jq(this).addClass('hot').next().removeClass('hot');">产品分类</a><a href="javascript:void(0);" onclick="jq('#clientClass').hide();jq('#brandClass').show();jq(this).addClass('hot').prev().removeClass('hot');">品牌</a></div>
        <form method="post" action="">
            <div class="leftsearch">
                <input type="text" value="请输入产品关键词..."
                       onfocus="if(jq.trim(jq(this).val())=='请输入产品关键词...')jq(this).val('');" id="Keyword" name="Keyword">
                <button onclick=""></button></div>
        </form>
        <div class="leftlist"  id="clientClass">
            <div class="prolist" >
                <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" ><tr><td align="center" class="black4"><strong><br />暂无信息<br /><br /></strong></td></tr></table>
            </div>
        </div>
        <div class="prolist prolistp3" id="brandClass" style="display:none">
            <ul>
                <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" ><tr><td align="center" class="black4"><strong><br />暂无信息<br /><br /></strong></td></tr></table>
            </ul>
        </div>
        <h3 class="cominfo">公司信息</h3>
        <div class="leftcompany">
            <div class="companyAuth"><label style="cursor:pointer" title="晟润业贸易（大连）有限公司">晟润业贸易（大连）有限公司</label> </div>
            <dl>
                <dt>联<b></b>系<b></b>人：</dt>
                <dd>XXX</dd>
            </dl>
            <dl>
                <dt>地<em></em>址：</dt>
                <dd>XXX</dd>
            </dl>
            <dl>
                <dt>邮<em></em>编：</dt>
                <dd></dd>
            </dl>
            <dl>
                <dt>商<em></em>铺：</dt>
                <dd><a href = "" target="_blank" class="black">http://xxxxxx/</a></dd>
            </dl>
            <span><a href="" ref="nofollow" onclick="showInquiry();" >给他留言</a></span> </div>
    </div>
    <div class="boxright">
        <div class="boxright01">
            <div class="introtitle">
                <h3>技术文章</h3>
                <b>Technology</b><a  href="" ref="nofollow">更多文章</a></div>
            <div class="newsbox" style="border-bottom:0;">
                <dl class="newslist">
                    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" ><tr><td align="center" class="black4"><strong><br />暂无信息<br /><br /></strong></td></tr></table>
                </dl>
            </div>
            <div class="introtitle" style="border-top:0;">
                <h3>资料下载</h3>
                <b>Download</b><a href="" ref="nofollow">更多资料</a></div>
            <div class="newsbox">
                <dl class="newslist2">
                    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" ><tr><td align="center" class="black4"><strong><br />暂无信息<br /><br /></strong></td></tr></table>
                </dl>
            </div>
        </div>
    </div>
    <br class="clear" />
</div>
<br class="clear" />
</div>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-10-11
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${projectbiddings}" var="v">
<div class="col-xs-10">
    <i class="glyphicon glyphicon-edit"></i>&nbsp;
    <a href="#">${v.title} </a>
</div>
<div class="col-xs-2">
    <span class="#">${v.releasetime}</span>
</div>
</c:forEach>
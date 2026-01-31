<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.amazonclonewebapp.model.BoxItem" %>
<!DOCTYPE html>
<html>
<head>
    <title>Shop More</title>
</head>
<body>
    <h2>Explore More Categories</h2>
    <div class="box-row">
       <%
    List<BoxItem> list = (List<BoxItem>) request.getAttribute("items");
    if (list != null && !list.isEmpty()) {
        for (BoxItem bi : list) {
%>
    <div class="box-col">
        <h3><%= bi.getTitle() %></h3>
        <img src="images/<%= bi.getImageUrl() %>" width="150px">
        <p><a href="<%= bi.getLinkUrl() %>">Shop now</a></p>
    </div>
<%
        }
    } else {
%>
    <h3 style="text-align:center; color:red;">No items to display.</h3>
<%
    }
%>
       
    </div>
</body>
</html>

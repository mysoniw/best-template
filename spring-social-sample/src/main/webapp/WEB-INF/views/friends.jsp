<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Fiends</title>
	</head>
	<body>
	<ul>
		<li><a href="<c:url value="/signout" />">Sign Out</a></li>
	</ul>
	
	<c:if test="${providerId eq 'facebook' }">
	<h3>Your Facebook Friends</h3>
	<ul>
	<c:forEach items="${friends}" var="friend">
		<li><img src="http://graph.facebook.com/<c:out value="${friend.id}"/>/picture" align="middle"/><c:out value="${friend.name}"/></li>
	</c:forEach>
	</ul>
	</c:if>
	
	<c:if test="${providerId eq 'twitter' }">
	<h3>Your Twitter Friends</h3>
	<ul>
	<c:forEach items="${friends}" var="friend">
		<li><img src="<c:out value="${friend.profileImageUrl}"/>" align="middle"/><c:out value="${friend.screenName}"/></li>
	</c:forEach>
	</ul>
	</c:if>
	</body>
</html>
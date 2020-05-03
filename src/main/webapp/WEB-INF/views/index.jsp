<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="page-header">
		<h1 style="color: darkred; background-color: rgb(202, 238, 135)">Keep
			Notes</h1>
	</div>
	<form:form method="POST" action="saveNote">
		<div class="container">
			<table>
				<tr>
					<td><form:label path="noteId">Note_id</form:label></td>
					<td><form:input path="noteId" /></td>
				</tr>
				<tr>
					<td><form:label path="noteTitle">Note_title</form:label></td>
					<td><form:input path="noteTitle" /></td>
				</tr>
				<tr>
					<td><form:label path="noteContent">Note_content</form:label></td>
					<td><form:input path="noteContent" /></td>
				</tr>
				<tr>
					<td><form:label path="noteStatus">Status</form:label></td>
					<td><form:input path="noteStatus" /></td>
				</tr>

				<tr>
					<td><button class="btn btn-success my-2 my-sm-0" type="submit">Save
							Note</button></td>
				</tr>
			</table>
		</div>
	</form:form>

	<hr />
	<h2 style="color: blue;">List of Notes</h2>
	<table class="table table-bordered">
		<thead style="font-weight: bold">
			<tr class="danger">
				<th>Id</th>
				<th>Title</th>
				<th>Content</th>
				<th>Status</th>
				<th>createdOn</th>
				<th>Action</th>
			</tr>
		</thead>
		<c:forEach var="notee" items="${notes}">
			<tr class="success">
				<td>${notee.noteId}</td>
				<td>${notee.noteTitle}</td>
				<td>${notee.noteContent}</td>
				<td>${notee.noteStatus}</td>
				<td>${notee.createdAt}</td>
				<td><form action="deleteNote" method="post">
						<input type="hidden" id="noteId" name="noteId"
							value="${notee.noteId}" />
						<button type="submit">Delete</button>
					</form></td>
			</tr>
		</c:forEach>
	</table>

</body>

</html>
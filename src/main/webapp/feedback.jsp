<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
	var request;
	function postComment() {
		var comment = document.commentform.comment.value;
		var email = document.commentform.email.value;

		var url = "feedbackcon.jsp?comment=" + comment + "&email=" + email;

		if (window.XMLHttpRequest) {
			request = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			request = new ActiveXObject("Microsoft.XMLHTTP");
		}

		try {
			request.onreadystatechange = function() {
				if (request.readyState == 4) {
					var val = request.responseText;
					document.getElementById('mylocation').innerHTML = val;
				}
			}//end of function  
			request.open("GET", url, true);
			request.send();
		} catch (e) {
			alert("Unable to connect to server");
		}
	}
</script>
</head>
<body>
	<h1>Comment Form</h1>
	<form name="commentform">
		Enter Comment:<br />
		<textarea name="comment" style="width: 300px; height: 100px" required>  
</textarea>
		<br /> Enter Email:<br /> <input type="text" name="email" required /><br />
		<br /> <input type="button" value="Post Comment"
			onclick="postComment()">
	</form>

	<span id="mylocation"></span>
</body>
</html>
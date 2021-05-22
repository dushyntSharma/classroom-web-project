var button = document.getElementById("values-btn");
button.addEventListener("click", function() {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			console.log(this.responseText);
			var data = JSON.parse(this.responseText);
			renderHtml(data);
		}
	};
	xhr.open('GET', 'JsonExampleData', true);
	xhr.send();
});
function renderHtml(data) {

	let displayRow = ``;
	for (var i = 0; i < data.length; ++i) {

		displayRow += `<tr>
	<td>${data[i].name}</td>
	<td>${data[i].age}</td>
	<td>${data[i].address}</td>
	<td>${data[i].city}</td>
	<td>${data[i].state}</td>
	<td>${data[i].country}</td>
	<td>${data[i].pincode}</td>
	<td>${data[i].email}</td>
	<td>${data[i].username}</td>
	<td>${data[i].password}</td>
	</tr>`;

	}
	display.innerHTML = displayRow;

}

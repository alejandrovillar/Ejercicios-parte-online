var likes = [i];
var i = 0;

function cuentaLikes() {
	likes.push(i++);
	return document.getElementById('result').innerHTML = likes[i];
}
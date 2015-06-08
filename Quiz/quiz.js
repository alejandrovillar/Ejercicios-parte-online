var user = []
var responses = []

function question1() {
  var name = prompt('What is your name?')
  user.name = name
}
user.push(question1);
question1();

function question2() {

  var firstQuestion = prompt('Does null === 0 ? (Yes or No)')

// why do you need to convert the answer to lowercase?
  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false
  } else {
// what if the user writes something other than yes or no? 
// they will have to answer the question again
    alert("Please answer either Yes or No");
    return question2();
  }
  responses.push(firstQuestion); // add the true or false value to the responses array
}

question2();

function question3() {
  var js = prompt('What was the original name for JavaScript: Java, LiveScript, JavaLive, or ScriptyScript?');
  js = js.toLowerCase();
  switch (js) {
  	case'java':
  		js = false;
  		break;
  	case'livescript':
  		js = true;
  		break;
  	case'javalive':
  		js = false;
  		break;
  	case'scriptyscript':
  		js = false;
  		break;
  	default:
  	alert("Try again");
  	return question3();
    // your own answers
  }
  responses.push(js)
}

question3();

function question4() {

  var fourthQuestion = prompt('What is the name of the best teacher in the world? (Raul or Quino)')

  if (fourthQuestion.toLowerCase() === 'raul') {
    fourthQuestion = true
  } else if (fourthQuestion.toLowerCase() === 'quino') {
    fourthQuestion = false
  } else {

    alert("Please answer Raul or Quino");
    return question4();
  }
  responses.push(fourthQuestion);
}

question4();

function question5() {
  var fifthquestion = prompt('What is the best city in the world? Lisboa, Barcelona, Oporto, or Madrid?');
  fifthquestion = fifthquestion.toLowerCase();
  switch (fifthquestion) {
  	case'lisboa':
  		fifthquestion = false;
  		break;
  	case'barcelona':
  		fifthquestion = false;
  		break;
  	case'oporto':
  		fifthquestion = false;
  		break;
  	case'madrid':
  		fifthquestion = true;
  		break;
  	default:
  	alert("Try again");
  	return question5();
  }
  responses.push(fifthquestion)
}

question5();

function evaluate(responses) {
var right = 0
var wrong = 0
	for (var i = 0; i < responses.length; i ++) {
		if(responses[i] === true){
			right += 1
		}else{
			wrong += 1
		}
	}
user.right = right
user.wrong = wrong 
}

function showResults() {

alert(user.name + ' CORRECT ANSWERS = ' + user.right + ' FAIL ANSWERS = ' + user.wrong );

}
evaluate(responses);
showResults();

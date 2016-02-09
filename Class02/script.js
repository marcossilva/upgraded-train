function calculate(){
	var total = 0;
	var message = "";
	qt1=parseFloat(document.getElementById('qt1').value, 10);
	qt2=parseFloat(document.getElementById('qt2').value, 10);
	if (document.getElementById('op1').checked){
			total = qt1+qt2;
			message = qt1 + " + " + qt2 + " = " + total;
	} else if (document.getElementById('op2').checked){
		total = qt1-qt2;
		message = qt1 + " - " + qt2 + " = " + total;
	} else if (document.getElementById('op3').checked){
		total = qt1*qt2;
		message = qt1 + " * " + qt2 + " = " + total;
	} else if (document.getElementById('op4').checked){
		if (qt2 !== 0){
			total = qt1/qt2;
			message = qt1 + " / " + qt2 + " = " + total;
		} else {
			message = "You cannot divide by 0!!";
		}
	} else {
		message = "There was an error. Try to reload the page or try again later...";
	}
	$("p").append("<br>" + message + "<br>");
}

function setStartDate(){
	var time;
	time = new Date();
	alert("Hello!! Right now is: \n" + time);
}
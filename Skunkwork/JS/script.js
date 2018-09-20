/*var a=50;
a++; 
var b= 5;
var c= 10000;
//var name =  prompt ("What is \nyour name");
var message= "Hello ";
//alert(message + name);

if (a < b ) {
	//alert ("Yes a is less than b");
}

if (a == b ) {
	//alert ("Yes a is equal to b");
}

if (a > b ) {
	//alert ("Yes a is greater to b");
}

var balance = -5000;

if (balance >= 0) {
	alert( "the balace is positive");
	if ( balance > 10000) {
//		alert ("The balance is large!")
	}
} else {
//	alert ("the balance is negetive");
}

var grade = "Premium";

if ( grade === "Regular") {
	//alert ("It's $3.15");
}

else if (grade === "Premium") {
	//alert ("It's $3.45");
}

else if (grade === "Diesel") {
	//alert ("It's 3.48");
}

var grade = "Premium";

switch ( grade ) {
	case "Regular" :
		alert ("It's $3.15");
		break;
	case "Premium":
		alert ("It's $3.45");
		break;
	case "Diesel":
		alert ("It's $3.75");
		break;
	default:
		alert ("that is not a valid grade");
}*/


/*function myFunction () {
	var a = 5;
	var b = 10;
	var c = 20;
	var d = a + b+ c;
	alert ("The value of d is: " + d );
}

myFunction();*/

/*function addTwoNumbers (a,b) {
	var result = a + b;
	alert (result);
}

addTwoNumbers(10,20);*/

/*function addTwoNumbers (a,b) {
	var result = a + b;
	return result;
}

var x = addTwoNumbers(10,20);
alert (x);*/

//loops/interation

/*var a = 1;

while ( a < 10 ) {
	alert (a);
	a++;
}*/
/*
var amount = 0;
var i = 0;
while (i < 10) {
	amount  = amount + 100;
	i++;
}

alert ("The value is " + amount);*/

/*var amount = 0
for (var i=1;i <=10;i++) {
	amount  = amount + 100;
	alert (i);
}

alert ("The value is " + amount);*/

/*//concatination
var foo = "5";
var bar = "5";
alert (foo + bar);

var foo = 5;
var bar = 5;
alert (foo + bar);*/

// var phrase = "This is a simple phrase.";
/*alert (phrase.toUpperCase() );

var str1 = "Hello";
var str2 = "hello";

if ( str1.toLowerCase() == str2.toLowerCase() )
	{ 
		alert ("Yes, equal"); 
}

var position = phrase.indexOf("simple")
alert (position);

var myRE = /hello/;
var myString = "Does this sentince have the world hell in";
if (myRE.test(myString)) {
	alert ("Yes");
}
else if (!myRE.test(myString)) {
	alert ("No");
}

var myArray = [50,150,250,500,500];
var total = 0;
for (var i = 0 ; i < myArray.length; i++)
{
	alert(myArray[i]);
	total = total + myArray[i];
}
alert (total);*/


var name = "Himanshu";
myArray = [];
//namelength = name.length;
//alert (namelength);
for (i=0; i < name.length; i++)
{
//alert (i);

myArray.push(name.charAt(i))
alert (myArray[i]);
}

function identity (a) {
return a;
}
var a = 1;
var b = 1;
function add (a,b) {
	var sum = a + b;
	return sum;
}

function mul (a,b) {
	var mutiply = a * b;
	return mutiple;
}

function indentifyf (a) {
	return function () {
		return a;
	}
}

function myFunction(a, b) {
  console.log(a + b);
}
myFunction(1, 2);
//release0
  //Write a function that takes an array of words or phrases and returns the longest word or phrase in the array

  //define a function and pass it an array as an argument
  //create two variables
    //one starting variable equal to 0 for the initial length
	//another variable for longest string
  //iterate through each index in the array (in the example we have strings) using a loop.
	//IF the string is greater than the initial length then update that length value
	//as the iteration continues the longest value will be the index that has the longest updated length under the conditonal statement
  //return longest value

var word_arr = ["dog", "i", "that", "happy", "be"];
//console.log(arr);


function longest_string(arr) {
  var len = 0;
  var longest;
  for(var i=0; i < arr.length; i++) {
    if(arr[i].length > len) {
      var len = arr[i].length;
      longest = arr[i];
    }	
  }
return longest
}


//release1
  //Write a function that takes two objects and checks to see if the objects share at least one key-value pair.
  //If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true, because at least one key-value pair matches between the two objects. If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false.

  //define a function and pass in two (key-value) objects as arguments
  //iterate through each of the two data structures
    //start with one for loop to iterate through the first object
    //then do a nested for loop to iterate through the second object
  //IF one key value pair matches another key value pair
    //return true
  //ELSE return false
  //print result

var pairs_1 = {name: "Steven", age: 54}
var pairs_2 = {name: "Tamir", age: 54}
var pairs_3 = {name: "Alex", age: 55}


function find_match(obj_1,obj_2) {
  for (var key in obj_1) {
	for (key in obj_2) {
	  if (obj_1[key] == obj_2[key]) {
		// debug - console.log(obj_1[key])
		return true;
	  } else {
		// debug - console.log(obj_2[key])
		return false;
	  }
	}
  }
}

//release 2
  //Write a function that takes an integer for length, and builds and returns an array of strings of the given length. 

  //create a function that takes an integer for an argument
  //create an empty array
  //crate an empty string variable to set equal to after the word is generated
  //create a loop so we can loop the number of (arg) times
    //use a function 'MathRandom'in Javascript to generate a random number value
	//use a function 'toString' to convert that random number to a string
	//use a function to replace each generated integer character with a letter in the alphabet in the string '.replace'
	//use a function that can return length of string up to 10 characters
  //push value to an array each time
  //add driver code
    //create loop to loop 10 times
	  //set new array variable equal return function value
	  //print that variable
	  //call longest_string function on that variable and print
	
  
function random_arr(int) {
  var ran_arr = [];
  var text = "";
  for(var i=0; i < int; i++) {
    text = Math.random().toString(36).replace(/[^a-z]+/g, '').substr(12);
    ran_arr.push(text);
  }
  return ran_arr;
}


//calling release 0
console.log(longest_string(word_arr))

//calling release 1
  //returns true
  console.log(find_match(pairs_1,pairs_2))
  //returns false
  console.log(find_match(pairs_1,pairs_3))
  
//calling release 2
  for (i = 0; i < 10; i++) { 
    var new_arr = random_arr(3);
    console.log(new_arr);
    console.log(longest_string(new_arr));
 }
 
 //This repl seems to work: https://repl.it/Dc4L/2
 //However, issues with same results in node
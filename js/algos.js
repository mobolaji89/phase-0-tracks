//release0
  //Write a function that takes an array of words or phrases and returns the longest word or phrase in the array

  //define a function and pass it an array as an argument
  //iterate through each index in the array (in the example we have strings)
  //sort through each index, by swapping indexes based on string length
  //move the largest string to one end of the array
  //print that string by accessing the index value

var word_arr = ["dog", "i", "that", "happy", "be"];
//console.log(arr);

function longest_string(arr) {
  //for (var n=0; n < arr.length; n++) {
    for(var i=0; i < arr.length; i++) {
	  if (arr[i].length < arr[i+1].length) {
		var x = arr[i+1];
		arr[i+1] = arr[i];
		arr[i] = x;
	  }
	}
  //}
//return arr[0];
return arr
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
		return true;
	  } else {
		return false;
	  }
	}
  }
}

//release 2
  //Write a function that takes an integer for length, and builds and returns an array of strings of the given length. 

  //create a function that takes an integer for an argument
  //create an empty array
  //create a loop so we can loop the number of (arg) times
    //use a function in Javascript to generate a word
	//push that random word to the array
  //when loop is print the updated arr
  
/*function(int) {
  var ran_arr = [];
  i = 0
  while (i < int) {
    	
  i++
  } 
}*/
  

//calling release 1
  //returns true
  console.log(find_match(pairs_1,pairs_2))
  //returns false
  console.log(find_match(pairs_1,pairs_3))

//calling release 0
console.log(longest_string(word_arr))
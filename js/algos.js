//release0 - write a function that takes an array of words or phrases and returns the longest word or phrase in the array

//define a function and pass it an array as an argument
//iterate through each index in the array (in the example we have strings)
//sort through each index, by swapping indexes based on string length
//move the largest string to one end of the array
//print that string by accessing the index value

var word_arr = ["abc", "a", "abcd", "abcde", "ab"];
//console.log(arr);

function longest_string(arr) {
  for (var n=0; n < arr.length; n++) {
    for(var i=0; i < arr.length; i++) {
	  if (arr[i] < arr[i+1]) {
		var x = arr[i+1];
		arr[i+1] = arr[i];
		arr[i] = x;
	  }
	}
  }
return arr[0];
}

//write a function that takes two objects and checks to see if the objects share at least one key-value pair.
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
	for (var key in obj_2) {
	  if (obj_1[key] == obj_2[key]) {
		return true
	  } else {
		return false
	  }
	}
  }
}

//calling release 1
  //returns true
  console.log(find_match(pairs_1,pairs_2))
  //returns false
  //console.log(find_match(pairs_1,pairs_3))

//calling release 0
console.log(longest_string(word_arr))
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

console.log(longest_string(word_arr))
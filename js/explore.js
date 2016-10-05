//Chipmunks 2016
//create reverse function that takes a string passed in as an argument
  //the function will create a new string, and insert the index values (characters) of the old string in reverse order
//set variable for empty string (this will be reverse string)
//use a loop, to iterate through all of the indexes of the string (up to the length of the string minus one, because 4th index will be 5th letter)
//loop downward using the '--' operator and update the empty string with the last index of the first string, and so on.
//return the reversed string
//print word by printing the function and passing it a word.

function reverse(string) {
  var x = '';
  for (var i = string.length - 1; i >= 0; i--)
    x += string[i];
  return x;
}

console.log(reverse('hello'));



/*Coyotes 2016
//create reverse function that takes a string passed in as an argument
//the function will create a new string, and somehow insert the index values of the old string in reverse order
//use a loop, to iterate through all of the indexes of the string
//I likely will want to loop through the length of the word
//I feel the easiest method would be to loop downward using the '--' operator and print the last index first, and so on.
//print word after loop has finished iterating
//I'm sure this is one way, another method could be to create a sorting function.


function reverse(string) {
  var x = '';
  for (var i = string.length - 1; i >= 0; i--)
    x += string[i];
  return x;
}

if (1 == 1){
console.log(reverse('hello'));
}
*/
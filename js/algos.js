
//create a variable, set to zero. for each word in the array, identify the length of the string. if the length of the string is greater than 0, the variable will become set to the number of the length of the string.  it will then compare to the word in the following index.  if it is less than the length of the string in that index, its value will become the length of that index.  else, it will remain the same.  until the length of the array is complete. input is an array, output is the longest word in the array.

function longestWord(array) {
  var longest = array[0];
  for (i = 0 ; i < array.length; i++) {
    if (array [i].length > longest.length) {
      longest = array[i];
    }
  }
  return longest;
}
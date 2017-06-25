
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

//write a function that takes two objects and checks to see if the objects share at least one key value pair
//for each key in the first hash - compare.
//if the key in the first hash is equal to the key in teh second hash, compare the values of these equal keys. if the values are equal return true.  else, return false.
//input is two objects, output is a boolean value.

function compare(object1, object2) {
 for (var key1 in object1) {
   for (var key2 in object2) {
     if (key1 == key2) {
       if (object1[key1] == object2[key2])
        {
         return true;
       }
     }
   }
 }
  return false;
}
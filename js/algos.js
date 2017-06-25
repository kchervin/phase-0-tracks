
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
       if (object1[key1] == object2[key2]) {
         return true;
       }
      }
     }
    }
  return false;
}

//create a function  that takes an integer (n) and creates an array of (n) words.  so while i < n, create new strings randomly selected from the alphabet and push them into an array.
//to create new string, counter is set to zero,
 // while counter is less than randomly selected number, count up from zero to create the length of the new string.
 //Randomly select letters from the alphabet by randomly selecting number of index of letter.
 //store strings of random lengths and random letters in new array.
 //return the new array.
 //input willl be an integer, output is an array.

function createNew(n) {
  var newWords = [];
    for (var i = 0; i < n; i++) {
      var alphabet = 'abcdefghijklmnopqrstuvwxyz'
      var newString = '';

    for (var y = 0; y < Math.random() * 10; y++) {
      newString += alphabet.charAt(Math.floor(Math.random( ) * 26));
    }
  newWords.push(newString);
    }
  return newWords;
}

//driver code:

var gerbals = ['samantha', 'sam', 'sammy', 'samson']
var puppies = ['ted', 'teddy', 'theodore'];
var kittens = ["Buster", "Princess", "Minxy"];
console.log(longestWord (kittens));
console.log(longestWord (puppies));
console.log(longestWord (gerbals));

console.log(compare({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(compare({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
console.log(compare({animal: "Dog", legs: 4}, {animal: "Cat", legs: 3}));
console.log(createNew(3));
console.log(createNew(4));
console.log(createNew(5));

for (var x=0; x<10; x++) {
console.log(longestWord(createNew(3)));
}

//set counter to 0.  ten times - create new arrays of length determined by parameter.  in new array, store words of vary lengths and letters. then, for each array, determine the longest word and print. input will be a number, output will be the longest word of an array.
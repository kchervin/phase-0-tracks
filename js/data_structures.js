var colors = ['blue', 'pink', 'black', 'red'];
var names = ['joe', 'bob', 'ryan', 'jack'];
colors.push('green');
names.push('evan');

console.log(colors);
console.log(names);

var horse = {};

for(var i = 0; i < colors.length; i++) {
  horse[names[i]] = colors[i];
}

console.log(horse);

//Horses are great, but times are a-changin', and we need to add an option for faster transportation that we can create with an assembly line. At the bottom of your data_structures.js file, write a constructor function for a car. Give it a few different properties of various data types, including at least one function. Demonstrate that your function works by creating a few cars with it.

function Car(make, model, year) {
  this.make = make;
  this.model = model;
  this.year = year;

  this.hum = function() {console.log('hum!'); };
}

var new_car = new Car('jeep', 'cherokee', 2005);
console.log(new_car);
new_car.hum();
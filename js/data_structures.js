//Chipmunks 2016
var colors = ["blue", "yellow", "orange", "purple"];
var names = ["Ed","Seabiscuit","Black Beauty", "Beauty"];

colors.push("gold");
names.push("Simon");

console.log(colors);
console.log(names);

barn = {}

for (var i = 0 ; i < colors.length; i++) {
  barn[names[i]] = colors[i];
}

console.log(barn);


function Car(year,make,color,awd) {
  console.log("Our new car:", this);
  this.year = year;
  this.make = make;
  this.color = color;
  this.awd = awd;
  this.rev = function() { console.log("Vrooooom!"); };
  console.log("Car Initialization Complete");
}

var newCar = new Car(1989,"Ford","red",true);
console.log(newCar);
newCar.rev();




//Coyotes 2016
/*
var colors = ['blue','grean','red', 'orange'];
var horses = ['sparkle', 'billy', 'lacy', 'jack'];
colors.push('black');
horses.push('blondy');

function car(color,year,brand,model) {
	this.color = color;
	this.year = year;
	this.brand = brand;
	this.model = model;
}
var cars = [];
cars.push(new car('orange',1931, 'ford', 'T' ));
cars.push(new car('red',2001, 'ford', 'escape' ));
cars.push(new car('green',2015, 'toyota', 'corola' ));
cars.push(new car('silver',2014, 'tesla', 'Model S' ));


for (var i=0; i < cars.length; i++) {
	console.log(cars[i].color +" "+ cars[i].year +" "+ cars[i].brand +" "+ cars[i].model)
}
*/
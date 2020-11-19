// let name = "Aman Banduni";
// let age = 23;
// let email = "abanduni.5@gmai.com";


// // courses = new Array ();

// courses = ["Pyhton", "Machine Learning", "Web Development", "C++"];
//             //  0                1                 2             3

// document.getElementById('p1').innerHTML = courses[2];
// document.getElementById('p2').innerHTML = courses[0];
// document.getElementById('p3').innerHTML = "Length of array : " + courses.length;
// document.getElementById('p4').innerHTML = courses[(courses.length)-1];

var car = {
    name: "Mini Cooper",
    color: "Black",
    speed: 200,
    start: function() {
        return "Car has been started";
    }
}

// var x= car.name + " " + car.color + " " + car.speed ;
var x= car.start();

document.getElementById('p1').innerHTML = x;
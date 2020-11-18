// Syntax of Functions:

// Create a function:
// function FunctionName(p1,p2){
//     statement 1;
//     statement 2;
//     statement 3;
//     statement 4;
// }

// invoke a function:
// FuncitonName(a,b);

function myfunc(){
    var name = "Aman Banduni"
    document.getElementById('func1').innerHTML = name;
}

myfunc();

function changesize(){
    var x=document.getElementById('func1').style.fontSize;
    if(x == "3em"){
        document.getElementById('func1').style.fontSize = "1em";
    }
    else{
        document.getElementById('func1').style.fontSize = "3em";
    }
}

function increasesize(param,size){
    document.getElementById(param).style.fontSize= size;
}

function decreasesize(){
    document.getElementById('func1').style.fontSize="1em";
}

function add(a,b){
    return a+b;
}

s=add(10,20);
document.getElementById('sum').innerHTML = s;
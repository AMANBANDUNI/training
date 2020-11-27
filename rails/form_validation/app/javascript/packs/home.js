
document.addEventListener("DOMContentLoaded",() => {


const btn = document.querySelector('#btn');
btn.addEventListener('click',()=>{
    let alrt = myfunc()
    alert (alrt)
})

let num = document.querySelector('#no');
num.addEventListener('keyup',()=>{
    let max = document.getElementById("no").maxLength;
    let ti = document.getElementById("no").tabIndex;
    let value = document.getElementById("no").value;
    tab_index(max,ti,value);
})

let dob = document.querySelectorAll('.dateofbirth');
dob[0].addEventListener('keyup',()=>{
    let max = document.getElementById("mm").maxLength;
    let ti = document.getElementById("mm").tabIndex;
    let value = document.getElementById("mm").value;
    tab_index(max,ti,value);
})
dob[1].addEventListener('keyup',()=>{
    let max = document.getElementById("dd").maxLength;
    let ti = document.getElementById("dd").tabIndex;
    let value = document.getElementById("dd").value;
    tab_index(max,ti,value);
})
dob[2].addEventListener('keyup',()=>{
    let max = document.getElementById("yy").maxLength;
    let ti = document.getElementById("yy").tabIndex;
    let value = document.getElementById("yy").value;
    tab_index(max,ti,value);
})


// var name = document.querySelectorAll('.name');
// name[0].addEventListener('keypress',()=>{
//     onlychr();
// })
// name[1].addEventListener('keypress',onlychr)


function myfunc(){
    let fname = document.myform.fname.value;
    let lname = document.myform.lname.value;
    let email = document.myform.email.value;
    let pwd = document.myform.password.value;
    let ph = document.myform.number.value;
    // let dob = document.myform.dateofbirth.value;
    let month = parseInt(document.getElementById("mm").value);
    let date = parseInt(document.getElementById("dd").value);
    let year = parseInt(document.getElementById("yy").value);
    let rid = document.myform.reg_id.value;
    console.log(fname+" "+lname+" "+email+" "+pwd+" "+ph+" "+rid+" "+month+" "+date+" "+year);
    console.log(typeof(fname)+" "+typeof(lname)+" "+typeof(email)+" "+typeof(pwd)+" "+typeof(ph)+" "+typeof(rid)+" "+typeof(month));

    if (fname !="" && lname !=""){
        if (fname.length<3 || fname.length>10 || lname.length<3 || lname.length>10){
            return   ("min 3 length , max 10 length");
        }
        else{
            fullname=fname+lname;
            for (i=0;i<fullname.length;i++){
                chr=fullname.charCodeAt(i);
                if (chr>=65 && chr<=90 || chr>=97 && chr<=122){

                }
                else{
                    return "Invalid name!";
                }
            }
        }
    }
    else {
        return   ("Enter your first and last name");
    }
    if (email!=""){
        let mailformat = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        if(email.match(mailformat)){

        }
        else{
            return "Invalid mail id!";
        }
    }
    else{
        return ("Enter your mail id!");
    }
    if (pwd !=""){
        if (pwd.length>5 && pwd.length <17){
            let pwdformat = /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{6,}$/;
            if (pwd.match(pwdformat)){

            }
            else{
                return ("Invalid Password!");
            }
        }
        else {
            return  ("password length should be in between 6 to 16");
        }
    }
    else {
        return  ("enter password!");
    }
    if (ph !=""){
        if (ph.length!=10 ){
            return  ("enter correct 10 digit number.");
        }
        else{
            for (i=0;i<ph.length;i++){
                if (ph.charCodeAt(i)>=48 && ph.charCodeAt(i)<=57){

                }
                else{
                    return "Invalid phone number!";
                }
            }
        }
    }
    else {
        return   ("Enter your number.");
    }
    if (month !="" && date!="" && year!=""){
        if (month>=1 && month<=12){
            if (month==1||month==3||month==5||month==7||month==8||month==10||month==12){
                if (date>0&& date <=31){

                }
                else{
                    return "Invalid Date Entered!";
                }
            }
            else if (month==4||month==6||month==9||month==11){
                if (date>0 && date <=30){

                }else{
                    return "Invalid date entered!";
                }
            }
            else{
                if (date>0 && date<=28){

                }
                else{
                    return "Invalid date!";
                }
            }
        }
        else{
            return "Invalid Month entered!";
        }
        if (year<=2020 && year>=1900){
        }
        else{
            return "Invalid year entered!";
        }
    }
    else{
        return "Enter complete date of birth!";
    }
    let y = new Date;
    let current_year =y.getFullYear();
    let current_month= y.getMonth()+1;
    let current_date=y.getDate();
    console.log("current m= "+current_month+"current d= "+ current_date+ "current y= "+current_year);
    if ((current_year-year)<18){
        return "you are not 18 +";
    }
    else if((current_year-year)==18){
        if (month>=current_month){
            if(month>current_month){
                return "you are under 18!!";
            }
            else if(date>current_date){
                return "You are under 18!";
            }
            else{
            }
        }
    }
    else{}
    if (rid!=""){
        let rid_format= /^[A-Z][A-Za-z0-9_-]{5,15}$/;
        if (rid.match(rid_format)){

        }
        else{
            return "Invalid Registration Id!";
        }
    }
    else{
        return "Enter your Registration Id!";
    }
    {
        return true;
    }
}


function tab_index(mx,tai,val){
    // console.log(event.key);
    // console.log(event.keyCode);
    // console.log(mx);
    // console.log(tai);
    // console.log(val.length);
    if (val.length == mx ){
        // console.log(event);
        console.log(val.length);
        next=tai;
        console.log(mx);
        console.log(next);

        if (next<=document.forms[0].elements.length){
            document.forms[0].elements[next].focus();
        }
    }
}

// function onlychr(evnt){
//     console.log(event);
//     console.log(event.key);
//     console.log(event.keyCode);
//     let charCde = event.keyCode;
//     // console.log(charCde);
//     // let charcode = evnt.key;
//     // console.log(charcode);
//     if (charCde>=65 && charCde<=90 || charCde>=97 && charCde<=122 || charCde==8){
//         document.querySelector.input=key;
//     }
//     else{
//         document.querySelector.input="";
//     }
// }


// function onlynum(){
//     let charcode = event.keyCode;
//     if(charcode>=48 && charcode<=57 || charcode==8){
//         return true;
//     }
//     else{
//         return false;
//     }
// }

})
function myfunc(){
    var fname = document.myform.fname.value;
    var lname = document.myform.lname.value;
    var email = document.myform.email.value;
    var pwd = document.myform.password.value;
    var ph = document.myform.number.value;
    var dob = document.myform.dateofbirth.value;
    var rid = document.myform.reg_id.value;
    console.log(fname + " " + lname+ " " +email+ " " +pwd+ " " +ph+ " " +dob+ " " +rid);
    console.log(typeof(fname) + " " + typeof(lname)+ " " +typeof(email)+ " " +typeof(pwd)+ " " +typeof(ph)+ " " +typeof(dob)+ " " +typeof(rid));

    if (fname !="" && lname !=""){
        if (fname.length<3 || fname.length>10 || lname.length<3 || lname.length>10){
            return   ("min 3 length , max 10 length");
        }
    }
    else {
        return   ("Enter your first and last name");
    }
    if (email!=""){
        var mailformat = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
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
            var pwdformat = /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{6,}$/;
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
    }
    else {
        return   ("Enter your number.");
    }
    {
        return true;
    }
}
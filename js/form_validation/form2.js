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

    ret=true;
    if (fname !="" && lname !=""){
        if (fname.length<3 || fname.length>10 || lname.length<3 || lname.length>10){
            ret=false;
            return ret;
            //alert("min 3 length , max 10 length");
        }
        else{
            ret=true;
        }
    }
    else{
        ret=false;
        return ret;
        alert("Enter your first and last name");
    }
    if (pwd!=""){
        if (pwd.length>=6 && pwd.length <=16){
        }
        else{
            ret=false;
            return ret;
            alert("password length should be in between 6 to 16");
        }
    }
    else{
        ret=false;
        return ret;
        alert("enter password!");
    }
    if (ph !=""){
        if (ph.length!=10 ){
            ret = false;
            return ret;
            alert("enter correct 10 digit number.");
        }
    }
    else{
        ret=false;
        return ret;
        alert("Enter your number.");
    }
    console.log(ret);
    console.log(ret);
    if (ret==true){
        return ("True.... ");
    }
}
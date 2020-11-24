var mnth_obj=[
    {m:01, d:31}, 
    {m:02, d:28}, 
    {m:03, d:31}, 
    {m:04, d:30}, 
    {m:05, d:31}, 
    {m:06, d:30}, 
    {m:07, d:31}, 
    {m:08, d:31}, 
    {m:09, d:30}, 
    {m:10, d:31}, 
    {m:11, d:30}, 
    {m:12, d:31}, 
];
function myfunc(){
    var fname = document.myform.fname.value;
    var lname = document.myform.lname.value;
    var email = document.myform.email.value;
    var pwd = document.myform.password.value;
    var ph = document.myform.number.value;
    // var dob = document.myform.dateofbirth.value;
    var month = parseInt(document.getElementById("mm").value);
    var date = parseInt(document.getElementById("dd").value);
    var year = parseInt(document.getElementById("yy").value);
    var rid = document.myform.reg_id.value;
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
    var y = new Date;
    var current_year =y.getFullYear();
    if ((current_year-year)<18){
        return "you are not 18 +";
    }
    else{

    }
    if (rid!=""){
        var rid_format= /^[A-Z][A-Za-z0-9_-]{5,15}$/;
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
function tab_index(elemnt,content){
    if (content.length == elemnt.maxLength ){
        console.log(content);
        next=elemnt.tabIndex;
        if (next<=document.forms[0].elements.length){
            document.forms[0].elements[next].focus();
        }
    }
}
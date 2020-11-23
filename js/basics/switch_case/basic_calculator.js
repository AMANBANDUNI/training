function myfunc(ch){
    var res;
    var num1 = parseInt( document.forms.myform.num1.value);
    var num2 = parseInt( document.myform.num2.value);
    //console.log(typeof(num1));
    //console.log(typeof(num2));
    switch (ch)
    {
        case "add":
            res = num1+num2;
            console.log(res);
            break;
        case "sub":
            res = num1-num2;
            console.log(res);
            break;
        case "mul":
            res = num1*num2;
            console.log(res);
            break;
        case "div":
            res = num1/num2;
            break;
        case "rem":
            res = num1%num2;
            break;
        case "concat":
            //num1 = num1.toString();
            //num2 = num2.toString();
            res =num1.toString() + num2.toString() ;
            break;
        case "swap":
            let num3 =num1;
            num1 = num2;
            num2 = num3;
    }
    document.getElementById("d1").innerHTML=res;
}
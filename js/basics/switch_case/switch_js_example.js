var res;
var num1 = prompt("Enter first number: ","enter first number");
var num2 = prompt("Enter second number: ","1");
var ch = prompt("Enter character: ","+");

        switch (ch)
        {
                case "+":
                        res=num1+num2;
                        document.write(num1+" + "+num2+" = "res);
                        break;
                case "-":
                        res=num1-num2;
                        document.write(num1+" - "+num2+" = "res);
                        break;
                case "*":
                        res=num1*num2
                        document.write(num1+" * "+num2+" = "res);
                        break;
                case "/":
                        res=num1/num2;
                        document.write(num1+" / "+num2+" = "res);
                        break;
                default:
                        document.write("Invalid character.");
        }


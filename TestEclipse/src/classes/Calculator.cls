public class Calculator
{
public integer number1{get;set;}
public integer number2{get;set;}
public string operator{get;set;}
public double result{get;set;}
public void calculation()
{
    if(operator=='+')
    result = number1+number2;
    if(operator=='-')
    result = number1-number2;
    if(operator=='*')
    result = number1*number2;
  
    if(operator=='/')
    {
        if(number2!=0)
            result=number1/number2;
        else
        result=0.0;
    }
    
}
   
}
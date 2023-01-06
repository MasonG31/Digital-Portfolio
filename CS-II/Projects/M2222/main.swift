

func factorial(int : Int) -> Int{
    print("Calculating factorial(" + String(int) + ")...")
    //this returns 0 which is the terminal case for 0 and 1
    if int <= 0{
        print("Terminal case, returning 1.")
        return 1
    }
    
    if int <= 1{
        // 1 is the other terminal case, which is what we are trying to work to.
        print("Terminal case, returning 1.")
        return int 
    }

    else{
        //this is the recurring step, we repeat this over and over again unti all of our numbers decay into the terminal cases.
        let value = (factorial(int : int - 1) * int )
        print("Non-terminal case, returning " + String(value) + ".")
        return value 
    }

    
}
print("The final result is: " + String(factorial(int : n))  + ".")



let n = 8
func fib(int : Int) -> Int {
    print("Calculating fibonacci(" + String(int) + ")...")
    //the if int is <=2 because, 1 and 0 are the terminal cases
    if int <= 2{
        print("Terminal case, returning 1.")
        //this is where we are trying to get to for every single number, 0 and 1 have the same terminal solution of 1.
        return 1
    }

    else{
        // this is where we slowly decrease the numbers to get back to 0 or 1. It is almost like we let them decay, than add all of the times we got back to 0 or 1. The terminal cases.
        let value =  fib(int: int-1) + fib(int: int-2)
        print("Non-terminal case, returning " + String(value) + ".")
        return value
    }
}
print("The final result is: " + String(fib(int : n)) + ".")

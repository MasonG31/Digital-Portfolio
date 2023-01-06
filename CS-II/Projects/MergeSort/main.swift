let unsortedIntegers = [50,40,30,20,10]
func merge(left : [Int], right: [Int]) -> [Int] {
    //il and ir represent the indexes for the left and right
    //you can make splices of the array by using Array(array[left ... middle])
    
    var il = 0
    //left index of the merge sort
    var ir = 0
    //right index of the merge sort
    var sortedArray: [Int] = []
    while il < left.count && ir < right.count{
        //this checks to see while the index is less than the count, so while we can interate through values and not go farther.
        if left[il] < right[ir]{
            //if the literal value inside is less than, which means we don't need to swap the values
            sortedArray.append(left[il])
            il += 1
        }
        else if right[ir] < left[il]{
            sortedArray.append(right[ir])
            ir += 1
            //we move the right index one because we took a value from the right index and moved it in our fresh array
            //we keep  moving the index's because of the while loop, until all of the values are in our big new array.
        }
        else{
            //this runs if they are equal, rare but it is still a good section of code to have
            sortedArray.append(left[il])
            sortedArray.append(right[ir])
        }
    }
    //the code above honeslty is sorting the values of sets of ones and two's.
    while il < left.count{
        sortedArray.append(left[il])
        il += 1
    }
    while ir < right.count{
        sortedArray.append(right[ir])
        ir += 1
    }
    return sortedArray
}
func mergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else{ return array
    }
    print("Array: \(array)")
    let mid = ((array.count + array.count % 2) / 2)
    //the module thing does the same purpose as just adding 1 to the array count /2
    let l = mergeSort(array: Array(array[0..<mid]))
    //makes a splice of the left part of the array
    print("Array: \(l)")
    let r = mergeSort(array: Array(array[mid..<array.count]))
    //makes splice of the right half of the array
    print("Array: \(r)")
    let jacob = merge(left: l, right: r)
    //jacob is just a varible to hold the return value of the function
    return jacob


}
print("Array: \(mergeSort(array: unsortedIntegers))")
//Jacob assisted me in writing the code. 

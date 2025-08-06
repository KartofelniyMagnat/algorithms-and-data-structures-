func insertionSort(_ array: inout [Int])->[Int]{
    var j : Int
    for i in 1..<array.count{
        j = i
        while j>0 && array[j] < array[j-1]{
            array.swapAt(j, j-1)
            j = j-1
        }
    }
    return array
}
var array : [Int] = [0,423,1,4,1,7,3,9,10]
print(insertionSort(&array))
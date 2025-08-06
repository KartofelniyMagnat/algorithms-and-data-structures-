func bubbleSort(_ array: inout [Int]) -> [Int]{
    var buffer : Int
    for i in 0..<array.count{
        for j in 0..<array.count - i - 1{
            if (array[j] > array[j+1]){
                buffer = array[j]
                array[j] = array[j+1]
                array [j+1] = buffer
            }
        }
    }
    return array
}
var array : [Int] = [1,2,2,6,1,7,9,3,10]
print(bubbleSort(&array))
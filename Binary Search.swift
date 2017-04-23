
/*
Description: binary search is a search function in sorted arrays
Precondition: Array is Sorted
Parameter: Array of type Int and target value to be searched in array
Return Value: Int (if found index of element else -1)

*/
func binarySearch(array:[Int],targetValue:Int) -> Int {
	
	var start = 0,end = array.count-1
	var median = 0;
	while start <= end {
		median = start + (end-start)/2
		if array[median] == targetValue {
			return median
		}else if array[median] < targetValue {
			start = median + 1
		}else {
			end = median - 1
		}
	}
	//targetValue is not found
	return -1
}

let arr  = [1,2,3,4,5,6,7,8,9,12]

//Test Boundaries
print(binarySearch(array:arr,targetValue:1))
print(binarySearch(array:arr,targetValue:12))
//Test Near Boundaries
print(binarySearch(array:arr,targetValue:2))
print(binarySearch(array:arr,targetValue:9))
//Test non exist value
print(binarySearch(array:arr,targetValue:100))
/*
Description: insertion sort is a function to sort arrays
Precondition: None
Parameter: Array of type Int
Return Value: Sorted Array of type Int

*/
func insertionSort(array:[Int])->[Int]{
	if array.count == 1 {	return array }
	var sortedArray = array
	let last = sortedArray.count - 1
	for i in 1...last {
		var j = i 
		let temp = sortedArray[i]
		while j > 0 && temp < sortedArray[j-1] {
			sortedArray[j] = sortedArray[j-1]
			j -= 1
		}
		sortedArray[j] = temp
	}
	return sortedArray
}

var a = [10,2,342,1,2,34,1,90,-1]
print(insertionSort(array:a))


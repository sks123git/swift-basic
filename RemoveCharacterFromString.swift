//Swift program to remove a character at specified index of a given non-empty string. 
//The value of the specified index will be in the range 0..str.length()-1 inclusive.

func checkString(str: String, position: Int) -> String{
	var arr = Array(str)
	arr.remove(at: position)
	return String(arr)
}
print(checkString(str: "lsqwe", position: 2))

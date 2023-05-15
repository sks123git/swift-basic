// Program to change the first and last character of a given string.

func changeCharacters(str: String) -> String{
    var arr = Array(str)
    var temp: String
    temp=String(arr[0])
    arr[0]=arr[str.count-1]
    arr[str.count-1] = Character(temp)
    return String(arr)
}
print(changeCharacters(str: "shubham"))

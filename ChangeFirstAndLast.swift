// Program to change the first and last character of a given string.

func changeCharacters(str: String) -> String{
    var arr = Array(str)
    arr[0]="m"
    arr[str.count-1] = "s"
    return String(arr)
}
print(changeCharacters(str: "shubham"))

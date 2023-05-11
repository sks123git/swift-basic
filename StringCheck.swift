//Write a Swift program to add "Is" to the front of a given string. However, 
//if the string already begins with "Is", return the given string.

func checkString(str: String) -> String{
if str.hasPrefix("ls") {
    return str
    } else {
    return "ls"+str
    }
}
print(checkString(str: "lsqwe"))

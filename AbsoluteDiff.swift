//Compute and return the absolute difference of n and 51

func Diff(num: Int) -> Int{
if num > 51 {
    return (num-51)*2
    } else {
    return 51-num
    }
}
print(Diff(num: 53))

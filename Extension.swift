// Program for extension demo
extension Double{
    func areaSquare() -> Double{
        return (self * self).rounded()
    }
}
let length: Double = 12
print(length.areaSquare())

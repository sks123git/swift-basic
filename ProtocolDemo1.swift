// Program for protocol demo
protocol Car{
    func engineStart()
    func engineStop()
    func speedIncrease()
    func speedDecrease()
}

class Subaru: Car {
    func engineStart(){
        print("Engine started!!!")
    }
    func engineStop(){
        print("Engine stopped!!!")
    }
    func speedIncrease(){
        print("Speed increased!!!")
    }
    func speedDecrease(){
        print("Speed decreased!!!")
    }
}

let subaruObj = Subaru()
subaruObj.engineStart()

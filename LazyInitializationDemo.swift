// Program to check lazy initialization
    
class Employee{
    var id:Int?
    var name:String?
    var department:Department?
    init(id: Int?, name: String?){
        self.id = id
        self.name = name
    }
    func display(){
        print(self.id!)
        print(self.name!)
        print(self.department!.department!)
    }
}
class Department{
    var department:String?
    lazy var employeeList = Array<Employee>()
}
var dep=Department()
dep.department = "CS"
var emp = Employee(id: 1,name: "Shubham")
emp.department = dep
dep.employeeList.append(emp)
emp.display()

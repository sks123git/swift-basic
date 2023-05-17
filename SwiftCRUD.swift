// Program for menu driven CRUD operation
import Foundation
// Declaration of employee class
class Employee{
    var id:Int?
    var name:String?
    var department:Department?
    init(){}
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
// Declaration of department class
class Department{
    var department:String?
    lazy var employeeList = Array<Employee>()
}
var dep = Department()
var emp = Employee()
var choice: Int
// function to add new employee
func addEmp(){
    let identifier: Int
    let name: String
    let department: String
    print("Enter the id")
    identifier = Int(readLine()!)! ?? 0
    print("Enter the name")
    name = readLine() ?? ""
    emp = Employee(id: identifier, name: name)
    print("Enter the department")
    department = readLine() ?? ""
    dep.department = department
    emp.department = dep
    dep.employeeList.append(emp)
}
// function to delete employee
func deleteEmp(){
    print("Enter the name of the employee to delete")
    let empName: String = readLine() ?? ""
    for i in stride(from:0, to:dep.employeeList.count-1, by:1) {
       if (dep.employeeList[i].name == empName)
       {
           dep.employeeList.remove(at: i)
       } 
           else 
        {
               print("not found")
        }
    }
}
// function to edit employee
func editEmp(){
    print("Enter the name of employee to edit")
    let empName: String = readLine() ?? ""
    for i in stride(from:0, to:dep.employeeList.count-1, by:1) {
       if (dep.employeeList[i].name == empName)
       {
            let newName: String
            let newDepartment: String
            let choice: Int
            print("Enter the choice to modify\n1> NAME \n2> DEPARTMENT")
            choice = Int(readLine()!)!
            switch choice{
                case 1:  print("Enter the new name")
                         newName = readLine() ?? ""
                         dep.employeeList[i].name = newName
                case 2:  print("Enter the new department")
                         newDepartment = readLine() ?? ""
                         dep.employeeList[i].department!.department! = newDepartment
                default: print("Enter valid chice")
                }
       } 
           else 
        {
               print("not found")
        }
    }
}
// function to display employee
func displayEmp(){
 for i in dep.employeeList {
     i.display()
 }   
}
// Driver code below
repeat {
    print("Enter your choice \n1> ADD\n2> DISPLAY \n3> DELETE \n4> EDIT \n0> EXIT")
    choice = Int(readLine()!)!
    switch choice{
        case 1: addEmp()
        case 2: displayEmp()
        case 3: deleteEmp()
        case 4: editEmp()
        case 0: exit(0)
        default: print("Please enter valid option")
    }
}while(choice != 0)

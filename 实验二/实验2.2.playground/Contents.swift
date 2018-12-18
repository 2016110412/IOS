import UIKit

enum department:String{
    case teacher = "老师"
    case student = "学生"
};
protocol SchoolPotocol{
    var der:department{get set}
    func lendbook()
}

class Person:CustomStringConvertible{
    var firstName:String
    var lastName:String
    var age:Int
    var value:String
    enum gender:String{
        case male = "男"
        case female = "女"
    };
    init(firstName:String,lastName:String,age:Int){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.value = "男"
    }
    init(firstName:String,lastName:String,age:Int,value:String){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        if value == gender.male.rawValue{
            self.value = value
        }
        else if  value == gender.female.rawValue{
            self.value = value
        }
        else{
            self.value = "错误"
            print("性别错误！！")
        }
    }
    var description:String{
        return "fullName:\(self.fullName())  age:\(age)  gender:\(value)"
    }
    func fullName() -> String{
        return firstName+lastName
    }
    
    func run(){
        print("Person \(self.fullName()) is running")
    }
    
    static func ==(person:Person,person1:Person) -> Bool{
        return (person1.fullName() == person.fullName() && person1.age == person.age && person1.value == person.value )
    }
    static func !=(person:Person,person1:Person) -> Bool{
        return (person1.fullName() != person.fullName() || person1.age != person.age || person1.value != person.value )
    }
}

class Teacher:Person,SchoolPotocol{
    var der:department
    var title:String
    init(firstName:String,lastName:String,age:Int,value:String,title:String){
        self.der = department.teacher
        self.title = title
        super.init(firstName:firstName,lastName:lastName,age:age,value:value)
    }
    override var description:String{
        return "\(super.description)  title:\(title)"
    }
    
    override func run(){
        print("Teacher \(super.fullName()) is running")
    }
    func lendbook(){
        print("Teacher \(super.fullName()) lend a book!!")
    }
}

class Student:Person,SchoolPotocol{
    var stuNo:String
    var der:department
    init(firstName:String,lastName:String,age:Int,value:String,stuNo:String){
        self.der = department.student
        self.stuNo = stuNo
        super.init(firstName:firstName,lastName:lastName,age:age,value:value)
    }
    override var description:String{
        return "\(super.description)  stuNo:\(stuNo)"
    }
    
    override func run(){
        print("Student \(super.fullName()) is running")
    }
    
    func lendbook(){
        print("Student \(super.fullName()) lend a book!!")
    }
}
var Array_people = [Person]()
var per = Person(firstName:"张",lastName:"磊",age:22,value:"男")
var per1 = Person(firstName:"王",lastName:"梅",age:25,value:"女")
var per2 = Person(firstName:"李",lastName:"山",age:23,value:"男")
var tea = Teacher(firstName:"张",lastName:"军",age:21,value:"男",title:"语文")
var tea1 = Teacher(firstName:"冯",lastName:"浩",age:20,value:"男",title:"数学")
var tea2 = Teacher(firstName:"周",lastName:"蓉",age:22,value:"女",title:"英语")
var stu = Student(firstName:"王",lastName:"林",age:22,value:"男",stuNo:"14100951")
var stu1 = Student(firstName:"郑",lastName:"伟",age:21,value:"男",stuNo:"14110921")
var stu2 = Student(firstName:"孙",lastName:"美",age:24,value:"女",stuNo:"14110823")

print(per)
per.run()
if(per == per1){
    print("两人相同")
}
if(per != per1){
    print("两人不同")
}
print(tea)
tea.run()
print(stu)
stu.run()

Array_people.append(per)
Array_people.append(per1)
Array_people.append(per2)
Array_people.append(tea)
Array_people.append(tea1)
Array_people.append(tea2)
Array_people.append(stu)
Array_people.append(stu1)
Array_people.append(stu2)
print("输出数组内容：")
print(Array_people)   //Person、Teacher和Student对象，并将这些对象存入同一个数组中并输出；

var dic = ["Person":0,"Teacher":0,"Student":0]   //将Person、Teacher和Student对象，并将这些对象个数存入字典中并输出；
for i in Array_people{
    if i is Student{
        dic["Student"]! += 1
    }
    else if i is Teacher{
        dic["Teacher"]! += 1
    }else{
        dic["Person"]! += 1
    }
}
print("输出字典内容：")
print(dic)

//按age排序
print("按age排序")
Array_people.sort{(x,y) in
    return x.age < y.age
}
print(Array_people)
//按fullName排序
print("按fullName排序")
Array_people.sort{
    return ($0.fullName() < $1.fullName())
}
print(Array_people)
//按gender+age排序
print("按gender+age排序")
Array_people.sort{
    return ($0.value < $1.value) && ($0.age < $1.age)
}
print(Array_people)

for people in Array_people{
    people.run()
}
tea.lendbook()
stu.lendbook()


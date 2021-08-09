class Person{
  String id;
  String name;
  int age;
  String address;
 
Person({
  required this.id,
  required this.name,
  required this.age,
  required this.address,
  
});

}
class Student extends Person  {
   String email;
   String phone;
   Map <String,double>   subjects={};
  Student( String id, String name,int age,String address,  this.email, this.phone):super(id:id,name:name,age:age,
          address:address);
  Map <String,double> addSubjects({required String subjectName,required double grade}){
     subjects.addAll({subjectName:grade});
     return subjects;
    
  }
  void studentData({required String id,required String name, required String age,required String address,
                    required String email,required String phone})//,required Map subjects})
{
  print('Id is $id , name is  $name, Age is :$age,address is $address , email is $email,phone is $phone ,SubjectsDegree is  $subjects');
}
}

class StudentS{
  // Map <String,Map>   mapStudentGrade={};
   final List<Student> _student=[];
   
  //final _student;
  void addStudent({required  String ids,required String name,required int age,required String address,required String email,required String phone})
  {
   
_student.add(Student(ids, name, age, address,email,phone));
    //  : super(id: id, name: name, age: age, address: address);

  }

  void removeBStudent(String id){
    _student.removeWhere((element) => element.id==id);
 }

void PrintStudentData(String? StudenId){
  
      if (StudenId==null){
      var thisStudet= _student.firstWhere((element) => element.id == StudenId);
            
      thisStudet.studentData(id:thisStudet.id, name: thisStudet.name,age : thisStudet.age.toString(), address:thisStudet.address,
                   email:thisStudet.email,phone: thisStudet.phone);
     }
     else{
      _student.forEach((element) {element.studentData(id:element.id, name: element.name,age : element.age.toString(),
                   address:element.address,
                   email:element.email,phone: element.phone);
       });
       
     }
}
void  addSubject(String id, String subject, double grade){
 
    var thisStudet= _student.firstWhere((element) => element.id == id);
    thisStudet.subjects=thisStudet.addSubjects(subjectName: subject, grade: grade);
   
 }



 //}
}




import 'task3.dart';
import 'dart:io';


void main() {
  //Person iPerson;
  //iPerson=Person(id:'1',name:'n1',age:17,address:'adrr');
  //Student iStudent;
  //iStudent=Student(iPerson.id,iPerson.name,iPerson.age,iPerson.address,'email','phone');
  //Student iStudent;
  //Map <String,double>   firstSub={};
//  iStudent=Student('1','n1',1,'add','email','phone');
 // print(iStudent.phone);
  //iStudent.addSubjects(subjectName: 'math', grade: 90);

 // iStudent.addSubjects(subjectName: 'sic', grade: 100);
 // iStudent.studentData();

 var  iStudent =StudentS();

print('enter 1 :  add Student');
  
  loop :
  while(true){
  print('enter 1 :  add Student');
  print('enter 2 : remove book');
  print('enter 3 : Print Student data');
  print('enter 4 : add student Subject');
  print('enter 5 exit');
  var inputChoice=stdin.readLineSync()!;
 switch(inputChoice){
  case '5' :
      break loop;
 case '1':
     
    print ('Enter id , name,age,address,email,phone');
    var input=stdin.readLineSync()!.split(',');
    iStudent.addStudent(ids:input[0], name:  input[1], age:int.parse(input[2])   , address: input[3], email: input[4], phone: input[5]);
      break;
case '2': 
      print('enter id remove student');
      var input =stdin.readLineSync()!;
      iStudent.removeBStudent(input);
    break;

case '3':
      print('enter id  student');
      var input =stdin.readLineSync();
      iStudent.PrintStudentData(input);
      break;
case '4' :
      print('enter id  student to enter subjects as id,subjectName, grade');
      var input =stdin.readLineSync()!.split(',');
     // iStudent.addSubject(id, subject, grade)
     iStudent.addSubject(input[0], input[1],double.parse(input[2]));
     break;
default :
    print('Enter valid num.');
}
  }
  
  }


//}
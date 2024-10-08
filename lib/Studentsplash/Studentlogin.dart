import 'package:finearts_miniproject/Studentsplash/Student_Navigation.dart';
import 'package:finearts_miniproject/Studentsplash/Student_Registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class student_login extends StatefulWidget {
  const student_login({super.key});

  @override
  State<student_login> createState() => _student_loginState();
}

class _student_loginState extends State<student_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200.h,
              ),
              Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(32, 69, 99, 1)),
                  )),
              SizedBox(
                height: 50.h,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.person_solid,color: Colors.grey,),
                          hintText: 'Usernames',
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                          hintText: 'Passsword',
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(5)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Student_navigation();
                  },));
                },
                  child: Container(
                    height: 55.h,
                    width: 330.w,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(32, 69, 99, 1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ),
                ),
              ),
              SizedBox(height: 30.h,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return student_reg();
                  },));
                },
                  child: Text("Create New Account",
                      style: TextStyle(
                          fontSize: 20.sp,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800)),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
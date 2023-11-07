import 'package:flutter/material.dart';

import '../Student/students.dart';
import '../widgets/form_container_widget.dart';
import 'Faculty/faculty.dart';
import 'sing_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isSigning = false;

  String _selectedOption = 'Student, Faculty'; // Initialize with a default value


  // final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COERConnect"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              FormContainerWidget(
                controller: _emailController,
                hintText: "Email",
                isPasswordField: false,
              ),
              SizedBox(height: 10,),
              FormContainerWidget(
                controller: _passwordController,
                hintText: "Password",
                isPasswordField: true,
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Radio(
                    value: 'Faculty',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value.toString();
                      });
                    },
                  ),
                  Text('Faculty'),
                  Radio(
                    value: 'Student',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value.toString();
                      });
                    },
                  ),
                  Text('Student'),
                ],
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: _signIn,
                child: Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),                 
                  child: Center(child:Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 5,),
                  GestureDetector(
                      onTap: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SignUpPage()), (route) => false);
                      },
                      child: Text("Sign Up",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),))
                ],
              )


            ],
          ),
        ),
      ),
    );
  }

  void _signIn() async {

    String email = _emailController.text;
    String password = _passwordController.text;

    if (_selectedOption == 'Student') {
    // Perform login logic for Student
    // For example, you can use Firebase authentication service or any other authentication method you are using
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StudentScreen()),
    );
  } else if (_selectedOption == 'Faculty') {
    // Navigate to the FacultyScreen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FacultyScreen()),
    );
  }
    
    

  }
}



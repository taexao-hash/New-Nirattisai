import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/forgot_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 243, 243, 1),
      body: Padding(
        padding:  EdgeInsets.only(
          top: 100.0,
          left: 40.0,
          right: 40.0,
          bottom: 50.0,
        ),
        child: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: OutlinedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  // ignore: sort_child_properties_last
                  child: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 20.0,
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      65.0,
                      55.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ) 
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                'Welcome to SAU! Glud',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
              SizedBox(
                height: 1.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                'to see you again!',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              SizedBox(
                height: 28.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Enter your email',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 15.0,
                  ),
                  filled: true,
                  fillColor: Colors.grey[205],
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              TextField(
                //keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Enter your password',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 15.0,
                  ),
                  filled: true,
                  fillColor: Colors.grey[205],
                  suffixIcon: Icon(
                    Icons.visibility_off_rounded,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotUI(),
                      ),
                    );
                },
                child: Text(
                  'Forgot Password?',
              )
              
                ),
                ),
                SizedBox(
                height: 20.0,
              ),
                ElevatedButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width,
                  60.0,
                ),
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
                height: 40.0,
            ),
            Text(
              'Or login with',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: (){},
                    child: Image.asset(
                      'assets/images/img_facebook.png',
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(
                        110.0,
                        60.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10.0),
                      ),
                      side: BorderSide(
                        color: Colors.blue,
                        width: 1.5,
                    ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: (){},
                    child: Image.asset(
                      'assets/images/img_google.png',
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(
                        110.0,
                        60.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10.0),
                      ),
                      side: BorderSide(
                        color: Colors.blue,
                        width: 1.5,
                    ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: (){},
                    child: Image.asset(
                      'assets/images/img_apple.png',
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(
                        110.0,
                        60.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10.0),
                      ),
                      side: BorderSide(
                        color: Colors.blue,
                        width: 1.5,
                    ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?"
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 71, 126, 172),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

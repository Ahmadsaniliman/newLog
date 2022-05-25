import 'package:flutter/material.dart';
import 'package:note/color.dart';
import 'package:note/screens/Login/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset('assests/images/main_top.png'),
                width: size.width * 0.3,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  Image.asset('assests/images/images.png'),
                  Image.asset(
                    'assests/images/images.png',
                    height: size.height * 0,
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: KprimaryColor,
                      borderRadius: BorderRadius.circular(29.0),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      enableSuggestions: true,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.email, color: Colors.white),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 30.0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: KprimaryColor,
                      borderRadius: BorderRadius.circular(29.0),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        suffixIcon: Icon(Icons.visibility, color: Colors.white),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 30.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    width: size.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 30.0),
                            primary: KprimaryColor,
                          ),
                          onPressed: () {},
                          child: Text('Sign Up')),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account   '),
                        GestureDetector(
                          child: Text('Login',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginView()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      width: size.width * 0.8,
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            height: 1.5,
                            color: KprimaryColor,
                          )),
                          Text(' OR '),
                          Expanded(
                              child: Divider(
                            height: 1.5,
                            color: KprimaryColor,
                          )),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: KprimaryColor,
                              width: 2,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Text('A'),
                        ),
                      ),
                      SizedBox(width: 15.0),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: KprimaryColor,
                              width: 2,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Text('B'),
                        ),
                      ),
                      SizedBox(width: 15.0),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: KprimaryColor,
                              width: 2,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Text('A'),
                        ),
                      ),
                    ],
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

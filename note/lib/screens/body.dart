import 'package:flutter/material.dart';
import 'package:note/color.dart';
import 'package:note/screens/Login/login.dart';
import 'package:note/screens/sign%20up/signUp.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset('assests/images/main_top.png'),
              width: size.width * 0.4,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset('assests/images/main_bottom.png'),
              width: size.width * 0.25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WELLCOME',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                Image.asset('assests/images/images.png',
                    height: size.height * 0.45),
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
                        onPressed: () {
                          print('Login');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginView()));
                        },
                        child: Text('Login')),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  width: size.width * 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(29.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 30.0),
                          primary: Colors.grey[500],
                        ),
                        onPressed: () {
                          print('Register');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Text(
                          'Register',
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

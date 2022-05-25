import 'package:flutter/material.dart';
import 'package:note/screens/Login/login.dart';

class RoundedButtoN extends StatelessWidget {
  final String text;
  final Function press;
  final Color color;
  const RoundedButtoN(
      {Key? key, required this.text, required this.press, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0)),
            onPressed: () {
              press;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginView()));
            },
            child: Text(text)),
      ),
    );
  }
}

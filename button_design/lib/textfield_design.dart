import 'package:flutter/material.dart';


class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  final Color primaryColor = Color(0xFFe0e0e0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      alignment: Alignment.center,
      child: _embossShape(),
    );
  }Container _embossShape(){
    return Container(
        width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(25) ,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFffffff),
            offset: Offset(5, 5),
            blurRadius: 5,
          ),
          BoxShadow(
            color: Color(0xFFbebebe),
            offset: Offset(-5, -5),
            blurRadius: 5,
          ),
          

        ]
      ),

      );
  }

      
      
    
  }

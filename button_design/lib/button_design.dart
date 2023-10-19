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
    return Scaffold(
      backgroundColor: primaryColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text('Emboss Design'),
            const SizedBox(
              height: 16,
            ),
            _embossShape(),
            const SizedBox(
              height: 30,
            ),
            const Text('Flat Design'),
            const SizedBox(
              height: 16,
            ),
            _flatShape(),
            const SizedBox(
              height: 30,
            ),
            const Text('Convex Design'),
            const SizedBox(
              height: 16,
            ),
            _convexShape(),
            const SizedBox(
              height: 30,
            ),
            const Text('Concave Design'),
            const SizedBox(
              height: 16,
            ),
            _concaveShape(),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              height: 180,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFffffff),
                      offset: Offset(-5, -5),
                      blurRadius: 5,
                    ),
                    BoxShadow(
                      color: Color(0xFFbebebe),
                      offset: Offset(5, 5),
                      blurRadius: 5,
                    ),
                  ],
                  ),
                  child: Text('MyAdmyn', 
                  style: TextStyle(
                    fontSize: 40,
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                    shadows: const [
                      BoxShadow(
                      color: Color(0xFFffffff),
                      offset: Offset(-2, -2),
                      blurRadius: 5,
                    ),
                    BoxShadow(
                      color: Color(0xFFbebebe),
                      offset: Offset(2, 2),
                      blurRadius: 2,
                    ),

                    ]
                  ),),
            )
          ],
        ),
      ),
    );
  }

  //Concave Design
  Container _concaveShape() {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFcacaca),
                Color(0xFFf0f0f0),
              ]),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFffffff),
              offset: Offset(-5, -5),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Color(0xFFbebebe),
              offset: Offset(5, 5),
              blurRadius: 5,
            ),
          ]),
    );
  }

  //Convex Design
  Container _convexShape() {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFf0f0f0),
                Color(0xFFcacaca),
              ]),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFffffff),
              offset: Offset(-5, -5),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Color(0xFFbebebe),
              offset: Offset(5, 5),
              blurRadius: 5,
            ),
          ]),
    );
  }

  //Flat Design
  Container _flatShape() {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFffffff),
              offset: Offset(-5, -5),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Color(0xFFbebebe),
              offset: Offset(5, 5),
              blurRadius: 5,
            ),
          ]),
    );
  }

  //Emboss Design
  Container _embossShape() {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
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
          ]),
    );
  }
}

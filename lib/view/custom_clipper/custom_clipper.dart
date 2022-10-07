// import 'dart:math';

// import 'package:flutter/cupertino.dart';

// import 'package:flutter/cupertino.dart';

// class MyCustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = new Path();
//     path.lineTo(0.0, size.height - 20);

//     var firstControlPoint = new Offset(size.width / 30, size.height -10);
//     var firstEndPoint = new Offset(size.width / 4.78, size.height - 20.0);
//     path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//         firstEndPoint.dx, firstEndPoint.dy);

//     var secondControlPoint =
//         new Offset(size.width - (size.width / 3.25), size.height - 70);
//     var secondEndPoint = new Offset(size.width, size.height - 0.5);
//     path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
//         secondEndPoint.dx, secondEndPoint.dy);

//     path.lineTo(size.width, size.height - 10);
//     path.lineTo(size.width, 0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }

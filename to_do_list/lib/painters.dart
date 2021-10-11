import 'package:flutter/material.dart';

class CurvePainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue[900];
    paint.style = PaintingStyle.fill;
    var paint2 = Paint();
    paint2.color = Colors.yellow[700];
    paint2.style = PaintingStyle.fill;
    var paint3 = Paint();
    paint3.color = Colors.red[700];
    paint3.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(size.width,size.height*0.874);
    path.quadraticBezierTo(size.width * 0.85, size.height * 0.84,
        size.width * 0.66, size.height * 0.94);
        path.quadraticBezierTo(size.width * 0.53, size.height * 0.984,
        size.width * 0.42, size.height * 0.93);
        path.lineTo(0, size.height);
        path.lineTo(size.width, size.height);
        canvas.drawPath(path, paint);
  /*
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 75.0, paint2,);
    canvas.drawCircle(center, 15.0, paint3,);
    */
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}
class CurvePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[900];
    paint.style = PaintingStyle.fill;

    var camino = Path();

    camino.moveTo(0, size.height*0.832 );
    camino.quadraticBezierTo(size.width * 0.2, size.height * 0.85,
        size.width * 0.27, size.height * 0.91);
    camino.quadraticBezierTo(size.width * 0.34, size.height * 0.95,
        size.width * 0.46, size.height * 0.923);
    camino.quadraticBezierTo(size.width * 0.545, size.height * 0.89,
        size.width * 0.695, size.height* 0.92);
    camino.quadraticBezierTo(size.width * 0.8, size.height * 0.99,
        size.width * 0.95, size.height);
    camino.lineTo(0, size.height);
    canvas.drawPath(camino, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

/*
camino.moveTo(0, size.height*0.832 );
    camino.quadraticBezierTo(size.width * 0.2, size.height * 0.85,
        size.width * 0.27, size.height * 0.91);
    camino.quadraticBezierTo(size.width * 0.34, size.height * 0.95,
        size.width * 0.46, size.height * 0.923);
    camino.quadraticBezierTo(size.width * 0.54, size.height * 0.91,
        size.width * 0.60, size.height* 0.932);
    camino.quadraticBezierTo(size.width * 0.8, size.height * 0.99,
        size.width * 0.973, size.height);
*/
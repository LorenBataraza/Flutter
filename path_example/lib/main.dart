import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawing Paths',
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
          title: Text('Custom Shapes'),
        ),
      body:Stack(children: <Widget>[
 CustomPaint(
          painter: CurvePainter2(),
          child: Container(
        )),
        CustomPaint(
          painter: CurvePainter1(),
          child: Container(
        ))
    ],))
    ;
  }
}

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

    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.85,
        size.width * 0.5, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
        size.width * 1.0, size.height * 0.80);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 75.0, paint2,);
    canvas.drawCircle(center, 15.0, paint3,);
    canvas.drawPath(path, paint);
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
    paint.color = Colors.teal[200];
    paint.style = PaintingStyle.fill;

    var pinga = Path();

    pinga.lineTo(size.width, size.height );
    pinga.lineTo(0, size.height);
    pinga.lineTo(0, 0);
    canvas.drawPath(pinga, paint);



  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}



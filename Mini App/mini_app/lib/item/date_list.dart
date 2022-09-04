import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class dateList extends StatelessWidget {
  final String day;
  final int date;
  final bool isDot;

  const dateList({
    Key? key,
    required this.day,
    required this.date,
    required this.isDot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 150,
        width: 100,
        child: Card(
          color: Color.fromARGB(255, 240, 243, 248),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 100,
                padding: EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      isDot
                          ? 'assets/images/Ellipse.png'
                          : 'assets/images/EllipseG.png',
                      width: 50,
                      height: 50,
                    ),
                    Center(
                      child: Text(
                        day,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Text(
                            '$date',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

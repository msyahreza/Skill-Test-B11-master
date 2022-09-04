import 'package:flutter/material.dart';

class taskList extends StatelessWidget {
  final String title;
  final String time;
  final bool isDone;

  const taskList(
      {Key? key, required this.title, required this.time, required this.isDone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  child: Text(
                    '$time ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 190,
            height: 50,
            child: Card(
              color: Color.fromARGB(255, 219, 230, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          '$title',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 4, 66, 208),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: Image(
                    image: AssetImage(
                      isDone
                          ? 'assets/images/complete.png'
                          : 'assets/images/uncomplete.png',
                    ),
                    width: 200,
                    height: 50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

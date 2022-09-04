import 'package:flutter/material.dart';
import 'package:mini_app/item/date_list.dart';
import 'package:mini_app/item/task_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MiniApps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(/*title: 'Flutter Demo Home Page'*/),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.0),
        child: Container(
          child: AppBar(
            toolbarHeight: 150.0,
            backgroundColor: Color.fromARGB(255, 195, 47, 0),
            titleSpacing: 30,
            title: Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/profilePict.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hallo, Sam!",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                          GestureDetector(
                            child: GestureDetector(
                              child: Text(
                                '2 Task for Today',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 247, 190, 45),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 25,
                        bottom: 25,
                        left: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sun, Sept 14 2020',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 3, 66, 208),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 180,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      dateList(day: 'S', date: 13, isDot: true),
                      dateList(day: 'S', date: 14, isDot: false),
                      dateList(day: 'M', date: 15, isDot: false),
                      dateList(day: 'T', date: 16, isDot: true),
                      dateList(day: 'W', date: 17, isDot: false),
                      dateList(day: 'T', date: 18, isDot: false),
                      dateList(day: 'F', date: 19, isDot: true),
                      dateList(day: 'S', date: 20, isDot: true),
                    ],
                  ),
                  padding: EdgeInsets.only(bottom: 20),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: Divider(
                    thickness: 3,
                    color: Color.fromARGB(255, 240, 243, 248),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                  left: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Task List',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 82, 92, 119),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      taskList(
                        title: 'Meeting with Client',
                        time: '10.00 - 11.00',
                        isDone: false,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      taskList(
                        title: 'Design UI',
                        time: '11.00 - 12.00',
                        isDone: true,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      taskList(
                        title: 'Coding',
                        time: '13.00 - 15.00',
                        isDone: false,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      taskList(
                        title: 'Lunch',
                        time: '15.00 - 16.00',
                        isDone: false,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      taskList(
                        title: 'Meeting with Client',
                        time: '10.00 - 11.00',
                        isDone: false,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      taskList(
                        title: 'Design UI',
                        time: '11.00 - 12.00',
                        isDone: true,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      taskList(
                        title: 'Coding',
                        time: '13.00 - 15.00',
                        isDone: false,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      taskList(
                        title: 'Lunch',
                        time: '15.00 - 16.00',
                        isDone: false,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(bottom: 20),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.task),
              label: 'Task',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add Task',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoint = 0;

  int teamZPoint = 0;

  void AddOnePoint() {
    teamAPoint++;
    setState(() {});
    print(teamAPoint);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 9, 153, 193),
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      '$teamAPoint',
                      style: TextStyle(
                        fontSize: 200,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 9, 153, 193),
                        maximumSize: Size(150, 60),
                      ),
                      onPressed: AddOnePoint,
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 9, 153, 193),
                        maximumSize: Size(150, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoint += 2;
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 9, 153, 193),
                        maximumSize: Size(150, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoint += 3;
                        });
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team Z',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      '$teamZPoint',
                      style: TextStyle(
                        fontSize: 200,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 9, 153, 193),
                        maximumSize: Size(150, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          teamZPoint++;
                        });
                      },
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 9, 153, 193),
                        maximumSize: Size(150, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          teamZPoint += 2;
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 9, 153, 193),
                        maximumSize: Size(150, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          teamZPoint += 3;
                        });
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 9, 153, 193),
                maximumSize: Size(150, 60),
              ),
              onPressed: () {
                setState(() {
                  teamAPoint = 0;
                  teamZPoint = 0;
                });
              },
              child: Text(
                'Reast',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

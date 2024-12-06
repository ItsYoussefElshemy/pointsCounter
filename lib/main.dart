import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  pointsCounter({super.key});

  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int? teamAPoints = 0;

  int? teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Points Counter',
            style: TextStyle(fontWeight: FontWeight.bold),
            selectionColor: Colors.black,
          ),
        ),

        ////////////////
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    // Points counter
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamAPoints',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        teamAPoints = teamAPoints! + 1;
                        setState(() {});
                      },
                      child: Text(
                        "Add 1 point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ///////////////////////
                    ///
                    ElevatedButton(
                      onPressed: () {
                        teamAPoints = teamAPoints! + 2;
                        setState(() {});
                      },
                      child: Text(
                        "Add 2 point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ///////////////////////
                    ///
                    ElevatedButton(
                      onPressed: () {
                        teamAPoints = teamAPoints! + 3;
                        setState(() {});
                      },
                      child: Text(
                        "Add 3 point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                ///////////////////////
                ///
                ///
                ///
                ///
                ///
                ///
                Column(
                  children: [
                    // Points counter
                    Text(
                      'Team B',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBPoints',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        teamBPoints = teamBPoints! + 1;
                        setState(() {});
                      },
                      child: Text(
                        "Add 1 point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ///////////////////////
                    ElevatedButton(
                      onPressed: () {
                        teamBPoints = teamBPoints! + 2;
                        setState(() {});
                      },
                      child: Text(
                        "Add 2 point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ///////////////////////
                    ///
                    ElevatedButton(
                      onPressed: () {
                        teamBPoints = teamBPoints! + 3;
                        setState(() {});
                      },
                      child: Text(
                        "Add 3 point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {
                teamAPoints = 0;
                teamBPoints = 0;
                setState(() {});
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, minimumSize: Size(150, 50)),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  Color color = Colors.red;
  Alignment alignment = Alignment(-1.0, -1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80.0,
        color: Colors.black,
        child: Column(
          children: [
            AnimatedAlign(
              duration: Duration(milliseconds: 200),
              alignment: alignment,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                color: color,
                height: 10.0,
                width: MediaQuery.of(context).size.width / 5,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color = Colors.red;
                      alignment = Alignment(-1.0, -1.0);
                    });
                  },
                  child: Icon(Icons.favorite_border_sharp,
                      size: 50.0, color: Colors.red),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color = Colors.purple;
                      alignment = Alignment(-0.5, -1.0);
                    });
                  },
                  child: Icon(Icons.add, size: 50.0, color: Colors.purple),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color = Colors.yellow;
                      alignment = Alignment(0.0, -1.0);
                    });
                  },
                  child: Icon(Icons.home_outlined,
                      size: 50.0, color: Colors.yellow),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color = Colors.blue;
                      alignment = Alignment(0.5, -1.0);
                    });
                  },
                  child: Icon(Icons.call,
                      size: 50.0, color: Colors.blue),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color = Colors.green;
                      alignment = Alignment(1.0, -1.0);
                    });
                  },
                  child: Icon(Icons.search, size: 50.0, color: Colors.green),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

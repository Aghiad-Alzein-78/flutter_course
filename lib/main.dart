import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          child: IndexedStack(
            index: 2,
            children: [
              Container(color: Colors.amber),
              Container(color: Colors.red),
              Container(color: Colors.blue)
            ],
          ),
        ));
  }
}

class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(left: 25, right: 25, top: 8, bottom: 8),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.black45, width: 2)),
                child: Text(
                  "Strawberry Pavlova Recipe",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Pavlova is a meringue-based dessert named after the Russian ballerina '
                    'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
                    'topped with fruit and whipped cream.',
                    style: TextStyle(fontSize: 17, height: 1.5),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Icon(Icons.star, color: Colors.amber),
                                Icon(Icons.star, color: Colors.amber),
                                Icon(Icons.star),
                                Icon(Icons.star),
                              ],
                            ),
                            Row(
                              children: [Text("17 review")],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.restaurant, color: Colors.green),
                                Text("Feed"),
                                Text("2-4")
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.coffee, color: Colors.green),
                                Text("Feed"),
                                Text("2-4")
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.restaurant_menu,
                                    color: Colors.green),
                                Text("Feed"),
                                Text("2-4")
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}

class DividerOrVerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Row(
          children: [
            Text("Text one", style: TextStyle(fontSize: 20)),
            VerticalDivider(
              color: Colors.brown,
              thickness: 2,
              // height: 30,
              width: 20,
            ),
            Text("Text Two", style: TextStyle(fontSize: 20))
          ],
        ));
  }
}

class IconsLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Icon(
          Icons.trending_up,
          size: 50,
          color: Colors.amber,
        ));
  }
}

class ColmWithExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    child: Text("one", style: TextStyle(fontSize: 40)),
                    color: Colors.red,
                    width: double.infinity)),
            Expanded(
                flex: 1,
                child: Container(
                    child: Text("two", style: TextStyle(fontSize: 40)),
                    color: Colors.green,
                    width: double.infinity)),
            Expanded(
                flex: 1,
                child: Container(
                    child: Text("three", style: TextStyle(fontSize: 40)),
                    color: Colors.blue,
                    width: double.infinity)),
          ],
        ));
  }
}

class ExpandedWithRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Row(children: [
          Expanded(
              flex: 2,
              child:
                  Container(child: Text("Container one"), color: Colors.red)),
          Expanded(
              flex: 2,
              child:
                  Container(child: Text("Container two"), color: Colors.green)),
          Expanded(
              flex: 3,
              child: Container(
                  child: Text("Container three"), color: Colors.blue)),
        ]));
  }
}

class StackLesson2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            height: 400,
            width: 400,
            color: Colors.black26,
            child: Stack(clipBehavior: Clip.none,
                // alignment: Alignment.center,
                children: [
                  Positioned(
                      width: 200,
                      height: 200,
                      top: 300,
                      left: 50,
                      child: Container(
                          color: Colors.red, child: Text("Position one")))
                ])));
  }
}

class StackLesson1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          height: 400,
          width: 400,
          color: Colors.black26,
          child: Stack(
            // alignment: Alignment.center,
            children: [
              Container(
                  color: Colors.blue,
                  width: 300,
                  height: 300,
                  child: Text(
                    "Widget one",
                    textAlign: TextAlign.end,
                  )),
              Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                  child: Text(
                    "Widget two",
                    textAlign: TextAlign.end,
                  )),
              // Container(
              //     color: Colors.red,
              //     width: 200,
              //     height: 200,
              //     child: Text("Widget three")),
            ],
          ),
        ));
  }
}

class RowLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            // width: 400,
            // height: 400,
            // alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 10),
            color: Colors.red,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Text one "),
                Text("Text two "),
                Container(color: Colors.green, child: Text("Container")),
                Card(
                  color: Colors.white,
                  child: Text("Card one"),
                ),
                Card(
                  color: Colors.white,
                  child: Text("Card two"),
                ),
              ],
            )));
  }
}

class ColumnLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          color: Colors.black26,
          child: Column(
            //keep the column at it's minimum height
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //work on column but with x axes
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
              Container(
                color: Colors.amber[300],
                child: Text("HEY"),
              ),
              Image.asset("images/google.jpeg")
            ],
          ),
        ));
  }
}

class CardLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Card(
            color: Colors.green[300],
            shadowColor: Colors.red,
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.black, width: 4)),
            child: Text("How Are You", style: TextStyle(fontSize: 40))));
  }
}

class ImageAsBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("images/bg.jpeg", fit: BoxFit.fill)));
  }
}

class BorderLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Title"),
          backgroundColor: Colors.blue[900],
        ),
        drawer: Drawer(),
        body: Container(
            // width: double.infinity,
            width: 300,
            height: 50,
            margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
            padding: EdgeInsets.only(left: 15, top: 10),
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 4, color: Colors.grey),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10))
                // border: Border(
                //     left: BorderSide(color: Colors.red, width: 10),
                //     right: BorderSide(color: Colors.yellow, width: 10)
                //     )
                ),
            child: Text("How are you",
                style: TextStyle(
                  fontSize: 30.0,
                  backgroundColor: Colors.green,
                ))));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("title bar")),
        drawer: Drawer(),
        body: Text("How are you",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.red[400],
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
                wordSpacing: 15,
                decoration: TextDecoration.none,
                shadows: [
                  Shadow(
                      color: Colors.red,
                      blurRadius: 10.0,
                      offset: Offset(15.0, 12.5))
                ])));
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(title: Text("Login bar")),
        drawer: Drawer(),
        body: Text("Log in",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.red[400],
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
                wordSpacing: 15,
                decoration: TextDecoration.none,
                shadows: [
                  Shadow(
                      color: Colors.red,
                      blurRadius: 10.0,
                      offset: Offset(15.0, 12.5))
                ]))));
  }
}

class ImageContainerLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            margin: EdgeInsets.all(20),
            width: 300,
            height: 500,
            decoration: BoxDecoration(
                color: Colors.red[300],
                image: DecorationImage(
                    fit: BoxFit.contain,
                    repeat: ImageRepeat.repeat,
                    // image:NetworkImage(url as string),
                    image: AssetImage("images/google.jpeg"))),
            child: Text("How are you", style: TextStyle(fontSize: 30))));
  }
}

class AlignmentLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          width: double.infinity,
          height: 100,
          // alignment: Alignment.center,
          margin: EdgeInsets.only(top: 100),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.red, blurRadius: 10),
            ],
            color: Colors.red[300],
          ),
          child: Text(
            "How are you",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ));
  }
}

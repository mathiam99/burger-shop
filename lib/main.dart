import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'burger_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 0,
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[

            DrawerHeader(
              child: Text(
                "Burger Shop",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 30.0,
                ),
              ),
            ),

            ListTile(
              title: Text(
                "Home",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 20.0,
              ),
              ),
              trailing: Icon(Icons.home),
            ),

            ListTile(
              title: Text(
                  "Trending now",
                style: TextStyle(
                color: Colors.grey[600],
                fontSize: 20.0,
              ),
            ),
              trailing: Icon(Icons.trending_up),
            ),

            ListTile(
              title: Text(
                  "On Sales",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(Icons.local_offer),
            ),

            ListTile(
              title: Text(
                  "Burgers",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(Icons.fastfood),
            ),

            ListTile(
              title: Text(
                  "Pizza",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(Icons.local_pizza),
            ),

            ListTile(
              title: Text(
                  "Donation",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(Icons.monetization_on),
            ),

          ],
        ),
      ),

      body: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(360,110),
                        bottomRight: Radius.circular(0),
                      )
                  ),

                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 80),
                        child: RaisedButton(
                          child: Text("See all"),
                          color: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (context) => BurgerList(),
                                ),
                            );
                          },
                        ),/*Text(
                            "Burger \n Shop",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 30.0,
                          ),
                        ),*/
                      ),
                      Spacer(),

                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: Image.asset(
                            "assets/images/burger.png",
                          width: 100,
                        ),
                      ),
                    ],
                  ),

                ),

                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        "Today's menu",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                          fontSize: 28.0,
                        ),
                      ),
                    ),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[

                            Container(
                              padding: EdgeInsets.only(top: 10),
                              margin: EdgeInsets.only(left: 10),
                              width: 140,
                              height: 190,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[400],
                                    spreadRadius: 1.0,
                                    blurRadius: 5.0,
                                    offset: Offset(3.0, 3.0),
                                  )
                                ]
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                      "Hamburger",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.0,
                                    color: Colors.grey[500]
                                  ),
                                  ),
                                  Image.asset(
                                      "assets/images/hamburger.png",
                                      width: 100,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                            Icons.loyalty,
                                          size: 20.0,
                                          color: Colors.grey[500],
                                        ),
                                        Text(
                                            "Price : ",
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        Spacer(),

                                        Text(
                                            "2\$",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red[400],
                                          fontSize: 18.0,
                                        ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(top: 10),
                              margin: EdgeInsets.only(left: 10),
                              width: 140,
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[400],
                                      spreadRadius: 1.0,
                                      blurRadius: 5.0,
                                      offset: Offset(3.0, 3.0),
                                    )
                                  ]
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                      "Pizza",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.0,
                                        color: Colors.grey[500]
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/images/pizza.jpg",
                                    width: 100,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.loyalty,
                                          size: 20.0,
                                          color: Colors.grey[500],
                                        ),
                                        Text(
                                          "Price : ",
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        Spacer(),

                                        Text(
                                          "5\$",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red[400],
                                            fontSize: 18.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(top: 10),
                              margin: EdgeInsets.only(left: 10),
                              width: 140,
                              height: 192,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[400],
                                      spreadRadius: 1.0,
                                      blurRadius: 5.0,
                                      offset: Offset(3.0, 3.0),
                                    )
                                  ]
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                      "Cakes",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.0,
                                        color: Colors.grey[500]
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/images/cake.png",
                                    width: 90,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.loyalty,
                                          size: 20.0,
                                          color: Colors.grey[500],
                                        ),
                                        Text(
                                          "Price : ",
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        Spacer(),

                                        Text(
                                          "6\$",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red[400],
                                            fontSize: 18.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(top: 10),
                              margin: EdgeInsets.only(left: 10, right: 10),
                              width: 140,
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[400],
                                      spreadRadius: 1.0,
                                      blurRadius: 5.0,
                                      offset: Offset(3.0, 3.0),
                                    )
                                  ]
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                      "Drinks",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.0,
                                        color: Colors.grey[500]
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/images/drink.jpg",
                                    width: 72,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.loyalty,
                                          size: 20.0,
                                          color: Colors.grey[500],
                                        ),
                                        Text(
                                          "Price : ",
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        Spacer(),

                                        Text(
                                          "0.3\$",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red[400],
                                            fontSize: 18.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),

                      color: Colors.white,
                      height: MediaQuery.of(context).size.height/1.9,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

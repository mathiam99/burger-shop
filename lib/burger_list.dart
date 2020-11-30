import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BurgerList());
}

class BurgerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("All Burger"),
        backgroundColor: Colors.lightBlue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),

      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[

          ListTile(
            title: Text("Burger vegan"),
            subtitle: Text("eggs, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Cheeseburger"),
            subtitle: Text("eggs, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Steak burger"),
            subtitle: Text("eggs, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Double Steak"),
            subtitle: Text("eggs, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),
          ListTile(
            title: Text("Burger vegan"),
            subtitle: Text("eggs, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Cheeseburger"),
            subtitle: Text("eggs, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Steak burger"),
            subtitle: Text("eggs, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Double Steak"),
            subtitle: Text("eggs, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Burger vegan"),
            subtitle: Text("eggs, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),
        ],
      ),
      );
  }
}
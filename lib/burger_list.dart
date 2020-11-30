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
            title: Text("Hamburger Simple"),
            subtitle: Text("Oeuf, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Hamburger Royal"),
            subtitle: Text("Oeuf, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Double Cheese"),
            subtitle: Text("Oeuf, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Double Steak"),
            subtitle: Text("Oeuf, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),
          ListTile(
            title: Text("Hamburger Simple"),
            subtitle: Text("Oeuf, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Hamburger Royal"),
            subtitle: Text("Oeuf, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Double Cheese"),
            subtitle: Text("Oeuf, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Double Steak"),
            subtitle: Text("Oeuf, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Hamburger Simple"),
            subtitle: Text("Oeuf, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Hamburger Royal"),
            subtitle: Text("Oeuf, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Double Cheese"),
            subtitle: Text("Oeuf, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),

          ListTile(
            title: Text("Double Steak"),
            subtitle: Text("Oeuf, Steak, Cheese, Salad, Tomatoes..."),
            trailing: IconButton(icon : Icon(Icons.add_shopping_cart)),
          ),
        ],
      ),
      );
  }
}
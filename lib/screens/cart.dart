import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.yellow.shade900,
        title: Text("cart"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: (){}
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black54,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: Text("Total",style: TextStyle(color: Colors.yellow.shade900),),
              subtitle: Text("\$${320}",style: TextStyle(color: Colors.yellow.shade900),),
            )),
            Expanded(child:
            MaterialButton(onPressed: (){},
              color: Colors.yellow.shade900,
            child: Text("Check Out!",style: TextStyle(color: Colors.black),),),
            ),
          ],
        ),
      ),
    );
  }
}

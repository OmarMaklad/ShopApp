import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutterappshopapp1/screens/cart.dart';
import 'package:flutterappshopapp1/widget/categories.dart';
import 'package:flutterappshopapp1/widget/products.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 Widget image_carousel = Container(
   height:200,
   child: Carousel(
     boxFit: BoxFit.cover,
     images: [
       AssetImage('images/toy_1.jpg'),
       AssetImage('images/toy_2.jpg'),
       AssetImage('images/toy_3.jpg'),
       AssetImage('images/toy_4.jpg'),
       AssetImage('images/toy_5.jpg'),
     ],
     autoplay: true,
     dotSize: 4,
     dotBgColor: Colors.transparent,
     dotIncreasedColor: Colors.yellow.shade900,
     indicatorBgPadding: 2,
   ),
 );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.yellow.shade900,
        title: Text("Toy App"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
              color: Colors.white,
              ),
              onPressed: (){}
              ),
          IconButton(
              icon: Icon(
                  Icons.shopping_cart,
              color: Colors.white,
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Cart(), ),);
              }
              ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Omar'),
                accountEmail:Text('omarmaklad6@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child:Icon(Icons.person,color: Colors.white,),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow.shade900,
              ),
            ),
            //body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.black45,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.blue,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Order'),
                leading: Icon(Icons.shopping_basket,color: Colors.green,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Cart(), ),);

              },
              child: ListTile(
                title: Text('Shopping Card'),
                leading: Icon(Icons.shopping_cart,color:Colors.orange),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite,color: Colors.red,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.blue,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.green,),
              ),
            ),
          ],
        ),
      ),
      body:  ListView(
        children: <Widget>[
          image_carousel,
          Padding(
              padding:EdgeInsets.all(8),
            child: Text("Categories"),
          ),
          Categories(),
          Padding(
            padding:EdgeInsets.all(8),
            child: Text("Recant Products"),
          ),
         SingleChildScrollView(
           child:Container(
             margin: EdgeInsets.only(top: 8),
             height:300,
             child: Products(),
           ),
         ),
        ],
      ),
    );
  }
}

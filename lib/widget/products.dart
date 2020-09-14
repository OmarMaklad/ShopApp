import 'package:flutter/material.dart';
import 'package:flutterappshopapp1/screens/product_details.dart';

class Products extends StatefulWidget {

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list =[
    {
      "name": "Toy",
      "picture": 'images/toy_1.jpg',
      "old_price":"20",
      "price":"10",
    },
    {
      "name": "Ty",
      "picture": 'images/toy_2.jpg',
      "old_price":"20",
      "price":"10",
    },
    {
      "name": "oy",
      "picture": 'images/toy_4.jpg',
      "old_price":"20",
      "price":"10",
    },
    {
      "name": "y",
      "picture": 'images/toy_3.jpg',
      "old_price":"20",
      "price":"10",
    },
    {
      "name": "o",
      "picture": 'images/toy_3.jpg',
      "old_price":"20",
      "price":"10",
    },
    {
      "name": "T",
      "picture": 'images/toy_3.jpg',
      "old_price":"20",
      "price":"10",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (c, index)=> Single_prod(
          product_name: product_list[index]['name'],
          product_picture: product_list[index]['picture'],
          product_old_price: product_list[index]['old_price'],
          product_price: product_list[index]['price'],
        ),
    );
  }
}
class Single_prod extends StatelessWidget {

  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;
   Single_prod({
    this.product_name,
     this.product_picture,
     this.product_old_price,
     this.product_price,

});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
        child:Hero(
            tag: Text("hero"),
            child:Material(
              child: InkWell(
                onTap:()=> Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> ProductDetails(
                    product_detail_name: product_name,
                    product_detail_price: product_price,
                    product_detail_old_price: product_old_price,
                    product_detail_picture: product_picture,

                  ),
                  ),

                ),
                child: GridTile(
                  footer: Container(
                    color: Colors.white,
                   child: Row(
                     children: <Widget>[
                       Expanded(child: Text(product_name,
                         style: TextStyle(
                             fontWeight: FontWeight.bold,
                             color: Colors.yellow.shade900,
                         fontSize: 16,),
                       ),
                       ),
                       Text("\$${product_price}"),
                     ],
                   ),
                  ),
                  child: Image.asset(
                    product_picture,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
        ),
    );
  }
}

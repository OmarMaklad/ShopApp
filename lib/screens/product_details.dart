import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_old_price;
  final product_detail_price;
  ProductDetails({
    this.product_detail_name,
    this.product_detail_picture,
    this.product_detail_old_price,
    this.product_detail_price,

  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.yellow.shade900,
        title: Text(widget.product_detail_name),
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
           child: GridTile(
               child:Container(
                 color: Colors.white,
                 child: Image.asset(widget.product_detail_picture,fit: BoxFit.fill,),
               ),
             footer: Container(
               color: Colors.black54,
               child: ListTile(
                 leading: Text(widget.product_detail_name,
                 style: TextStyle(color: Colors.yellow.shade900,
                 fontWeight: FontWeight.bold,
                 fontSize: 18,),
                 ),
                 title: Row(

                   children: <Widget>[
                     Expanded
                       (child:Text("\$${widget.product_detail_old_price}",
                     style: TextStyle(color: Colors.grey,
                     decoration: TextDecoration.lineThrough,
                     ),
                     ),
                     ),
                     Expanded(
                       child:Text("\$${widget.product_detail_price}",
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         color: Colors.yellow.shade900,
                       ),),
                     ),
                   ],
                 ),
               ),
             ),
           ),
          ),
          Row(
            children: <Widget>[
              //size
              Expanded(
                  child:MaterialButton(
                      onPressed:(){
                        showDialog(context: context,
                        builder: (context)=>AlertDialog(
                          backgroundColor: Colors.black54,
                          title: Text("Size",style: TextStyle(color: Colors.yellow.shade900),),
                          content: Text("choose the size",style: TextStyle(color: Colors.yellow.shade900),),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: Text("Close",style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                        );
                      },
                    color: Colors.black,
                    textColor: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Size"),
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                  ),
              ),

              //color
              Expanded(
                child:MaterialButton(
                  onPressed:(){
                    showDialog(context: context,
                      builder: (context)=>AlertDialog(
                        backgroundColor: Colors.black54,
                        title: Text("Size",style: TextStyle(color: Colors.yellow.shade900),),
                        content: Text("choose the size",style: TextStyle(color: Colors.yellow.shade900),),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: Text("Close",style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                    );
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              //quantity

              Expanded(
                child:MaterialButton(
                  onPressed:(){
                    showDialog(context: context,
                      builder: (context)=>AlertDialog(
                        backgroundColor: Colors.black54,
                        title: Text("Size",style: TextStyle(color: Colors.yellow.shade900),),
                        content: Text("choose the size",style: TextStyle(color: Colors.yellow.shade900),),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: Text("Close",style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                    );
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Quantit"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
         Row(
           children: <Widget>[
             Expanded(
               child:MaterialButton(
                 onPressed:(){},
                 color: Colors.yellow.shade900,
                 textColor: Colors.black,
                 elevation: 0.2,
                 child:Text("Buy Now"),
               ),
             ),
             IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.yellow.shade900,), onPressed: (){},),
             IconButton(icon: Icon(Icons.favorite_border,color: Colors.yellow.shade900,), onPressed: (){},),
           ],
         ),
          Divider(color: Colors.black45,),
          ListTile(
            title: Text("Product Details",style: TextStyle(color: Colors.yellow.shade900,fontWeight: FontWeight.bold),),
            subtitle: Text(
                "hhdhghg gsvhgghs sdhashhfdaf hasfhas hsgjfjja jfhgasjgjdgg ashgjha ssdgdhasa sgdhajka shsafgas ahfs "
                    "hhdhghg gsvhgghs sdhashhfdaf hasfhas hsgjfjja jfhgasjgjdgg ashgjha ssdgdhasa sgdhajka shsafgas ahfs "
                    "hhdhghg gsvhgghs sdhashhfdaf hasfhas hsgjfjja jfhgasjgjdgg ashgjha ssdgdhasa sgdhajka shsafgas ahfs "
                    "hhdhghg gsvhgghs sdhashhfdaf hasfhas hsgjfjja jfhgasjgjdgg ashgjha ssdgdhasa sgdhajka shsafgas ahfs "
                    "hhdhghg gsvhgghs sdhashhfdaf hasfhas hsgjfjja jfhgasjgjdgg ashgjha ssdgdhasa sgdhajka shsafgas ahfs "
                    "hhdhghg gsvhgghs sdhashhfdaf hasfhas hsgjfjja jfhgasjgjdgg ashgjha ssdgdhasa sgdhajka shsafgas ahfs "
                    "hhdhghg gsvhgghs sdhashhfdaf hasfhas hsgjfjja jfhgasjgjdgg ashgjha ssdgdhasa sgdhajka shsafgas ahfs "
                    "hhdhghg gsvhgghs sdhashhfdaf hasfhas hsgjfjja jfhgasjgjdgg ashgjha ssdgdhasa sgdhajka shsafgas ahfs "
                    "hhdhghg gsvhgghs sdhashhfdaf hasfhas hsgjfjja jfhgasjgjdgg ashgjha ssdgdhasa sgdhajka shsafgas ahfs "
                    ),
          ),
          Divider(color: Colors.black45,),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(8),
                child: Text("Product Name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ),
              Padding(padding: EdgeInsets.all(5),
                child: Text(widget.product_detail_name,style:TextStyle(color: Colors.yellow.shade900,fontWeight: FontWeight.bold),),),
            ],
          ),

          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(8),
                child: Text("Product Brand", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ),

            ],
          ),

          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(8),
                child: Text("Product Condition",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
          Divider(),
          Padding(padding: EdgeInsets.all(8),
          child: Text("Product Similar",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellow.shade900),),),
          SingleChildScrollView(
            child:Container(
              margin: EdgeInsets.only(top: 8),
              height:300,
              child: Similar_productState(),
            ),
          ),
        ],
      ),
    );
  }
}

class Similar_productState extends StatefulWidget {
  @override
  _Similar_productStateState createState() => _Similar_productStateState();
}

class _Similar_productStateState extends State<Similar_productState> {
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




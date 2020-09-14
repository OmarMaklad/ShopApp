import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/toy_1.jpg',
            image_caption: 'car',
          ),

          Category(
            image_location: 'images/toy_1.jpg',
            image_caption: 'car',
          ),
          Category(
            image_location: 'images/toy_1.jpg',
            image_caption: 'car',
          ),
          Category(
            image_location: 'images/toy_1.jpg',
            image_caption: 'car',
          ),
          Category(
            image_location: 'images/toy_1.jpg',
            image_caption: 'car',
          ),
          Category(
            image_location: 'images/toy_1.jpg',
            image_caption: 'car',
          ),
          Category(
            image_location: 'images/toy_1.jpg',
            image_caption: 'car',
          ),
          Category(
            image_location: 'images/toy_1.jpg',
            image_caption: 'car',
          ),Category(
            image_location: 'images/toy_1.jpg',
            image_caption: 'car',
          ),Category(
            image_location: 'images/toy_1.jpg',
            image_caption: 'car',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: InkWell(
        onTap: (){},
        child: Column(
          children: <Widget>[
            Container(
              width: 100,
              child: ListTile(
                title: Image.asset(image_location,width: 100,height: 80,fit: BoxFit.cover,),
                subtitle: Container(
                  alignment: Alignment.center,
                    child: Text(image_caption,style: TextStyle(fontSize: 14,color: Colors.yellow.shade900),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


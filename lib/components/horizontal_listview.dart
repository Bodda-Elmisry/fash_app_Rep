import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
              imagLocation: "images/cats/accessories.png",
              imageCaption: "Accessories"),
          Category(
              imagLocation: "images/cats/dress.png",
              imageCaption: "Dress"),
          Category(
              imagLocation: "images/cats/formal.png",
              imageCaption: "Formal"),
          Category(
              imagLocation: "images/cats/informal.png",
              imageCaption: "Informal"),
          Category(
              imagLocation: "images/cats/jeans.png",
              imageCaption: "Jeans"),
          Category(
              imagLocation: "images/cats/shoe.png",
              imageCaption: "Shoe"),
          Category(
              imagLocation: "images/cats/tshirt.png",
              imageCaption: "Tshirt"),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imagLocation;
  final String imageCaption;

  Category({this.imagLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 120.0,
          child: ListTile(
            title: Image.asset(
              imagLocation,
              width: 120.0,
              height: 50.0,
            ),
            subtitle: Container(
                child: Text(imageCaption, style: TextStyle(fontSize: 12.0),),
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }
}

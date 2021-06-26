import 'package:flutter/material.dart';
import 'package:fash_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "blazer",
      "Picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "blazer",
      "Picture": "images/products/blazer2.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "red dress",
      "Picture": "images/products/dress1.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "black dress",
      "Picture": "images/products/dress2.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "hills",
      "Picture": "images/products/hills1.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "hills",
      "Picture": "images/products/hills2.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "pants",
      "Picture": "images/products/pants1.jpg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "pants",
      "Picture": "images/products/pants2.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "shoe",
      "Picture": "images/products/shoe1.jpg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "skert",
      "Picture": "images/products/skt1.jpeg",
      "old_price": 120,
      "price": 85
    },
    {
      "name": "skert",
      "Picture": "images/products/skt2.jpeg",
      "old_price": 120,
      "price": 85
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Product(
            productName: productList[index]["name"],
            productPicture: productList[index]["Picture"],
            productOldPrice: productList[index]["old_price"],
            productPrice: productList[index]["price"],
          );
        });
  }
}

class Product extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  Product(
      {this.productName,
      this.productPicture,
      this.productOldPrice,
      this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => ProductDetails(
                      productDetailName: productName,
                      productDetailPicture: productPicture,
                      productDetailOldPrice: productOldPrice,
                      productDetailPrice: productPrice,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    productName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    '\$$productPrice',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    '\$$productOldPrice',
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(
                productPicture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

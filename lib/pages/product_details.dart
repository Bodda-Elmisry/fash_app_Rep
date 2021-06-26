import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailPicture;
  final productDetailOldPrice;
  final productDetailPrice;

  ProductDetails({
    this.productDetailName,
    this.productDetailPicture,
    this.productDetailOldPrice,
    this.productDetailPrice
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Fashion App'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //Header
            UserAccountsDrawerHeader(
              accountName: Text("Bodda Elmisry"),
              accountEmail: Text("elmasry_abdallh@yahoo.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categoris"),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productDetailPicture, fit: BoxFit.fill,),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.productDetailName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(child: Text(widget.productDetailOldPrice.toString() + "\$",
                      style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(child: Text(widget.productDetailPrice.toString() + "\$",
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          //============ the first buttons ==============
          Row(
            children: <Widget>[
              //=============== size button ==============
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text("Size")),
                        Expanded(child: Icon(Icons.arrow_drop_down))
                      ],
                    ),
                  )
              ),
              //================= color button ==================
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text("Color")),
                        Expanded(child: Icon(Icons.arrow_drop_down))
                      ],
                    ),
                  )
              ),
              //=================== quantity button ================
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text("Qty")),
                        Expanded(child: Icon(Icons.arrow_drop_down))
                      ],
                    ),
                  )
              )
            ],
          ),
          //============ the secound buttons ==============
          Row(
            children: <Widget>[
              //=============== buy button ==============
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text("Buy now")
                  )
              ),
              IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.red, onPressed: (){}),
              IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: (){})
            ],
          ),

        ],
      )
    );
  }
}

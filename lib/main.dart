import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//My imports
import 'package:fash_app/components/horizontal_listview.dart';
import 'package:fash_app/components/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> GetImages() {
    List<dynamic> results = new List<dynamic>();
    //var count = 1;
    //while (count <= 7)
    //  {
    //results[count-1] = AssetImage("images/c$count.jpg");
    //    results.add(AssetImage("images/c$count.jpg"));
    //    count++;
    //  }
    results.add(AssetImage("images/c1.jpg"));
    return results;
  }

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = Container(
      height: 140.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/c1.jpg"),
          //AssetImage("images/c2.jpg"),
          AssetImage("images/c3.jpg"),
          AssetImage("images/c4.jpg"),
          AssetImage("images/c5.jpg"),
          AssetImage("images/c6.jpg"),
          AssetImage("images/c7.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.black,
        indicatorBgPadding: 2.0,
      ),
    );
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
          imageCarousel,
          // padding widget
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Categories"),
          ),
          HorizontalList(),
          // padding widget
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Products"),
          ),
          //Products Grid View
          Container(
            height: 380.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

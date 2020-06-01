import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:superstarshopping/components/horizontal_listview.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: false,
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 100),
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red.shade900,
        elevation: 0.1,
        title: Text('Super Star Shopping'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.add_shopping_cart),
              color: Colors.white,
              onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Super Star'),
              accountEmail: Text('superstar@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.blue,
              ),
            ),

            //body

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Account'),
                leading: Icon(Icons.account_box),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Purchases'),
                leading: Icon(Icons.history),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Deals'),
                leading: Icon(Icons.local_offer),
              ),
            ),

            //divider

            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Help'),
                leading: Icon(Icons.live_help),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.exit_to_app),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image transition
          image_carousel,

          //padding b/w img trans and favorites

          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Favorites'),
          ),
//horizontal list view begins here
          HorizontalList(),
        ],
      ),
    );
  }
}

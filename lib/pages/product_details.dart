import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picure;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picure});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
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
              icon: Icon(Icons.shopping_basket),
              color: Colors.white,
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picure),
              ),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "${widget.product_detail_old_price}",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.product_detail_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ******* Size button in the prod details page *******
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Size")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
              //******* Color button in prod details ******
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Color")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),

              //***** Qty button in prod details row
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Qty")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
            ],
          ),
          //******** add to cart and favorite button to checkout page *********
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red.shade900,
                    textColor: Colors.black,
                    elevation: 0.6,
                    child: new Text("Place Order")),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red.shade900,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red.shade900,
                  ),
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}

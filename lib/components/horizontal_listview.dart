import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Favorites(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'T-Shirts',
          ),
          Favorites(
            image_location: 'images/cats/dress.png',
            image_caption: 'Frocks',
          ),
          Favorites(
            image_location: 'images/cats/jeans.png',
            image_caption: 'Jeans',
          ),
          Favorites(
            image_location: 'images/cats/formal.png',
            image_caption: 'Suit',
          ),
          Favorites(
            image_location: 'images/cats/informal.png',
            image_caption: 'Jerkins',
          ),
          Favorites(
            image_location: 'images/cats/shoe.png',
            image_caption: 'Shoes',
          ),
          Favorites(
            image_location: 'images/cats/accessories.png',
            image_caption: 'Accessories',
          ),
        ],
      ),
    );
  }
}

class Favorites extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Favorites({
    this.image_location,
    this.image_caption,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 10.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                width: 100.0,
                child: Text(
                  image_caption,
                  style: TextStyle(fontSize: 100.0),
                ),
              )),
        ),
      ),
    );
  }
}

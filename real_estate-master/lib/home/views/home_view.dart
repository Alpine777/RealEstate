import 'package:flutter/material.dart';
import 'package:realestate/home/models/categories_model.dart';
import 'package:realestate/home/models/recommended_property_model.dart';
import 'package:realestate/home_categories/views/home_categories.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Real Estate",
            style: Theme.of(context).textTheme.display1,
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(86), child: _HomeTilesSection()),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            SizedBox(height: 36),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 24),
            //   child: TextFormField(
            //     style: Theme.of(context).textTheme.caption,
            //     autocorrect: false,
            //     decoration: InputDecoration(
            //       hintStyle: Theme.of(context)
            //           .textTheme
            //           .caption
            //           .copyWith(color: Colors.black38),
            //       prefixIcon: Icon(
            //         Icons.search,
            //       ),
            //       hintText: "Search",
            //     ),
            //   ),
            // ),

            Container(
              height: 8,
              color: Colors.deepPurple[50],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Recommended Property",
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
            SizedBox(height: 8),
            _RecommendedPropertiesSection(),
          ],
        ),
      ),
    );
  }
}

class _RecommendedPropertiesSection extends StatelessWidget {
  const _RecommendedPropertiesSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: <Widget>[
              for (int i = 0; i < recommendedPropertyTiles.length; i++)
                RecommendedPropertiesTile(
                  imgUrl: recommendedPropertyTiles[i].imgUrl,
                  propertyType: recommendedPropertyTiles[i].propertyType,
                  location: recommendedPropertyTiles[i].location,
                  price: recommendedPropertyTiles[i].price,
                  onTap: () {},
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class RecommendedPropertiesTile extends StatelessWidget {
  final String imgUrl;
  final String propertyType;
  final String location;
  final int price;
  RecommendedPropertiesTile(
      {this.imgUrl,
      this.propertyType,
      this.location,
      this.price,
      Null Function() onTap});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Container()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 64,
                      width: 64,
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        propertyType,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.deepPurple),
                      ),
                      Text(
                        location,
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "Rs. " + "$price",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black38,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class _HomeTilesSection extends StatelessWidget {
  const _HomeTilesSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              for (int i = 0; i < homeTiles.length; i++)
                HomeTile(
                  icon: homeTiles[i].icon,
                  name: homeTiles[i].name,
                  color: homeTiles[i].color,
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Container()));
                  },
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class HomeTile extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String name;
  final Function onTap;
  HomeTile({this.color, this.icon, this.name, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                  height: 36, width: 36, color: color, child: Icon(icon))),
          SizedBox(height: 4),
          Text(name),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:internetstoresapp/model/product.dart';
import 'package:internetstoresapp/ui/product_view.dart';

class Products extends StatefulWidget {

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  @override
  Widget build(BuildContext context) {
    return Container(

      child: new Center(
        //Loading data from json and convert to dart
        child: new FutureBuilder(
            future: DefaultAssetBundle
                .of(context)
                .loadString('assets/ISBikesData.json'),
            builder: (context, snapshot) {
              if(snapshot.connectionState != ConnectionState.done){
                return Text('Loading');
              }
              List<Product> products = parseJson(snapshot.data.toString());
              return products.isNotEmpty
                  ? new ProductList(products: products)
                  : new Center(child: Text('No information'));
            }),
      ),
    );
  }

  //Listing products
  List<Product> parseJson(String response) {
    if(response==null){
      return [];
    }
    final parsed =
        json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed.map<Product>((json) => new Product.fromJson(json)).toList();
  }
}
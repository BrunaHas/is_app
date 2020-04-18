import 'package:flutter/material.dart';
import 'package:internetstoresapp/ui/appbar.dart';
import 'package:internetstoresapp/ui/product_form.dart';
import 'package:internetstoresapp/model/product.dart';

final GlobalKey<AnimatedListState> product = GlobalKey<AnimatedListState>();

class DetailProduct extends StatefulWidget {
  final Product product;

  DetailProduct({this.product});

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InternetstoresAppBar(),

      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                //Image
                Container(
                  height: 300,
                  child: Image.network(widget.product.photoUrl,
                      height: 200, alignment: Alignment.bottomCenter),
                ),
                Divider(),
                //Adding rows to display each item
                Row(
                  children: <Widget>[
                    Text(widget.product.name,
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.tealAccent[400],
                            fontWeight: FontWeight.bold)),
                  ],
                ),

                Row(
                  children: <Widget>[
                    Text('Category: ' + widget.product.category,
                        style: new TextStyle(
                            fontSize: 18.0, color: Colors.black54)),
                  ],
                ),

                Row(
                  children: <Widget>[
                    Text('Frame Size: ' + widget.product.frameSize,
                        style: new TextStyle(
                            fontSize: 18.0, color: Colors.black54)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Price Range: ' + widget.product.priceRange,
                        style: new TextStyle(
                            fontSize: 18.0, color: Colors.black54)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Location: ' + widget.product.location,
                        style: new TextStyle(
                            fontSize: 18.0, color: Colors.black54)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Id: ' + '${widget.product.id}',
                        style: new TextStyle(
                            fontSize: 18.0, color: Colors.black54)),
                  ],
                ),
                Divider(
                  color: Colors.grey[400],
                ),
                Row(
                  children: <Widget>[

                    Flexible(
                      child: Text('Description: ' + '\n' + widget.product.description,
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.black54)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      //Button to edit product page
      floatingActionButton: FloatingActionButton(
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => new ProductForm(product: widget.product)));
        },
        child: Icon(Icons.edit),
        backgroundColor: Colors.tealAccent[400],
      ),
    );
  }
}

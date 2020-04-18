import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:internetstoresapp/model/product.dart';
import 'package:internetstoresapp/ui/popup_menu.dart';
import 'package:internetstoresapp/ui/detail_product.dart';
import 'package:internetstoresapp/ui/product_list.dart';



class ProductList extends StatefulWidget {
  final List<Product> products;

  ProductList({Key key, this.products}) : super(key: key);


  @override
    _ProductListState createState() => _ProductListState();

}

class _ProductListState extends State<ProductList> {
  @override


    Widget build(BuildContext context) {

      //Listview products
      return ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: widget.products.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(

                //Go to detail product page
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          new DetailProduct(product: widget.products[index])));
                },
                //Product information
                title: Text(
                    widget.products[index].name, style: new TextStyle(
                    fontSize: 15.0, color: Colors.tealAccent[400],
                    fontWeight: FontWeight.bold)),

                subtitle: Text(
                  'Category: ' +
                      widget.products[index].category +
                      '\n' +
                      'Frame Size: ' +
                      widget.products[index].frameSize +
                      '\n' +
                      'Location: ' +
                      widget.products[index].location,
                  style: new TextStyle(fontSize: 15.0, color: Colors.black54),
                ),

                //Product image
                leading: Image.network(widget.products[index].photoUrl,
                    height: 300, alignment: Alignment.centerLeft),

                //Delete product button
                trailing: PopupMenu(onDelete: () {
                  setState(() {
                    widget.products.removeAt(index);
                  });
                }),
              ),
            );
          });
    }
  }


import 'package:flutter/material.dart';
import 'package:internetstoresapp/ui/appbar.dart';
import 'package:internetstoresapp/model/product.dart';

class ProductForm extends StatefulWidget {
  final Product product;

  ProductForm({this.product});

  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  final formKey = GlobalKey<FormState>();// identify form fields
  TextEditingController idTextController = TextEditingController(); //edit item
  TextEditingController frameSizeTextController = TextEditingController();
  TextEditingController categoryTextController = TextEditingController();
  TextEditingController locationTextController = TextEditingController();
  TextEditingController nameTextController = TextEditingController();
  TextEditingController photoUrlTextController = TextEditingController();
  TextEditingController priceRangeTextController = TextEditingController();
  TextEditingController descriptionTextController = TextEditingController();

  @override
  void initState() {
    if (widget.product != null) {
      //Pre filled form for edit product
       frameSizeTextController.text = widget.product.frameSize;
      categoryTextController.text = widget.product.category;
      locationTextController.text = widget.product.location;
      nameTextController.text = widget.product.name;
      photoUrlTextController.text = widget.product.photoUrl;
      priceRangeTextController.text = widget.product.priceRange;
      descriptionTextController.text = widget.product.description;
    }
    super.initState();
    }

      @override
      //Remove resources used by object
      void dispose() {
        frameSizeTextController.dispose();
        categoryTextController.dispose();
        locationTextController.dispose();
        nameTextController.dispose();
        photoUrlTextController.dispose();
        priceRangeTextController.dispose();
        descriptionTextController.dispose();
        super.dispose();
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: InternetstoresAppBar(),
          body: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Material(
                            elevation: 0.0,
                            child: Text(
                                widget.product == null
                                    ? "Add Product"
                                    : "Edit Product",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18.0,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8.0, 6.0, 8.0, 6.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextFormField(
                                controller: nameTextController,
                                decoration:
                                new InputDecoration.collapsed(hintText: "Name"),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Please enter text";
                                  }
                                  return null;
                                },

                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8.0, 6.0, 8.0, 6.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextFormField(
                                controller: categoryTextController,
                                decoration: new InputDecoration.collapsed(
                                  hintText: "Category",
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Please enter text";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8.0, 6.0, 8.0, 6.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextFormField(
                                controller: frameSizeTextController,
                                decoration: new InputDecoration.collapsed(
                                  hintText: "Frame Size",
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Please enter text";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8.0, 6.0, 8.0, 6.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextFormField(
                                controller: priceRangeTextController,
                                decoration: new InputDecoration.collapsed(
                                  hintText: "Price Range",
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Please enter text";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8.0, 6.0, 8.0, 6.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextFormField(
                                controller: locationTextController,
                                decoration: new InputDecoration.collapsed(
                                  hintText: "Location",
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Please enter text";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
//
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8.0, 6.0, 8.0, 6.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),

                              child: TextFormField(
                                controller: descriptionTextController,
                                maxLength: 500,
                                maxLines: 5,
                                decoration: new InputDecoration.collapsed(
                                  hintText: "Description",
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Please enter text";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8.0, 6.0, 8.0, 6.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextFormField(
                                controller: photoUrlTextController,
                                decoration: new InputDecoration.collapsed(
                                  hintText: "Photo Url",
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Please enter url image";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              8.0, 6.0, 8.0, 6.0),
                          child: RaisedButton(
                            child: Text('SAVE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                )),
                            color: Colors.tealAccent[400],
                            elevation: 0.0,
                            onPressed: () {
                              // Validate fields
                              if (formKey.currentState.validate()) {
                                // TODO: Save action not working
//                             => editProduct(
//                           frameSizeTextController.text.toString(),
//                            categoryTextController.text.toString(),
//                            locationTextController.text.toString(),
//                            nameTextController.text.toString(),
//                            photoUrlTextController.text.toString(),
//                            priceRangeTextController.text.toString(),
//                            descriptionTextController.text.toString(),
//                            TODO: Implement action message to confirmation
//                              Scaffold
//                                  .of(context)
//                                  .showSnackBar(SnackBar(content: Text('Data Saved')));
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    }


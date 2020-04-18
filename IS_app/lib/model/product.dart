
class Product {
  final int id;
  final String frameSize;
  final String category;
  final String location;
  final String name;
  final String photoUrl;
  final String priceRange;
  final String description;

  Product({
    this.id,
    this.frameSize,
    this.category,
    this.location,
    this.name,
    this.photoUrl,
    this.priceRange,
    this.description,
  });


  //Convert json file to list
  factory Product.fromJson(Map<String, dynamic> json) {
    return new Product(
      id: json['id'] as int,
      frameSize: json['frameSize'] as String,
      category: json['category'] as String,
      location: json['location'] as String,
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String,
      priceRange: json['priceRange'] as String,
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'frameSize': frameSize,
    'category': category,
    'location': location,
    'name': name,
    'photoUrl': photoUrl,
    'priceRange': priceRange,
    'description': description,
  };



}




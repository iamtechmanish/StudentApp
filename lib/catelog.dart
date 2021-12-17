import 'dart:convert';

class CatelogModel {
  static List<Item> products = [

   Item(
        id: 1,
        name: "iPhone 10",
        desc: "Apple iphone 12th Generation",
        color: "#6DECE0",
        image:
            "https://www.reliancedigital.in/medias/Apple-iPhone-12-128GB-491996644-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3w1MzY2Mjd8aW1hZ2UvanBlZ3xpbWFnZXMvaDQwL2hiYi85NTMwMDA1MTU5OTY2LmpwZ3xmNjY0NjAyYjMyNmQ2MWE0YmRiMzMzY2EyMjgyZjVkYjBiODY2YWExMzY2MTdkNTM0MzcxMDgzNTAxZWI3ODBl",

        price: 1)
    
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String color;
  final String image;
  final num price;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.color,
    required this.image,
    required this.price,
  });



  



  


     
       

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    String? color,
    String? image,
    num? price,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      color: color ?? this.color,
      image: image ?? this.image,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'color': color,
      'image': image,
      'price': price,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      desc: map['desc'] ?? '',
      color: map['color'] ?? '',
      image: map['image'] ?? '',
      price: map['price'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, color: $color, image: $image, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Item &&
      other.id == id &&
      other.name == name &&
      other.desc == desc &&
      other.color == color &&
      other.image == image &&
      other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      color.hashCode ^
      image.hashCode ^
      price.hashCode;
  }
}

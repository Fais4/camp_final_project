class Car {
  int? id;
  String? make;
  String? model;
  int? price;
  String? image;

  Car({required this.id, this.make, this.model, this.price, this.image});

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
        id: json["id"],
        make: json["make"],
        model: json["model"],
        price: json["price"],
        image: json["image"]);
  }
}

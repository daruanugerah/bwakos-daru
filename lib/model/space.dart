
class SpaceModel {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchen;
  int numberOfBedroom;
  int numberOfCupboard;

  SpaceModel({
    this.id,
    this.name,
    this.imageUrl,
    this.price,
    this.city,
    this.country,
    this.rating,
    this.address,
    this.phone,
    this.mapUrl,
    this.photos,
    this.numberOfKitchen,
    this.numberOfBedroom,
    this.numberOfCupboard,
  });

  SpaceModel.fromJson(json) {
    id = json["id"];
    name = json["name"];
    city = json["city"];
    country = json["country"];
    price = json["price"];
    imageUrl = json["image_url"];
    rating = json["rating"];
    address = json["address"];
    phone = json["phone"];
    mapUrl = json["map_url"];
    //photos = List<String>.from(json["photos"].map((x) => x));
    photos = json['photos'];
    numberOfKitchen = json["number_of_kitchens"];
    numberOfBedroom = json["number_of_bedrooms"];
    numberOfCupboard = json["number_of_cupboards"];
  }
}

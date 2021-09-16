// class RecommendedPropertyModel {
//   int id;
//   String imgUrl;
//   String propertyType;
//   String location;
//   int price;

//   RecommendedPropertyModel(
//       {this.id, this.imgUrl, this.propertyType, this.location, this.price});

//   RecommendedPropertyModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     imgUrl = json['imgUrl'];
//     propertyType = json['propertyType'];
//     location = json['location'];
//     price = json['price'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['imgUrl'] = this.imgUrl;
//     data['propertyType'] = this.propertyType;
//     data['location'] = this.location;
//     data['price'] = this.price;
//     return data;
//   }
// }

class RecommendedPropertiesModel {
  final String propertyType;
  final String imgUrl;
  final String location;
  final int price;

  RecommendedPropertiesModel(
      {this.propertyType, this.imgUrl, this.location, this.price});
}

List<RecommendedPropertiesModel> recommendedPropertyTiles = [
  RecommendedPropertiesModel(
      propertyType: 'Land',
      imgUrl: 'https://jooinn.com/images/nature-319.jpg',
      location: 'Dharan, Sunsari',
      price: 275000),
  RecommendedPropertiesModel(
      propertyType: 'Building',
      imgUrl: 'https://jooinn.com/images/nature-background-15.jpg',
      location: 'Ithari, Sunsari',
      price: 2705000),
  RecommendedPropertiesModel(
      propertyType: 'Farm',
      imgUrl: 'https://jooinn.com/images/seaport-during-daytime.jpg',
      location: 'Salakpur, Morang',
      price: 2725000),
  RecommendedPropertiesModel(
      propertyType: 'Office',
      imgUrl: 'https://jooinn.com/images/nature-background.jpg',
      location: 'Dhankuta, Dhankuta',
      price: 27000),
  RecommendedPropertiesModel(
      propertyType: 'Land',
      imgUrl:
          'https://all4desktop.com/data_images/original/4238673-nature-background.jpg',
      location: 'Aakhibhuin, Shankhuwasabha',
      price: 5000),
];

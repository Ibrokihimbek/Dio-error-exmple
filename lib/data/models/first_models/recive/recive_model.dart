class ReciveModel {
  String brandImage;
  String name;
  String location;

  ReciveModel({
    required this.brandImage,
    required this.name,
    required this.location,
  });

  factory ReciveModel.fromJson(Map<String, dynamic> jsonData) {
    return ReciveModel(
      brandImage: jsonData['brand_image'] as String? ?? '',
      name: jsonData['name'] as String? ?? '',
      location: jsonData['location'] as String? ?? '',
    );
  }
}
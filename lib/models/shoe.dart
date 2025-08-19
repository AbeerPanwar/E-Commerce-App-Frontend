class Shoe {
  final String name;
  final String price;
  final String imagePath;
  final String description;
  String? size;
  final double? imageSize;

  Shoe({required this.name, 
    required this.price, 
    required this.imagePath, 
    required this.description,
    this.size,
    this.imageSize,
  });
}
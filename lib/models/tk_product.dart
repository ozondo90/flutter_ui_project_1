class TkProduct {
  final int id;
  final String name;
  final double price;
  late final bool isSelected;
  final bool isliked;
  final String image;
  final String category;

  TkProduct({
    required this.id,
    required this.name,
    required this.price,
    this.isSelected = false,
    this.isliked = false,
    required this.image,
    required this.category,
  });

  get rating => null;

  get votes => null;
}

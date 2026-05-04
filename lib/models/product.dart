
class Product {
  final int id;
  final String title;
  final String? slug;
  final double price;
  final double? compareAtPrice;
  final int? stockQuantity;
  final String? description;
  final String? promoTag;
  final int? categoryId;
  final List<String> images;

  Product({
    required this.id,
    required this.title,
    this.slug,
    required this.price,
    this.compareAtPrice,
    this.stockQuantity,
    this.description,
    this.promoTag,
    this.categoryId,
    this.images = const [],
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      title: map['title'],
      slug: map['slug'],
      price: (map['price'] as num).toDouble(),
      compareAtPrice: map['compare_at_price'] != null ? (map['compare_at_price'] as num).toDouble() : null,
      stockQuantity: map['stock_quantity'],
      description: map['description'],
      promoTag: map['promo_tag'],
      categoryId: map['category_id'],
      images: (map['product_images'] as List<dynamic>?)?.map((e) => e['image_url'] as String).toList() ?? [],
    );
  }
}

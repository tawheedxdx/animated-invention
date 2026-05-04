import 'package:myapp/models/product.dart';

class CartItem {
  final int id;
  final Product product;
  final int quantity;

  CartItem({
    required this.id,
    required this.product,
    required this.quantity,
  });

  factory CartItem.fromMap(Map<String, dynamic> map, Product product) {
    return CartItem(
      id: map['id'],
      product: product,
      quantity: map['quantity'],
    );
  }

  double get subtotal => product.price * quantity;
}

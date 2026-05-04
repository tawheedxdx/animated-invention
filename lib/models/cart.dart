import 'package:myapp/models/cart_item.dart';

class Cart {
  final int id;
  final List<CartItem> items;

  Cart({required this.id, this.items = const []});

  double get subtotal {
    return items.fold(0, (sum, item) => sum + item.subtotal);
  }

  int get totalItems {
    return items.fold(0, (sum, item) => sum + item.quantity);
  }

  factory Cart.fromMap(Map<String, dynamic> map, List<CartItem> items) {
    return Cart(
      id: map['id'],
      items: items,
    );
  }
}

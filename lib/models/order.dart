
class Order {
  final String id;
  final String orderNumber;
  final String userId;
  final double grandTotal;
  final String orderStatus;
  final String paymentStatus;
  final String shippingFullName;
  final String shippingPhone;
  final String shippingLine1;
  // Add other fields as necessary

  Order({
    required this.id,
    required this.orderNumber,
    required this.userId,
    required this.grandTotal,
    required this.orderStatus,
    required this.paymentStatus,
    required this.shippingFullName,
    required this.shippingPhone,
    required this.shippingLine1,
  });

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'],
      orderNumber: map['order_number'],
      userId: map['user_id'],
      grandTotal: (map['grand_total'] as num).toDouble(),
      orderStatus: map['order_status'],
      paymentStatus: map['payment_status'],
      shippingFullName: map['shipping_full_name'],
      shippingPhone: map['shipping_phone'],
      shippingLine1: map['shipping_line1'],
    );
  }
}

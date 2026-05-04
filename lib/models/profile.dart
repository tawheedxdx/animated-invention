
class Profile {
  final String id;
  final String? fullName;
  final String? phone;
  final int loyaltyPoints;

  Profile({
    required this.id,
    this.fullName,
    this.phone,
    this.loyaltyPoints = 0,
  });

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      id: map['id'],
      fullName: map['full_name'],
      phone: map['phone'],
      loyaltyPoints: map['loyalty_points'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'full_name': fullName,
      'phone': phone,
      'loyalty_points': loyaltyPoints,
    };
  }
}

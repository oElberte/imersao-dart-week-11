class BarbershopModel {
  final int id;
  final String name;
  final String email;
  final List<String> openingDays;
  final List<int> openingHours;

  BarbershopModel({
    required this.id,
    required this.name,
    required this.email,
    required this.openingDays,
    required this.openingHours,
  });

  factory BarbershopModel.fromMap(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'name': String name,
        'email': String email,
        'opening_days': final List<String> openingDays,
        'opening_hours': final List<int> openingHours,
      } =>
        BarbershopModel(
          id: id,
          name: name,
          email: email,
          openingDays: openingDays,
          openingHours: openingHours,
        ),
      _ => throw ArgumentError('Invalid Json'),
    };
  }
}

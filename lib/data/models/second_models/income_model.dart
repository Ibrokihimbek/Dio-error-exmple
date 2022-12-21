class IncomeModel {
  int id;
  String incomeType;
  String icon;
  String color;

  IncomeModel({
    required this.id,
    required this.incomeType,
    required this.icon,
    required this.color,
  });

  factory IncomeModel.fromJson(Map<String, dynamic> jsonData) {
    return IncomeModel(
      id: jsonData['id'] as int? ?? 0,
      incomeType: jsonData['income_type'] as String? ?? '',
      icon: jsonData['icon'] as String? ?? '',
      color: jsonData['color'] as String? ?? '',
    );
  }
}

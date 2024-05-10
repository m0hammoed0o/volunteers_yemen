class Room {
  final int id;
  final String name;
  final String status;

  Room({required this.id, required this.name, required this.status});

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      id: json['id'],
      name: json['name'],
      status: json['status'],
    );
  }
}

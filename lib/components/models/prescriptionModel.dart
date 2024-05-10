class Prescription {
  final int id;
  final String provider;
  final String dateIssued;
  final List<Medication>? medications;
  final String? notes;

  Prescription({
    required this.id,
    required this.provider,
    required this.dateIssued,
    required this.medications,
    required this.notes,
  });

  factory Prescription.fromJson(Map<String, dynamic> json) {
    return Prescription(
      id: json['id'],
      provider: json['provider'],
      dateIssued: json['date_issued'],
      medications: List<Medication>.from(json['medications'].map((x) => Medication.fromJson(x))),
      notes: json['notes'],
    );
  }
}

class Medication {
  final String? name;
  final String? dosage;
  final String? frequency;
  final String? startDate;
  final String? endDate;

  Medication({
    required this.name,
    required this.dosage,
    required this.frequency,
    required this.startDate,
    required this.endDate,
  });

  factory Medication.fromJson(Map<String, dynamic> json) {
    return Medication(
        name: json['name'],
        dosage: json['dosage'],
        frequency: json['frequency'],
        startDate: json['startDate'],
        endDate: json['endDate'],
    );
  }
}
class Opportunity {
  int id;
  String name;
  String title;
  String oppPicture;
  String description;
  String organization;
  DateTime startDate;
  DateTime endDate;
  String startTime;
  String endTime;
  DateTime applyStartDate;
  DateTime applyEndDate;
  List<String> skills; // Change to List<String> for skills
  List<String> languages; // Add a list of languages
  String status;
  String genderRequired;
  int ageMin;
  int ageMax;
  int numberOfVolunteers;
  Location location;
  int volunteerAppliedCount;
  int volunteerHours;
  String organizationProfileImage;

  Opportunity({
    required this.id,
    required this.name,
    required this.title,
    required this.oppPicture,
    required this.description,
    required this.organization,
    required this.startDate,
    required this.endDate,
    required this.startTime,
    required this.endTime,
    required this.applyStartDate,
    required this.applyEndDate,
    required this.skills,
    required this.languages, // Add languages parameter
    required this.status,
    required this.genderRequired,
    required this.ageMin,
    required this.ageMax,
    required this.numberOfVolunteers,
    required this.location,
    required this.volunteerAppliedCount,
    required this.volunteerHours,
    required this.organizationProfileImage,
  });

  factory Opportunity.fromJson(Map<String, dynamic> json) => Opportunity(
        id: json["id"],
        name: json["name"],
        title: json["title"],
        oppPicture: json["opp_picture"],
        description: json["description"],
        organization: json["organization"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        startTime: json["start_time"],
        endTime: json["end_time"],
        applyStartDate: DateTime.parse(json["apply_start_date"]),
        applyEndDate: DateTime.parse(json["apply_end_date"]),
        skills: List<String>.from(json["skills"]
            .map((x) => x["name"])), // Extract name from each skill object
        languages: List<String>.from(json["language"]
            .map((x) => x["name"])), // Extract name from each language object
        status: json["status"],
        genderRequired: json["gender_required"],
        ageMin: json["age_min"],
        ageMax: json["age_max"],
        numberOfVolunteers: json["number_of_volunteers"],
        location: Location.fromJson(json["location"]),
        volunteerAppliedCount: json["volunteer_applied_count"],
        volunteerHours: json["volunteer_hours"],
        organizationProfileImage: json["organization_profile_image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "title": title,
        "opp_picture": oppPicture,
        "description": description,
        "organization": organization,
        "start_date": startDate.toIso8601String(),
        "end_date": endDate.toIso8601String(),
        "start_time": startTime,
        "end_time": endTime,
        "apply_start_date": applyStartDate.toIso8601String(),
        "apply_end_date": applyEndDate.toIso8601String(),
        "skills": skills, // Directly include skills list
        "language": languages, // Directly include languages list
        "status": status,
        "gender_required": genderRequired,
        "age_min": ageMin,
        "age_max": ageMax,
        "number_of_volunteers": numberOfVolunteers,
        "location": location.toJson(),
        "volunteer_applied_count": volunteerAppliedCount,
        "volunteer_hours": volunteerHours,
        "organization_profile_image": organizationProfileImage,
      };
}

class Location {
  String opportunity;
  String city;
  double latitude;
  double longitude;

  Location({
    required this.opportunity,
    required this.city,
    required this.latitude,
    required this.longitude,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        opportunity: json["opportunity"],
        city: json["city"],
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "opportunity": opportunity,
        "city": city,
        "latitude": latitude,
        "longitude": longitude,
      };
}

class Application {
  final int opportunityId;
  final String message;

  Application({
    required this.opportunityId,
    required this.message,
  });

  factory Application.fromJson(Map<String, dynamic> json) {
    return Application(
      opportunityId: json['opportunity'],
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'opportunity': opportunityId,
      'message': message,
    };
  }
}

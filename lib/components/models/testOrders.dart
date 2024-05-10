class DiagnosisRequest {
  String patient;
  String provider;
  String requestKey;
  String requestDate;
  List<TestOrder> testOrders;
  String status;
  String notes;

  DiagnosisRequest({
    required this.patient,
    required this.provider,
    required this.requestKey,
    required this.requestDate,
    required this.testOrders,
    required this.status,
    required this.notes,
  });

  factory DiagnosisRequest.fromJson(Map<String, dynamic> json) {
    var list = json['test_orders'] as List;
    List<TestOrder> testOrdersList = list.map((i) => TestOrder.fromJson(i)).toList();

    return DiagnosisRequest(
      patient: json['patient'],
      provider: json['provider'],
      requestKey: json['request_key'],
      requestDate: json['request_date'],
      testOrders: testOrdersList,
      status: json['status'],
      notes: json['notes'],
    );
  }
}

class TestOrder {
  int diagnosisRequest;
  String testName;
  String desc;

  TestOrder({required this.diagnosisRequest, required this.testName, required this.desc});

  factory TestOrder.fromJson(Map<String, dynamic> json) {
    return TestOrder(
      diagnosisRequest: json['diagnosis_request'],
      testName: json['test_name'],
      desc: json['desc'],
    );
  }
}

class TestResult {
  final String testName;
  final String? pdfFilePath; 
  final String? notes; 
  final String time; 
  TestResult({
    required this.testName,
    required this.time, 
    this.pdfFilePath, 
    this.notes,
  });
}

class SplashModel {
  final String title;
  SplashModel({required this.title});

  Future<void> loadResources() async {
    await Future.delayed(Duration(seconds: 3));
  }
}

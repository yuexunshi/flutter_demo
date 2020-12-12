class Api {
  int _age = 0;
  Future<int> getAge() async {
    await Future.delayed(Duration(seconds: 1));
    return _age++;
  }
}

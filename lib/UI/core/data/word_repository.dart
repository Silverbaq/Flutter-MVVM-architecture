class WordRepository {
  final _numbers = Stream<String>.periodic(const Duration(seconds: 1), (x) => x.toString());

  Stream<String> fetchWords() {
    return _numbers;
  }
}
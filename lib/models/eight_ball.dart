import 'dart:math';

class EightBall {
  final Random _random = Random();
  final List<String> _answers;
  int _currentIndex = 0;

  EightBall(this._answers);

  get answer => _answers[_currentIndex];

  void shake() {
    _currentIndex = _random.nextInt(_answers.length);
  }
}
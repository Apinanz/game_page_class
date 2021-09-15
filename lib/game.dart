import 'dart:math';

class Game {
  final int _answer;
  int _totalGursses = 0;
  List<String> answerList = [];

  Game() : _answer = Random().nextInt(100) + 1 {
    print('The answer is : $_answer');
  }

  int get totalGuesses {
    return _totalGursses;
  }

  int get answer {
    return _answer;
  }

  String toString() {
    String numList = '';
    for (var item =0; item<answerList.length; item++) {
      if(answerList.length-1==item){
        numList += answerList[item];
      }else{
        numList += answerList[item]+"-->";
      }

    }
    return numList;
  }

  int doGuess(int num) {
    _totalGursses++;
    answerList.add(num.toString());
    if (num > _answer) {
      return 1;
    } else if (num < _answer) {
      return -1;
    } else {
      return 0;
    }
  }
}

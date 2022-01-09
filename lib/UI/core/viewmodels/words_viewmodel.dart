import 'dart:async';

import 'package:flutter_mvvm_demo/UI/core/data/word_repository.dart';
import 'package:flutter_mvvm_demo/UI/core/enums/view_state.dart';
import 'package:flutter_mvvm_demo/UI/core/viewmodels/base_model.dart';
import 'package:flutter_mvvm_demo/UI/helpers/dependency_assembly.dart';

class WordsViewModel extends BaseModel {
  final WordRepository wordRepository = dependencyAssembler<WordRepository>();
  final List<String> _words = <String>[];

  late StreamSubscription<String> _wordsStream;

  List<String> get words {
    return _words;
  }

  _addWord(String word) {
    applyState(ViewState.Busy);
    _words.add(word);
    applyState(ViewState.Idle);
  }

  fetchWords() {
     _wordsStream = wordRepository.fetchWords().listen((event) {
      _addWord(event);
    });
  }

  @override
  void dispose() {
    _wordsStream.cancel();
    super.dispose();
  }
}

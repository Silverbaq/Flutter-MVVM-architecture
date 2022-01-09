import 'package:flutter/material.dart';
import 'package:flutter_mvvm_demo/UI/core/viewmodels/words_viewmodel.dart';

import 'base_view.dart';

class WordsListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BaseView<WordsViewModel>(
      onModelReady: (wordsViewModel) => wordsViewModel.fetchWords(),
      builder: (context, wordsViewModel, child) => ListView.builder(
          itemCount: wordsViewModel.words.length,
          itemBuilder: (context, index) {
            return Center(child: Text(wordsViewModel.words[index]));
          }),
    );

  }
}

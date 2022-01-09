import 'package:flutter_mvvm_demo/UI/core/data/word_repository.dart';
import 'package:flutter_mvvm_demo/UI/core/viewmodels/words_viewmodel.dart';
import 'package:get_it/get_it.dart';

GetIt dependencyAssembler = GetIt.instance;

void setupDependencyAssembler() {
  dependencyAssembler.registerLazySingleton(() => WordRepository());
  dependencyAssembler.registerFactory(() => WordsViewModel());
}
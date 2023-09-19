import 'package:equatable/equatable.dart';

import '../model/welcome_model.dart';

abstract class CubitStates extends Equatable {}

class LoadingState extends CubitStates {
  @override
  List<Object> get props => [];
}

class WelcomeLoadedState extends CubitStates {
  WelcomeLoadedState({required this.welcomes});
  final List<WelcomeModel> welcomes;
  @override
  List<Object> get props => [welcomes];
}
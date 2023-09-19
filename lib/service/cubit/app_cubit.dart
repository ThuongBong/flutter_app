import 'package:abc/service/cubit/authentication_serivice.dart';
import 'package:abc/service/data_service.dart';
import 'package:abc/states/cubit_state.dart';
import 'package:abc/states/initial_state.dart';
import 'package:abc/states/app_cubit_state.dart';
import 'package:bloc/bloc.dart';

import '../../model/place_model.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.dataServices, required this.authService}) : super(InitialState()){
    loadWelcomePage();
  }
  final DataServices dataServices;
  final AuthenticationService authService;

  var destinations;
  late List<PlaceModel> places;
  late List<PlaceModel> favoritePlaces = [];
  var welcome;
  var userModel;

  void loadWelcomePage() async {
    try {
      emit(WelcomeLoadedState(welcomes: welcome));
    }catch(e) {
      print(e);
    }
  }

  void getAllDestination() async {
    try {
      emit(LoadingState());
      destinations = await dataServices.getInfoDestination();
      emit(HomeLoadedState(destinations: destinations));
    }catch(e) {
      print(e);
    }
  }
}
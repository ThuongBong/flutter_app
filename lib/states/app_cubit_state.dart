import 'package:abc/states/cubit_state.dart';

import '../model/diestination_model.dart';

class HomeLoadedState extends CubitStates {
  HomeLoadedState({required this.destinations, this.textSearch = ""});
  final List<DestinationModel> destinations;
  final String? textSearch;
  @override
  List<Object> get props => [destinations];
}
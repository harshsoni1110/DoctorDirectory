import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_network/core/NetworkService.dart';
import 'package:flutter_network/ui/specialties/data/Speciality.dart';
import 'package:flutter_network/ui/specialties/data/Specialties.dart';

enum SpecialityViewStates {
  SHOULD_FETCH,
  IS_SPECIALITY_FETCHING,
  IS_SPECIALITY_FETCHING_IDLE
}

class SpecialityViewModel extends ChangeNotifier {
  Response<Specialties> specialtiesResponse;
  Specialties specialties;

  List<Speciality> listOfSpeciality = new List();
  bool _isLoading = false;

  int pageNo = 0;
  SpecialityViewStates viewState = SpecialityViewStates.SHOULD_FETCH;

  SpecialityViewModel() {
    _isLoading = true;
  }

  startLoading() {
    _isLoading = true;
    notifyListeners();
  }

  stopLoading() {
    _isLoading = false;
    notifyListeners();
  }

  isLoading() {
    return _isLoading;
  }

  Future<void> getSpecialties() async {
    startLoading();
    try {
      specialtiesResponse = await NetworkService.create().getSpecialties(
          user_key: "356bbdc59fdfcdd9edc65f3ccb698a06",
          skip: listOfSpeciality.length);
      if (specialtiesResponse.statusCode == 200) {
        specialties = specialtiesResponse.body;
        listOfSpeciality.addAll(specialties.data);
      }
      stopLoading();
    } catch (e) {
      stopLoading();
    }
  }
}

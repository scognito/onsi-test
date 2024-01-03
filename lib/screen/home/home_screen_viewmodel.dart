import 'package:flutter/cupertino.dart';
import 'package:onsi/model/data.dart';

class HomeScreenViewModel extends ChangeNotifier {
  DataModel? dataModel;
  bool isLoading = true;

  HomeScreenViewModel() {
    fetchData();
  }

  Future<void> fetchData() async {
    setLoading = true;
    // simulating network delay
    await Future.delayed(const Duration(seconds: 2));
    dataModel = DataModel.dummy();
    setLoading = false;
  }

  set setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }
}

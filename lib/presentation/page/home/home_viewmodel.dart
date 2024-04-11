import 'package:flutter/cupertino.dart';
import 'package:state_mn/data/remote/repository/network_repository_impl.dart';

class HomeViewModel extends ChangeNotifier {
  final _repo = NetworkRepositoryImpl();


}
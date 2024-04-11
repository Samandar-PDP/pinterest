import 'package:state_mn/domain/model/pin.dart';

abstract class NetworkRepository {
  Future<List<Pin>> getImages();
}
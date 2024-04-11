import 'package:state_mn/domain/model/pin.dart';

abstract class LocalRepository {
  Future<void> savePin(Pin pin);
  Future<List<Pin>> getLocalPins();
}
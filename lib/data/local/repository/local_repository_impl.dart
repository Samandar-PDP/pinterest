import 'package:state_mn/data/local/db/sql_helper.dart';
import 'package:state_mn/domain/model/pin.dart';
import 'package:state_mn/domain/repository/local_repository.dart';

class LocalRepositoryImpl extends LocalRepository {
  @override
  Future<List<Pin>> getLocalPins() {
    //SqlHelper.save
    // TODO: implement getLocalPins
    throw UnimplementedError();
  }

  @override
  Future<void> savePin(Pin pin) {
    // TODO: implement savePin
    throw UnimplementedError();
  }

}
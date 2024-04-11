import 'package:state_mn/data/remote/model/pin_response.dart';
import 'package:state_mn/data/remote/network/api_service.dart';
import 'package:state_mn/domain/mapper/pin_mapper.dart';
import 'package:state_mn/domain/model/pin.dart';
import 'package:state_mn/domain/repository/network_repository.dart';
import 'package:state_mn/util/constants.dart';

class NetworkRepositoryImpl extends NetworkRepository {
  final _api = ApiService(buildDioClient(Constants.baseUrl));
  @override
  Future<List<Pin>> getImages() async {
    try {
      final pinResponse = await _api.getImages();
      final List<Pin> pins = [];
      for (var element in pinResponse) {
        pins.add(element.toPin());
      }
      return pins;
    } catch(e) {
      print(e);
      return [];
    }
  }
}
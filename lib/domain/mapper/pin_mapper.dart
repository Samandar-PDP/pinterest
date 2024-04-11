import 'package:state_mn/data/remote/model/pin_response.dart';
import 'package:state_mn/domain/model/pin.dart';

extension PinMap on PinResponse {
  Pin toPin() {
    return Pin(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      promotedAt: promotedAt,
      width: width,
      height: height,
      color: color,
      description: description,
      image: urls?.regular,
      userId: user?.id,
      userUpdatedAt: user?.updatedAt,
      username: user?.username,
      name: user?.name,
      bio: user?.bio,
      profileImage: user!.profileImage.toString()
    );
  }
}
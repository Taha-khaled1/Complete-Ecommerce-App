import 'package:ecomm/application_layer/ShardFunction/statusrequst.dart';

handlingData(response) {
  if (response is StatusRequest) {
    return response;
  } else {
    return StatusRequest.success;
  }
}

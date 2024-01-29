import 'dart:async';

class ConnectivityModel {
  String status;
  StreamSubscription? connectivityStream;

  ConnectivityModel({
    required this.status,
    this.connectivityStream,
  });
}

import 'package:fecal_analyzer_server_client/fecal_analyzer_server_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

class ServerpodClient {
  static late Client client;

  static void initialize() {
    client = Client('http://localhost:8080/')
      ..connectivityMonitor = FlutterConnectivityMonitor();
  }
}
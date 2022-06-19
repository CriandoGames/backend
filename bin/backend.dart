import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

import 'server_handle.dart';

void main() async {
  ServerHandle serverHandle = ServerHandle();

  final server = await io.serve(serverHandle.handle, 'localhost', 8080);

  print('Serving at http://${server.address.host}:${server.port}');
}

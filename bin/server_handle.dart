import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class ServerHandle {
  Handler get handle {
    final route = Router();

    route.get('/', (request) async {
      return Response.ok('Hello, world!');
    });

    route.get('/ola/<id>', (request, String id) async {
      return Response.ok('Ola, $id !');
    });

    return route;
  }
}

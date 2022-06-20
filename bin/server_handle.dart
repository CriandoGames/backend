import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class ServerHandle {
  Handler get handle {
    final route = Router();

    route.get('/', (request) async {
      return Response.ok('Hello, world!');
    });

    //req per Path
    route.get('/ola/<id>', (request, String id) async {
      return Response.ok('Ola, $id !');
    });

    //req per Query
    route.get('/ola', (request) async {
      String? id = request.url.queryParameters['id'];
      return Response.ok('Ola, $id !');
    });

    return route;
  }
}

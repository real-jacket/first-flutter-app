import 'package:fluro/fluro.dart';
import './route_handles.dart';

final router = Router();

void routes(Router route){
  final String home = '/home';
  final String one ='/one';
  final String two = '/two';
  final String three = '/three';
  // final String four = '/four';

  route.define(home,handler: homeHandler);
  route.define(one,handler:oneHandler);
  route.define(two,handler:twoHandler);
  route.define(three,handler: threeHandler);

}
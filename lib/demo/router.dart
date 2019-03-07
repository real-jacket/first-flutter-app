import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../routes/routes.dart';
import '../ui/button.dart';

// final router = Router();

// var usersHandler =Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
//   return Text(params["id"][0]);
// });

// void defineRoutes(Router router){
//   router.define("/users/:id",handler:usersHandler,transitionType: TransitionType.inFromLeft);
// }

class Newrouter extends StatelessWidget {
  Newrouter() {
    routes(router);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Router Demo",
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Home'),
              onPressed: () {
                router.navigateTo(context, "/home",
                    transition: TransitionType.fadeIn);
              },
            ),
            FlatButton(
              child: Text('One'),
              onPressed: () {
                router.navigateTo(context, "/one",
                    transition: TransitionType.fadeIn);
              },
            ),
            FlatButton(
              child: Text('Two'),
              onPressed: () {
                router.navigateTo(context, "/two",
                    transition: TransitionType.inFromLeft);
              },
            ),
            FlatButton(
              child: Text('Three'),
              onPressed: () {
                router.navigateTo(context, "/three",
                    transition: TransitionType.nativeModal);
              },
            ),
            FlatButton(
              child: Text('Four'),
              onPressed: () {
                router.navigateTo(context, "/four",
                    transition: TransitionType.inFromLeft);
              },
            ),
            Button(
              child: Text('hello'),
              color: Colors.blue,
              borderRadius: 5,
            ),
            GradientButton(
            colors: [Colors.orange,Colors.red],
            height: 50.0,
            width: 100,
            child: Text("Submit"),
            onTap:(){
              print("button click");
            } ,
          ),
          ],
        )));
  }
}

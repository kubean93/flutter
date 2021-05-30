import 'package:app_flutter_1/Screens/authenticate/authenticate.dart';
import 'package:app_flutter_1/Screens/home/home.dart';
import 'package:app_flutter_1/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return either Home or Authenticate widget
    final user = Provider.of<User>(context);
    print(user);
    if(user == null){
      return Authenticate();
    } else {
      return Home();
    }
  }
}

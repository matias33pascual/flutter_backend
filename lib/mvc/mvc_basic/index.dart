import 'package:flutter/material.dart';
import 'package:flutter_backend/mvc/mvc_basic/presentation/app_controller.dart';
import 'package:flutter_backend/mvc/mvc_basic/presentation/app_state.dart';
import 'package:flutter_backend/mvc/mvc_basic/presentation/app_view.dart';
import 'package:provider/provider.dart';

export 'package:flutter_backend/mvc/mvc_basic/presentation/app_controller.dart';
export 'package:flutter_backend/mvc/mvc_basic/presentation/app_state.dart';
export 'package:flutter_backend/mvc/mvc_basic/presentation/app_view.dart';

class MVCExample extends StatelessWidget {
  const MVCExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AppController(AppState.instance),
        child: const AppView());
  }
}

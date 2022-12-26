import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_backend/mvc/mvc_input/presentation/app_state.dart';
import 'package:flutter_backend/mvc/mvc_input/presentation/app_controller.dart';
import 'package:flutter_backend/mvc/mvc_input/presentation/app_view.dart';

export 'package:flutter_backend/mvc/mvc_input/presentation/app_state.dart';
export 'package:flutter_backend/mvc/mvc_input/presentation/app_controller.dart';
export 'package:flutter_backend/mvc/mvc_input/presentation/app_view.dart';
export 'package:flutter_backend/mvc/mvc_input/presentation/widgets/input_text.dart';

class MVCInputExample extends StatelessWidget {
  const MVCInputExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AppController(AppState.state),
        child: const Scaffold(body: Center(child: MVCInputScreen())));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_backend/mvc/mvc_service/presentation/mvc_service_screen.dart';

export 'package:flutter_backend/mvc/mvc_service/presentation/mvc_service_screen.dart';

class MVCServiceExamenple extends StatelessWidget {
  const MVCServiceExamenple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: MVCServiceScreen()),
    );
  }
}

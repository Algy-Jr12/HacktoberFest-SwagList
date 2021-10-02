import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_theme.dart';
import 'src/cubit/swag_cubit.dart';
import 'src/repository/swag_repository.dart';
import 'src/screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HF-2021 SwagList',
      theme: AppTheme.main,
      home: BlocProvider(
        create: (_) => SwagCubit(SwagRepositoryImpl()),
        child: HomePage(),
      ),
    );
  }
}

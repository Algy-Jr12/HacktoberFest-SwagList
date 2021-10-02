import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/cubit/swag_cubit.dart';
import 'src/repository/swag_repository.dart';
import 'src/screens/home.dart';
import 'src/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/cubit/swag_cubit.dart';
import 'src/repository/swag_repository.dart';
import 'src/screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HF-2021 SwagList',
      home: BlocProvider(
        create: (_) => SwagCubit(SwagRepositoryImpl()),
        child: HomePage(),
      ),
    );
  }
}

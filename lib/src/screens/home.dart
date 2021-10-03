import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hf_swag_list/src/screens/widgets/card_view.dart';

import '../../constants.dart';
import '../cubit/swag_cubit.dart';
import '../models/swag.dart';
import 'widgets/loading.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SwagCubit>(context).swagRepository.getSwags();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.title),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.help_outline),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: BlocBuilder<SwagCubit, SwagState>(
              builder: (context, state) {
                if (state is SwagsLoading) {
                  return LoadingIndicator();
                } else if (state is SwagsLoaded) {
                  return ListView.builder(
                    itemCount: 1,
                    itemBuilder: (ctx, index) {
                      return Text("Loaded");
                    },
                  );
                } else if (state is SwagsError) {
                  return Center(
                    child: Text(state.message),
                  );
                } else {
                  return Center(
                    child: Text("Something went wrong!"),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

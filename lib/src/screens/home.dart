import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hf_swag_list/src/cubit/swag_cubit.dart';
import 'package:hf_swag_list/src/models/swag.dart';
import 'package:hf_swag_list/src/theme/app_theme.dart';

import '../../constants.dart';

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
                    itemCount: state.swags.list.values.length,
                    itemBuilder: (ctx, index) {
                      return CircleAvatar();
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

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.brightRed,
      ),
    );
  }
}

class SwagCardView extends StatelessWidget {
  final SwagElement swagElement;
  const SwagCardView({
    Key? key,
    required this.swagElement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            ListTile(
              title: Text(swagElement.organization),
            )
          ],
        ),
      ),
    );
  }
}

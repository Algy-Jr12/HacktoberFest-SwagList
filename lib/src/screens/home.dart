import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/custom_search_delegate.dart';
import '../../constants.dart';
import '../cubit/swag_cubit.dart';
import '../models/swag.dart';
import '../theme/app_theme.dart';
import 'widgets/card_view.dart';
import 'widgets/info_dialog.dart';
import 'widgets/loading.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SwagCubit _swagCubit;

  @override
  void initState() {
    _swagCubit = context.read<SwagCubit>();
    _swagCubit.getSwags();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<SwagElement> swagList = [];
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.title),
        leading: IconButton(
          onPressed: () => showDialog(
            context: context,
            builder: (context) => InfoDialog(),
          ),
          icon: Icon(Icons.help_outline),
        ),
        actions: [
          IconButton(
            onPressed: () => showSearch(
              context: context,
              delegate: CustomSearchDelegate(swagList),
            ),
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: BlocBuilder<SwagCubit, SwagState>(
        builder: (context, state) {
          if (state is SwagsLoading) {
            return LoadingIndicator();
          } else if (state is SwagsLoaded) {
            state.swags.list.forEach(
              (_, value) => swagList = [...swagList, ...value],
            );

            return Scrollbar(
              child: RefreshIndicator(
                color: AppColors.brightRed,
                onRefresh: () => _swagCubit.getSwags(),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: swagList.length,
                  itemBuilder: (ctx, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 3,
                    ),
                    child: SwagCardView(swagElement: swagList[index]),
                  ),
                ),
              ),
            );
          } else if (state is SwagsError) {
            return Center(
              child: Text(state.message),
            );
          } else {
            return Center(
              child: Text(
                "Something went wrong!",
                style: TextStyle(fontSize: 20),
              ),
            );
          }
        },
      ),
    );
  }
}

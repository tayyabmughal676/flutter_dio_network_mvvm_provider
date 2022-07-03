import 'package:flutter/material.dart';
import 'package:flutter_network/core_utils/core_utils.dart';
import 'package:flutter_network/network_service/api_response/api_response.dart';
import 'package:flutter_network/network_service/models/PackageResponse.dart';
import 'package:flutter_network/view_model_providers/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeProvider homeProvider;

  @override
  void initState() {
    super.initState();

    homeProvider = HomeProvider();
    homeProvider = Provider.of<HomeProvider>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      homeProvider.fetchMoviesListApi();
    });
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      body: Container(
          color: Colors.blue,
          child: ListView.builder(
            itemCount: homeProvider.packagesList.data!.data!.packages!.length,
              itemBuilder: (context, index){
            return Text("Text: $index");
          })
          // ChangeNotifierProvider<HomeProvider>(
          //   create: (BuildContext context) => homeProvider,
          //   child: Consumer<HomeProvider>(
          //     builder: (context, value, _) {
          //       switch (value.moviesList.statusEnum) {
          //         case StatusEnum.LOADING:
          //           return const Center(
          //             child: CircularProgressIndicator(),
          //           );
          //         case StatusEnum.ERROR:
          //           return Center(
          //             child: Text(value.moviesList.message.toString()),
          //           );
          //         case StatusEnum.COMPLETED:
          //           return ListView.builder(
          //               itemCount:
          //                   value.moviesList.data!.data!.packages!.length,
          //               itemBuilder: (context, index) {
          //                 return const Text("Hello");
          //               });
          //       }
          //       return Container();
          //     },
          //   ),
          // )

      ),
    ));
  }
}

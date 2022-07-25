import 'package:flutter/material.dart';
import 'package:flutter_network/core_utils/core_utils.dart';
import 'package:flutter_network/network_service/api_response/api_response.dart';
import 'package:flutter_network/network_service/models/PackageResponse.dart';
import 'package:flutter_network/respositories/auth_repository.dart';
import 'package:flutter_network/view_model_providers/auth_provider.dart';
import 'package:flutter_network/view_model_providers/home_provider.dart';
import 'package:flutter_network/view_model_providers/pref_provider.dart';
import 'package:provider/provider.dart';

import '../../network_service/models/user_detail_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeProvider homeProvider;
  late AuthProvider authProvider;

  late PrefProvider prefProvider;

  @override
  void initState() {
    super.initState();

    homeProvider = HomeProvider();
    homeProvider = Provider.of<HomeProvider>(context, listen: false);

    authProvider = AuthProvider();
    authProvider = Provider.of<AuthProvider>(context, listen: false);

    prefProvider = PrefProvider();
    prefProvider = Provider.of<PrefProvider>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // homeProvider.fetchMoviesListApi();
      prefProvider.getStoredUserList();
    });
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<HomeProvider>(context, listen: true);
    Provider.of<AuthProvider>(context, listen: true);
    Provider.of<PrefProvider>(context, listen: true);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue,
          child: FutureBuilder(
            future: prefProvider.getStoredUserList(),
            builder: (context, AsyncSnapshot<List<UserDetail>> snapshot) {
              if (snapshot.hasError) {
                return const Expanded(
                  child: Center(
                    child: Text("No Data found"),
                  ),
                );
              } else if (snapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      var name = snapshot.data![index].name.toString();
                      var work = snapshot.data![index].work.toString();
                      return Center(
                          child:
                              Card(child: Text("Name: $name, work:  $work")));
                    },
                  ),
                );
              } else {
                return const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Colors.red,
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
// child: ListView.builder(
//     itemCount: homeProvider.packagesList.data!.data!.packages!.length,
//     itemBuilder: (context, index) {
//       return Text("Text: $index");
//     })
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
}

import 'package:flutter/material.dart';
import 'package:flutter_network/screens/home_screen/home_screen.dart';
import 'package:flutter_network/view_model_providers/auth_provider.dart';
import 'package:flutter_network/view_model_providers/home_provider.dart';
import 'package:flutter_network/view_model_providers/pref_provider.dart';
import 'package:provider/provider.dart';

//*
// [Flutter] Version: 3.0.1
// [Developer]: Tayyab Mughal a.k.a Woda Toki
// [Upwork]: https://www.upwork.com/freelancers/~01d478bbabdfa2e861
// [Fiverr]: https://www.fiverr.com/wodatoki
// [Github]: mailto:tayyabmughal676@gmail.com
// *//

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(
          create: (_) => HomeProvider(),
          lazy: true,
        ),
        ChangeNotifierProvider<AuthProvider>(
          create: (_) => AuthProvider(),
          lazy: true,
        ),
        ChangeNotifierProvider<PrefProvider>(
          create: (_) => PrefProvider(),
          lazy: true,
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Network',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

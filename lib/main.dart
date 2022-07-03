import 'package:flutter/material.dart';
import 'package:flutter_network/screens/home_screen/home_screen.dart';
import 'package:flutter_network/view_model_providers/home_provider.dart';
import 'package:provider/provider.dart';

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

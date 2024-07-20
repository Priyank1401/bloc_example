import 'package:bloc_example/bloc/cubit/internet_cubit.dart';
import 'package:bloc_example/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_example/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        // create: (context) => InternetBloc(),
        create: (context) => InternetCubit(),
        child: MaterialApp(
          title: 'Bloc Example',
          theme: ThemeData(primarySwatch: Colors.blue),
          debugShowCheckedModeBanner: false,
          home: const HomeScreen(),
        )
    );
  }
}

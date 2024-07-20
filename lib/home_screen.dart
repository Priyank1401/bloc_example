import 'package:bloc_example/bloc/cubit/internet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bloc Example')),
      body: Center(
        // child: BlocConsumer<InternetBloc, InternetState>(
        //   builder: (context, state) {
        //     if(state is InternetGainState) {
        //       return Text('Connected');
        //     } else if(state is InternetLostState) {
        //       return Text('Not Connected');
        //     } else {
        //       return Text('Loading...');
        //     }
        //   },
        //   listener: (context, state) {},
        // )
        child: BlocConsumer<InternetCubit, InternetState>(
          builder: (context, state) {
            if(state == InternetState.Gained) {
              return Text('Connected');
            } else if(state == InternetState.Lost) {
              return Text('Not Connected');
            } else {
              return Text('Loading...');
            }
          },
          listener: (context, state) {},
        )
      ),
    );
  }
}

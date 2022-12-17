import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kalemny_app/shared/cubit/cubit.dart';
import 'package:kalemny_app/shared/cubit/state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialState>(
        listener: (state, context) {}, builder: (state, context) {
          return Scaffold(

          );
    });
  }
}

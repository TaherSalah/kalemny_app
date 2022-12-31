import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kalamni_app/shared/components/component.dart';
import 'package:kalamni_app/shared/cubit/cubit.dart';
import 'package:kalamni_app/shared/cubit/state.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit,SocialState>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
        body: defualtButton(context: context, name: 'name', onPressed: (){}),
    )  ;
    },
    );
  }
}

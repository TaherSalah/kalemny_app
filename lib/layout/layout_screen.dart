import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kalamni_app/shared/styles/icon_broken.dart';
import 'package:kalamni_app/shared/styles/style.dart';

import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/state.dart';
class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialState>(
        listener: (context, state) {},
        builder: (context, state) {
          return BlocConsumer<SocialCubit,SocialState>(
            listener: (context,state){},
            builder: (context,state){
              var cubit= SocialCubit.get(context);
              return  Scaffold(
                  appBar: AppBar(
                    title: Text(
                      '${cubit.titles[cubit.currentIndex]}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    actions:  [
                      IconButton(onPressed: (){print('Notification work');}, icon:  const Icon(IconBroken.Notification),),
                      IconButton(onPressed: (){print('Search work');}, icon:     const Icon(IconBroken.Search),)
                    ],
                  ),
                  body: cubit.screens[cubit.currentIndex],
                  bottomNavigationBar: ConvexAppBar(
                    initialActiveIndex: cubit.currentIndex,
                    backgroundColor: whiteColor,
                    elevation: 0.9,
                    items: const [
                      TabItem(icon: Icon(IconBroken.Home), title: 'Home',),
                      TabItem(icon: Icon(IconBroken.Chat), title: 'Chats'),
                      TabItem(icon: Icon(IconBroken.Plus), title: 'Add Post'),
                      TabItem(icon: Icon(IconBroken.User), title: 'Users'),
                      TabItem(icon: Icon(IconBroken.Setting), title: 'Settings'),
                    ],
                    // ignore: avoid_print
                    onTap: (int index) {
                      cubit.changeBottomNavBar(index);
                    },
                  ));
            },

          );
        });
  }
}

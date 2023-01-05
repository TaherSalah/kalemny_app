import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kalamni_app/moduels/chats/chats_screen.dart';
import '../../models/social_create_user/social_create_user_model.dart';
import '../../moduels/add_Post/add_post_screen.dart';
import '../../moduels/home/home_screen.dart';
import '../../moduels/settinges/settinges_screen.dart';
import '../../moduels/user/user_screen.dart';
import '../components/constance.dart';
import 'state.dart';

class SocialCubit extends Cubit<SocialState> {
  SocialCubit() : super(SocialGetUserInitialState());
  static SocialCubit get(context) => BlocProvider.of(context);

  SocialCreateUserModel? model;
  void getUserData() {
    emit(SocialGetUserLoadingState());
    FirebaseFirestore.instance
        .collection('users')
        .doc(uIdV)
        .get()
        .then((value) {
      model = SocialCreateUserModel.fromJson(value.data()!);
      emit(SocialGetUserSuccessState());
      print(value.data());
    }).catchError((error) {
      print('error GetUserrData is ${error.toString()}');
    });
  }

  //////// bottom nav bar //////

  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ChatScreen(),
    AddPosts(),
    UsersScreen(),
    SettingsScreen()
  ];
  List<String> titles = [
    'Home',
    'Chat',
    'Add Post',
    'User',
    'Settings',
  ];
  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(SocialChangeBottomNavBarState());
  }
}

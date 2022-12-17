import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kalemny_app/models/social_create_user/social_create_user_model.dart';
import 'package:kalemny_app/models/social_login_model/login_model.dart';

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
          emit(SocialGetUserSuccessState());
          print(value.data());

    })
        .catchError((error) {
          print('error GetUserrData is ${error.toString()}');
    });
  }
}

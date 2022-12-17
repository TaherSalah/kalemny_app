import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kalemny_app/home/home_screen.dart';
import 'package:kalemny_app/moduels/login/login_screen.dart';
import 'package:kalemny_app/moduels/on_boarding/onBoarding_screen.dart';
import 'package:kalemny_app/shared/components/constance.dart';
import 'package:kalemny_app/shared/cubit/cubit.dart';
import 'package:kalemny_app/shared/cubit/state.dart';
import 'package:kalemny_app/shared/network/local/cache_helper.dart';
import 'package:kalemny_app/shared/network/remote/dio_helper.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await CacheHelper.init();
  DioHelper.init();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
Widget? widget;
 uIdV =CacheHelper.getData(key: 'uId');

  if (uIdV != null ){
    widget = const HomeScreen();
  }else{
    widget= const LoginScreen();
  }
  runApp( MyApp(startWidget: widget,));


}



class MyApp extends StatelessWidget {
  final Widget? startWidget;

   const MyApp({super.key, this.startWidget});

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context,)=>SocialCubit()..getUserData())
      ],
      child: BlocConsumer<SocialCubit,SocialState>(
        listener: (context, state) {},
        builder: (context, state) {
          return  MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          home: startWidget,

      );
        },
      ) );
  }
}

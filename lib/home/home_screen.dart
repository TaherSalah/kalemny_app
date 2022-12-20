import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_conditional_rendering/conditional.dart';

import '../../shared/components/component.dart';
import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Conditional.single(
              //     context: context,
              //     conditionBuilder: (context) {
              //       return SocialCubit.get(context).model != null;
              //     },
              //     widgetBuilder: (context) {
              //       var model = SocialCubit.get(context).model;
              //       return Container(
              //         height: 50,
              //         width: double.infinity,
              //         color: Colors.amber.withOpacity(0.6),
              //         child: Padding(
              //           padding: const EdgeInsets.all(10.0),
              //           child: Row(
              //             children: [
              //               if (model!.isEmailVerified != null)
              //                 if (FirebaseAuth
              //                         .instance.currentUser!.emailVerified ==
              //                     false)
              //                   Icon(Icons.info),
              //               Padding(
              //                   padding: EdgeInsets.symmetric(horizontal: 10)),
              //               Text(
              //                 'Please verify your email',
              //                 style: Theme.of(context).textTheme.bodyText1,
              //               ),
              //               Spacer(),
              //               defaultTextButton(
              //                 onPressed: () {
              //                   FirebaseAuth.instance.currentUser!
              //                       .sendEmailVerification()
              //                       .then((value) {
              //                     showToast(
              //                         state: ToastStates.success,
              //                         text: 'check your email ');
              //                   }).catchError((error) {
              //                     print(
              //                         'verified error is ${error.toString()}');
              //                   });
              //                   // if(FirebaseAuth.instance.currentUser!.emailVerified==false) {
              //                   //   await FirebaseAuth.instance.currentUser!.sendEmailVerification();
              //                   //   print(FirebaseAuth.instance.currentUser!.sendEmailVerification());
              //                   // }
              //                 },
              //                 text: 'Send',
              //               ),
              //             ],
              //           ),
              //         ),
              //       );
              //     },
              //     fallbackBuilder: (context) => const Center(
              //           child: CircularProgressIndicator(),
              //         )),
              // Container(
              //   height: 50,
              //   width: double.infinity,
              //   color: Colors.amber.withOpacity(0.6),
              //   child: Padding(
              //     padding: const EdgeInsets.all(10.0),
              //     child: Row(
              //       children: [
              //         // if( model!.isEmailVerified !=null)
              //         if (FirebaseAuth.instance.currentUser!.emailVerified ==
              //             false)
              //           Icon(Icons.info),
              //         Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              //         Text(
              //           'Please verify your email',
              //         ),
              //         Spacer(),
              //         defaultTextButton(
              //           onPressed: () {
              //             FirebaseAuth.instance.currentUser!
              //                 .sendEmailVerification()
              //                 .then((value) {
              //               showToast(
              //                   state: ToastStates.success,
              //                   text: 'check your email ');
              //               print(FirebaseAuth.instance.currentUser!
              //                   .sendEmailVerification());
              //             }).catchError((error) {
              //               print('verified error is ${error.toString()}');
              //             });
              //             // if(FirebaseAuth.instance.currentUser!.emailVerified==false) {
              //             //   await FirebaseAuth.instance.currentUser!.sendEmailVerification();
              //             //   print(FirebaseAuth.instance.currentUser!.sendEmailVerification());
              //             // }
              //           },
              //           text: 'Send',
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
Text('kalamni',style: TextStyle(fontFamily: 'title',fontSize: 50,fontWeight: FontWeight.w600),),
              Text('kalamnii ',style: TextStyle(fontFamily: 'cairo'),),

            ],
          ));
        });
  }
}

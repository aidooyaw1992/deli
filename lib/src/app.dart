import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import 'package:delivast/src/colors/app_colors.dart';
import 'package:delivast/src/cubit/login/login_cubit.dart';
import 'package:delivast/src/cubit/profile/profile_cubit.dart';
import 'package:delivast/src/cubit/splash/splash_cubit.dart';
import 'package:delivast/src/pages/splash_screen.dart';
import 'package:delivast/src/services/api_client.dart';

class MyApp extends StatelessWidget {
  final http.Client client;
  const MyApp({
    Key key,
    this.client,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(client: ApiClient(client)),
        ),
        BlocProvider(create: (context) => ProfileCubit()),
        BlocProvider(create: (context) => SplashCubit())
      ],
      child: MaterialApp(
        title: 'Delivast Demo',
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: AppColors.textColor,
                displayColor: AppColors.textColor,
              ),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(),
      ),
    );
  }
}

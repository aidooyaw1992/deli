import 'package:delivast/src/colors/app_colors.dart';
import 'package:delivast/src/cubit/splash/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_screen.dart';
import 'profile_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashCubit _cubit;
  @override
  void initState() {
    _cubit = BlocProvider.of(context);
    _cubit.checkUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) => state.maybeWhen(
        success: (user) {
          if (user.name != null) {
            return Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => ProfileScreen(user: user)),
              (route) => false,
            );
          }
          return Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
            (route) => false,
          );
        },
        orElse: () => Container(),
      ),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo_text.png',
                width: 296.0,
              ),
              SizedBox(height: 20),
              CircularProgressIndicator(
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

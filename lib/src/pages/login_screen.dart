import 'package:delivast/src/colors/app_colors.dart';
import 'package:delivast/src/components/message_box.dart';
import 'package:delivast/src/cubit/login/login_cubit.dart';
import 'package:delivast/src/models/app_error.dart';
import 'package:delivast/src/services/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'profile_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  LoginCubit _cubit;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _cubit = BlocProvider.of<LoginCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) => state.maybeWhen(
        loading: () => showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => LoadingDialog()),
        error: (error) {
          switch (error.appErrorType) {
            case AppErrorType.timeout:
              Navigator.of(context).pop(); // pop off loading dialog
              return showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext dialogContext) {
                  return ConnectionErrorDialog(
                    context: context,
                    icon: Icons.wifi,
                    title: "Connection Time out",
                    content: "Connection has timed out",
                    onRetryPressed: () {
                        Navigator.pop(context);
                        _cubit.login(email: null, password: null);
                      }
                  );
                },
              );
            case AppErrorType.network:
              Navigator.of(context).pop(); // pop off loading dialog
              return showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext dialogContext) {
                  return ConnectionErrorDialog(
                      context: context,
                      icon: Icons.wifi,
                      title: "Internet Connection Error",
                      content: "Kindly check your internet and try again",
                      onRetryPressed: () {
                        Navigator.pop(context);
                        _cubit.login(email: null, password: null);
                      });
                },
              );
            default:
              Navigator.of(context).pop(); // pop off loading dialog
              return showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext dialogContext) {
                  return ErrorAlertDialog(
                    context: context,
                    icon: Icons.error,
                    title: "Api Error occurred",
                    content: "Unknown APi error has occurred",
                  );
                },
              );
          }
        },
        success: (user) => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen(user: user)),
          (route) => false,
        ),
        orElse: () => Container(),
      ),
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        key: _scaffoldKey,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 600,
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Image.asset(
                            "assets/images/logo_text.png",
                            width: 150,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Login as Shopper or Driver",
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            constraints: BoxConstraints(
                              minHeight: 48,
                              maxHeight: 55,
                            ),
                            child: TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Email Address",
                              ),
                              validator: (val) {
                                if (val.isNotEmpty &&
                                    Validator.validateEmail(val)) {
                                  return null;
                                }
                                return "Enter correct email";
                              },
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            constraints: BoxConstraints(
                              minHeight: 48,
                              maxHeight: 55,
                            ),
                            child: TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                hintText: "Password",
                                border: OutlineInputBorder(),
                              ),
                              validator: (val) {
                                if (val.isNotEmpty && val.length >= 6) {
                                  return null;
                                }
                                return "Enter correct password";
                              },
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FlatButton(
                                height: 20,
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                          FlatButton(
                            minWidth: 200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            color: AppColors.primaryColor,
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                _cubit.login(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                );
                              }
                            },
                            child: Text(
                              "Log in",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 15),
                          Text("Don\'t have an account?"),
                          SizedBox(height: 5),
                          Text("Sign up to become part of us"),
                          SizedBox(height: 15),
                          OutlineButton(
                            borderSide: BorderSide(
                              color: AppColors.primaryColor,
                            ),
                            color: AppColors.primaryColor,
                            onPressed: () {},
                            child: Container(
                              width: 300,
                              child: Text(
                                "Join Delivast",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: AppColors.primaryColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/images/login_bottom_image.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivast/src/colors/app_colors.dart';
import 'package:delivast/src/models/user.dart';
import 'package:delivast/src/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/profile/profile_cubit.dart';

class ProfileScreen extends StatefulWidget {
  final User user;

  const ProfileScreen({Key key, this.user}) : super(key: key);
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  ProfileCubit _cubit;

  @override
  void initState() {
    super.initState();
    _initControllers(widget.user);
    _cubit = BlocProvider.of<ProfileCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listener: (context, state) {
        return state.maybeWhen(
            success: () => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => SplashScreen()),
                  (route) => false,
                ),
            orElse: () => Container());
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: AppColors.primaryColor,
            ),
            onPressed: () {
              // _scaffoldKey.currentState.openDrawer();
            },
          ),
          title: Image.asset(
            "assets/images/logo_text.png",
            height: 20,
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      maxRadius: 50,
                      child: ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: "${widget.user.picture.large}",
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                        "${widget.user.name.firstName} ${widget.user.name.lastName}"),
                  ],
                ),
              ),
              Divider(),
              Expanded(
                flex: 3,
                child: Container(
                  child: ListView(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          "First name",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: TextField(
                          controller: _firstNameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          "Last name",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: TextField(
                          controller: _lastNameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          "Email",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          "Password",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: TextField(
                          obscureText: true,
                          controller: _passwordController,
                          decoration: InputDecoration(
                            suffix: Text(
                              "Change",
                              style: TextStyle(color: AppColors.primaryColor),
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          "Phone",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: TextField(
                          controller: _phoneController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FlatButton(
                minWidth: 200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color: AppColors.primaryColor,
                onPressed: () {},
                child: Text(
                  "Save Changes",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              InkWell(
                onTap: () {
                  _cubit.logout();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 30),
                      Image.asset("assets/images/logout_icon.png", height: 40),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Log out",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
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
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _initControllers(User user) {
    setState(() {
      _emailController.text = user?.email;
      _firstNameController.text = user.name?.firstName;
      _lastNameController.text = user.name?.lastName;
      _passwordController.text = user.login?.password;
      _phoneController.text = user?.phone;
    });
  }
}

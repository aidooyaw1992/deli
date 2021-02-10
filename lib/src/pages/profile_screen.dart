import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'package:delivast/src/colors/app_colors.dart';
import 'package:delivast/src/models/user.dart';
import 'package:delivast/src/pages/splash_screen.dart';

import '../cubit/profile/profile_cubit.dart';
import '../services/validators.dart';

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
  String fullname;
  ProfileCubit _cubit;
  final _formKey = GlobalKey<FormState>();

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
          orElse: () => Container(),
        );
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
            onPressed: () {},
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
                    Text(fullname),
                  ],
                ),
              ),
              Divider(),
              Expanded(
                flex: 3,
                child: Container(
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: _formKey,
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
                          child: TextFormField(
                            controller: _firstNameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) =>
                                value.isEmpty || value.length > 3
                                    ? null
                                    : "Enter valid name",
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
                          child: TextFormField(
                            controller: _lastNameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) =>
                                value.isEmpty || value.length > 3
                                    ? null
                                    : "Enter valid name",
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
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            validator: (val) =>
                                val.isNotEmpty && Validator.validateEmail(val)
                                    ? null
                                    : "Enter correct email",
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
                          child: TextFormField(
                            obscureText: true,
                            controller: _passwordController,
                            decoration: InputDecoration(
                              suffix: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  "Change",
                                  style:
                                      TextStyle(color: AppColors.primaryColor),
                                ),
                              ),
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) => value.isEmpty ||
                                    value.length > 3
                                ? null
                                : "Password should be at least 3 characters long",
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
                          child: TextFormField(
                            onTap: () =>
                                acquirePhone(widget.user.phone).then((value) {
                              if (value != null) {
                                print("Result: $value");
                                setState(() {
                                  _phoneController.text = value;
                                });
                              }
                            }),
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

  Future<String> acquirePhone(String phone) async {
    var res = await showDialog<String>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) =>
            PhoneNumberDialog(phoneNumber: phone));

    return res;
  }

  void _initControllers(User user) {
    setState(() {
      _emailController.text = user?.email;
      _firstNameController.text = user.name?.firstName;
      _lastNameController.text = user.name?.lastName;
      _passwordController.text = user.login?.password;
      _phoneController.text = user?.phone;
      //added here to reduce setState calls
      fullname = getFullName(user.name?.firstName, user.name?.lastName);
    });
  }

  String getFullName(String firstname, String lastname) =>
      "$firstname $lastname";
}

class PhoneNumberDialog extends StatefulWidget {
  final String phoneNumber;
  const PhoneNumberDialog({Key key, this.phoneNumber}) : super(key: key);
  @override
  _PhoneNumberDialogState createState() => _PhoneNumberDialogState();
}

class _PhoneNumberDialogState extends State<PhoneNumberDialog> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number;
  final _formKey = GlobalKey<FormState>();
  String returnPhoneNumber;

  @override
  void initState() {
    number = PhoneNumber(phoneNumber: widget.phoneNumber, isoCode: 'NG');
    print(number);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: const Text('Phone Number Update', textAlign: TextAlign.center),
      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        constraints: BoxConstraints(maxHeight: 150, minWidth: 300),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Expanded(
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    // print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  initialValue: number,
                  formatInput: false,
                  keyboardType: TextInputType.numberWithOptions(
                    signed: true,
                    decimal: true,
                  ),
                  inputBorder: OutlineInputBorder(),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $returnPhoneNumber');
                    setState(() {
                      returnPhoneNumber = number.phoneNumber;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlineButton(
                    child: Text("Cancel"),
                    onPressed: () => Navigator.pop(context)),
                SizedBox(width: 10),
                FlatButton(
                  color: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      setState(() {
                        returnPhoneNumber = number.phoneNumber;
                      });
                      await Future.delayed(Duration(milliseconds: 100));
                      Navigator.pop(context, "$returnPhoneNumber");
                    }
                  },
                  child: Text(
                    'Update',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

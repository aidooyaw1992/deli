import 'package:delivast/src/colors/app_colors.dart';
import 'package:flutter/material.dart';

///confirm dialog
class ErrorAlertDialog extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;
  final BuildContext context;

  const ErrorAlertDialog({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.content,
    @required this.context,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 300.0, minHeight: 100.0),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          elevation: 24.0,
          type: MaterialType.card,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 480.0,
                padding: EdgeInsets.only(top: 40.0, left: 30.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ///dialog icon
                    icon != null
                        ? Icon(
                            icon,
                            size: 75.0,
                            color: Color(0xFFfc6f8d),
                          )
                        : null,

                    ///dialog body
                    Container(
                      margin: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ///dialog title
                          title != null
                              ? Text(
                                  title,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF1a1a1a)),
                                )
                              : Container(),

                          ///dialog content
                          Container(
                            width: 240.0,
                            margin: EdgeInsets.only(top: 8.0),
                            child: content != null
                                ? Text(
                                    content,
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFF1a1a1a)),
                                  )
                                : Container(),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              ///dialog button
              Container(
                width: 480.0,
                padding: EdgeInsets.only(bottom: 30.0, right: 30.0),
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  child: Text("Ok"),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConnectionErrorDialog extends StatelessWidget {
  final IconData icon;
  final IconData confirmButtonIcon;
  final String title;
  final String content;
  final BuildContext context;
  final String actionbuttonlabel;
  final VoidCallback onRetryPressed;

  const ConnectionErrorDialog({
    Key key,
    @required this.icon,
    this.confirmButtonIcon,
    @required this.title,
    this.content,
    this.context,
    this.actionbuttonlabel,
    this.onRetryPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 280.0, minHeight: 100.0),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          elevation: 24.0,
          type: MaterialType.card,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 380.0,
                height: 200.0,
                padding: EdgeInsets.only(top: 35.0, left: 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ///dialog icon
                    icon != null
                        ? Icon(
                            icon,
                            size: 75.0,
                            color: Color(0xFFfc6f8d),
                          )
                        : null,

                    ///dialog body
                    Container(
                      margin: EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ///dialog title
                          title != null
                              ? Text(
                                  title,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF1a1a1a)),
                                )
                              : null,

                          ///dialog content
                          Container(
                            width: 220.0,
                            margin: EdgeInsets.only(top: 8.0),
                            child: content != null
                                ? Text(
                                    content,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF1a1a1a),
                                    ),
                                  )
                                : null,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              ///dialog button
              Container(
                padding: EdgeInsets.only(bottom: 10.0, right: 30.0),
                alignment: Alignment.bottomRight,
                child: Wrap(
                  spacing: 10.0,
                  children: <Widget>[
                    FlatButton(
                      child: Text("Cancel"),
                      onPressed: () => Navigator.pop(context),
                    ),
                    FlatButton(
                      child: Text("Retry"),
                      onPressed: onRetryPressed,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoadingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      key: key,
      backgroundColor: Colors.white,
      children: <Widget>[
        Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
              ),
              SizedBox(width: 10),
              Text(
                "Please Wait....",
                style: TextStyle(color: AppColors.primaryColor),
              )
            ],
          ),
        )
      ],
    );
  }
}

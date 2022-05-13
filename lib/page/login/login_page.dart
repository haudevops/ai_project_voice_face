import 'dart:async';
import 'dart:io';

import 'package:ai_project/page/home/home_page.dart';
import 'package:ai_project/ultil/constants.dart';
import 'package:ai_project/ultil/screen_arguments.dart';
import 'package:ai_project/ultil/screen_util.dart';
import 'package:ai_project/ultil/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/auth_strings.dart';

enum _SupportState {
  unknown,
  supported,
  unsupported,
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LocalAuthentication auth = LocalAuthentication();
  _SupportState _supportState = _SupportState.unknown;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;
  bool userHasTouchId;
  bool _useTouchId = false;
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _focusUserName = FocusNode();
  final _focusPassword = FocusNode();
  final _userNameKey = GlobalKey<FormState>();
  final _userPasswordKey = GlobalKey<FormState>();
  bool _checkShowFaceID = false;
  var _userName;
  var _password;
  PrefsUtil _prefsUtil;

  @override
  void initState() {
    super.initState();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() => _supportState = isSupported
              ? _SupportState.supported
              : _SupportState.unsupported),
        );
  }


  Future<void> _authenticateWithBiometrics() async {
    _prefsUtil = await PrefsUtil.getInstance();
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });

      authenticated = await auth.authenticate(
          localizedReason: 'Vui lòng quét khuôn mặt để mở khóa',
          useErrorDialogs: true,
          biometricOnly: true,
          stickyAuth: true,
          androidAuthStrings: AndroidAuthMessages(
            signInTitle: 'Mở khóa',
            biometricHint: '',
            cancelButton: 'Hủy',
          ));
      if (authenticated) {
        _userNameController.text =
            _prefsUtil.getString(Constants.USER_NAME);
        _passwordController.text = _prefsUtil.getString(Constants.PASSWORD);
        checkLogin(_userNameController.text, _passwordController.text);
      }
      setState(() {
        _isAuthenticating = false;
        _checkShowFaceID = false;
        _authorized = 'Authenticating';
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }

    final String message = authenticated ? 'Authorized' : 'Not Authorized';
    setState(() {
      _authorized = message;
    });
  }

  Future<void> checkLogin(String userName, String password) async {
    _prefsUtil = await PrefsUtil.getInstance();
    if (userName.isNotEmpty && password.isNotEmpty) {
      _userName = _prefsUtil.setString(Constants.USER_NAME, userName);
      _password = _prefsUtil.setString(Constants.PASSWORD, password);
      Navigator.pushNamed(context, HomePage.routeName,
              arguments: ScreenArguments(arg1: userName, arg2: password))
          .then((value) {
        setState(() {
          _checkShowFaceID = true;
          _userName = _prefsUtil.getString(Constants.USER_NAME);
          _password = _prefsUtil.getString(Constants.PASSWORD);
        });
        print('$_userName  $_password');
        _userNameController.clear();
        _passwordController.clear();
        FocusScope.of(context).requestFocus(_focusUserName);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().getAdapterSize(8)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Chào mừng đến với SUPRA',
                  style: TextStyle(
                      fontSize: ScreenUtil.getInstance().getAdapterSize(20),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: ScreenUtil.getInstance().getAdapterSize(20)),
                Form(
                  key: _userNameKey,
                  child: TextFormField(
                    focusNode: _focusUserName,
                    autofocus: true,
                    controller: _userNameController,
                    decoration: InputDecoration(
                      labelText: 'Nhập tài khoản',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1.5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 2, color: Colors.pinkAccent),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onFieldSubmitted: (value) {
                      if (_userNameKey.currentState.validate()) {
                        FocusScope.of(context).unfocus();
                        FocusScope.of(context).requestFocus(_focusPassword);
                      } else {
                        FocusScope.of(context).requestFocus(_focusUserName);
                      }
                    },
                    validator: (value) {
                      if (value.isEmpty ||
                          RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
                        return 'Nhập tài khoản';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: ScreenUtil.getInstance().getAdapterSize(20)),
                Form(
                  key: _userPasswordKey,
                  child: TextFormField(
                    focusNode: _focusPassword,
                    autofocus: false,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Nhập mật khẩu',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1.5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 2, color: Colors.pinkAccent),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value) {
                      if (value.isEmpty ||
                          RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
                        return 'Sai mật khẩu';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Center(
                  child: Container(
                    width: ScreenUtil.getInstance().getAdapterSize(200),
                    child: ElevatedButton(
                        onPressed: () {
                          if (_userNameKey.currentState.validate() &&
                              _userPasswordKey.currentState.validate()) {
                            checkLogin(_userNameController.text,
                                _passwordController.text);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 1,
                        ),
                        child: Text(
                          'Đăng nhập',
                          style: TextStyle(
                            fontSize:
                                ScreenUtil.getInstance().getAdapterSize(16),
                          ),
                        ),
                    ),
                  ),
                ),
                Visibility(
                  visible: _checkShowFaceID,
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        print('OK');
                        _authenticateWithBiometrics();
                      },
                      icon: Icon(
                        Icons.tag_faces,
                        color: Colors.pinkAccent,
                        size: ScreenUtil.getInstance().getAdapterSize(35),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _authenticateWithBiometrics,
          backgroundColor: Colors.pinkAccent,
          child: Icon(Icons.tag_faces),
        ));
  }
}

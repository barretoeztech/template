import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';
import '../utils/utils.dart';
import '../utils/app_theme.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController _loginController = Get.find<LoginController>();

  bool _obscureText = true;
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Login Page')),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 50),
            decoration: boxBlue,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _loginController.emailTextController,
                        focusNode: _emailFocus,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          fieldFocusChange(
                              context, _emailFocus, _passwordFocus);
                        },
                        style: TextStyle(color: Colors.white),
                        decoration: textDecoration(
                            label: 'E-mail', hint: 'exemplo@google.com.br'),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Campo obrigatório.";
                          } else if (!GetUtils.isEmail(value)) {
                            return "E-mail inválido.";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _loginController.passwordTextController,
                        focusNode: _passwordFocus,
                        onFieldSubmitted: (_) {
                          _passwordFocus.unfocus();
                        },
                        textInputAction: TextInputAction.done,
                        style: TextStyle(color: Colors.white),
                        obscureText: _obscureText,
                        decoration: textDecoration(
                            label: 'Senha',
                            hint: 'Mínimo 4 caracteres',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: new Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.white),
                            )),
                        validator: (value) =>
                            (value.length < 4) ? 'Tamanho insuficiente' : null,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06),
                      ButtonTheme(
                        height: 50.0,
                        minWidth: 300.0,

                        //alignedDropdown: true,
                        child: RaisedButton(
                          elevation: 0,
                          color: Colors.white,
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              _loginController.login();
                            }
                          },
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side:
                                  BorderSide(width: 1.0, color: Colors.white)),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                color: const Color(0xFF00377A),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ), //Text
                          //color: const Color(0xFF00377A),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 1,
                          width: 100,
                          color: Colors.white,
                        ),
                        Text(' ou ',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                        Container(
                          height: 1,
                          width: 100,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                    ButtonTheme(
                      height: 50.0,
                      minWidth: 300.0,
                      child: RaisedButton(
                        elevation: 0,
                        onPressed: () {
                          //_loginController.register();
                          //Get.toNamed(Routes.REGISTER);
                        },
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                            side: BorderSide(
                                width: 1.0,
                                color: Colors
                                    .white /*color: const Color(0xFF00377A)*/
                                )),
                        child: Text(
                          "CADASTRE-SE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ), //Text
                        color: Colors.transparent, //(0xFF00377A),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

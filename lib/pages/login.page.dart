import 'package:flutter/material.dart';
import 'package:shopping/pages/singup.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  //height: MediaQuery.of(context).size.width,
                  //height: 380,
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black12,
                        offset: new Offset(1, 2),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 15,
                      right: 15,
                      bottom: 15,
                    ),
                    child: Column(
                      // era um ListView
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  'Welcome',
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                                Text(
                                  'Sign in to continue',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ],
                            ),
                            FlatButton(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage(),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Container(
                          height: 40,
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          height: 40,
                          width: double.infinity,
                          child: FlatButton(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 15,
                    bottom: 15,
                  ),
                  child: Text(
                    '- OR -',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  child: FlatButton(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 24,
                          child: Image.asset(
                            'assets/facebook.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Text('Sign In with Faceboook'),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  child: FlatButton(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 24,
                          child: Image.asset(
                            'assets/google.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Text('Sign In with Google'),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

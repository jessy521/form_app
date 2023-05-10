import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_app/footer.dart';
import 'package:form_app/visit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const IconData check_circle_rounded =
        IconData(0xf635, fontFamily: 'MaterialIcons');

    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
          child: Column(
            children: <Widget>[
              const Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  alignment: Alignment.topLeft,
                  icon: Icon(
                    Icons.arrow_back,
                    size: 40.0,
                  ),
                  tooltip: 'back',
                  onPressed: null,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  color: Colors.white,
                  child: const Text(
                    'Create',
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  color: Colors.white,
                  child: const Text(
                    'Account',
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              HelpingWidget(
                  btn: Icons.email_outlined,
                  text1: "Email",
                  text2: "Email write here"),
              const SizedBox(height: 40),
              HelpingWidget(
                  btn: Icons.key,
                  text1: "Password",
                  text2: "Create a password"),
              const SizedBox(height: 40),
              HelpingWidget(
                  btn: Icons.key,
                  text1: "Confirm Password",
                  text2: "Confirm your password"),
              const SizedBox(height: 40),
              // Expanded(
              //   child:
              Row(children: [
                const IconButton(
                  padding: EdgeInsets.fromLTRB(8, 0, 40, 0),
                  icon: Icon(
                    Icons.check_circle_rounded,
                    size: 40.0,
                  ),
                  tooltip: 'Tick',
                  onPressed: null,
                ),
                SizedBox(
                  width: 250,
                  child: Text.rich(TextSpan(
                      style:
                          const TextStyle(color: Colors.black38, fontSize: 17),
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'Check this box if you agree with the ',
                        ),
                        TextSpan(
                            text: 'Terms',
                            style: TextStyle(
                                color: Colors.red[700],
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Terms opened');
                              }),
                      ])),
                  // )
                )
              ]),
              // )
              const SizedBox(
                height: 60,
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}

void main(List<String> args) {
  runApp(const MaterialApp(
    title: 'Simple form page',
    home: HomePage(),
  ));
}

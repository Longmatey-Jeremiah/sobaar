import 'package:flutter/material.dart';
import 'package:sobaar/colors/colors.dart';
import 'package:sobaar/widgets/BaseButton.dart';
import 'package:sobaar/widgets/BaseLargeText.dart';
import 'package:sobaar/widgets/BaseText.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List data = [
    {
      'title': 'WELCOME',
      'sub-title': 'Lorem ipsum dolor satum',
      'image': 'welcome.png'
    },
    {
      'title': 'SIGN UP',
      'sub-title': 'Lorem ipsum dolor satum',
      'image': 'signup.png'
    },
    {
      'title': 'LOGIN',
      'sub-title': 'Lorem ipsum dolor satum',
      'image': 'login.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(
                    top: 100,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                            "assets/images/" + data[index]['image']),
                        height: 300,
                        width: double.maxFinite,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            BaseLargeText(
                              text: data[index]['title'],
                              color: BaseColors.primary,
                            ),
                            SizedBox(height: 10.0),
                            BaseText(
                              text: data[index]['sub-title'],
                              color: BaseColors.grey,
                            ),
                            SizedBox(height: 20.0),
                            BaseButton(),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                data.length,
                                (dotsIndex) {
                                  return Container(
                                    width: index == dotsIndex ? 25 : 8,
                                    margin: dotsIndex == data.length
                                        ? EdgeInsets.only(right: 0)
                                        : EdgeInsets.only(right: 4),
                                    height: 8,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: index == dotsIndex
                                          ? BaseColors.primary
                                          : BaseColors.grey,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ));
            }),
      ),
    );
  }
}

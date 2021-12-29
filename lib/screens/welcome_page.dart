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
      'title': 'Answer customers questions',
      'sub-title':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent malesuada enim blandit turpis felis massa cum molestie nibh. Diam morbi .',
      'image': 'welcome.png'
    },
    {
      'title': 'Answer customers questions',
      'sub-title':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent malesuada enim blandit turpis felis massa cum molestie nibh. Diam morbi .',
      'image': 'signup.png'
    },
    {
      'title': 'Answer customers questions',
      'sub-title':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent malesuada enim blandit turpis felis massa cum molestie nibh. Diam morbi .',
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
/*           image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ), */
          color: Colors.blue.shade900,
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
                        height: 250,
                        width: double.maxFinite,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: BaseLargeText(
                                text: data[index]['title'],
                                color: BaseColors.light,
                                size: 25,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Center(
                              child: BaseText(
                                text: data[index]['sub-title'],
                                color: Colors.grey.shade400,
                                size: 14.4,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                data.length,
                                (dotsIndex) {
                                  return Container(
                                    width: index == dotsIndex ? 30 : 8,
                                    margin: dotsIndex == data.length
                                        ? EdgeInsets.only(right: 0)
                                        : EdgeInsets.only(right: 6),
                                    height: 8,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: index == dotsIndex
                                          ? BaseColors.light
                                          : BaseColors.light.withOpacity(0.5),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              children: [
                                BaseButton(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      30,
                                ),
                                SizedBox(width: 20),
                                BaseButton(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      30,
                                ),
                              ],
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

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:onboarding_plant/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({Key? key}) : super(key: key);

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget bulidPage({
    required Color color,
    required String urlImage,
    required String title,
    required String subtitle,
  }) =>
      Container(
        color: color,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            urlImage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          SizedBox(
            height: 50,
          ),
          Text(title,
              style: TextStyle(
                  color: Colors.teal.shade700,
                  fontSize: 30,
                  fontWeight: FontWeight.w600)),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                subtitle,
                style: TextStyle(color: Colors.teal.shade700, fontSize: 17),
              ),
            ),
          )
        ]),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 60),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() => isLastPage = index == 2);
            },
            children: [
              bulidPage(
                  color: Colors.white,
                  urlImage: 'lib/assets/Focus-cuate (1).png',
                  title: 'Identify Plants',
                  subtitle:
                      'You can identify the plants you dont know through your camera'),
              bulidPage(
                  color: Colors.white,
                  urlImage: 'lib/assets/Gardening-cuate (1).png',
                  title: 'Learn Plants Species',
                  subtitle:
                      'Lets learn the many plants species that exist this world '),
              bulidPage(
                color: Colors.white,
                urlImage: 'lib/assets/Social Growth-cuate.png',
                title: 'Read Articales ',
                subtitle:
                    'Lets learn more about beaufuil plants and read articales about plants and garfding',
              ),
            ],
          ),
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  primary: Colors.white,
                  backgroundColor: Colors.teal.shade700,
                  minimumSize: Size.fromHeight(70)),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => homePage()),
                );
              },
              child: Text("Get Started", style: TextStyle(fontSize: 24)))
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () => controller.jumpToPage(2),
                        child: Text(
                          "SKIP",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.teal.shade700,
                          ),
                        )),
                  
                    Center(
                        child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                          spacing: 16,
                          dotColor: Colors.black26,
                          activeDotColor: Colors.teal.shade700),
                      onDotClicked: (index) => controller.animateToPage(index,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut),
                    )),
                    TextButton(
                        onPressed: () => controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut),
                        child: Text(
                          "NEXT",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.teal.shade700,
                          ),
                        )),
                  ]),
            ),
    );
  }
}

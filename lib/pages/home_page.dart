import 'package:flutter/material.dart';
import 'package:sxmdln_website_flutter/pages/about.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Stack buildHeader(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    // header
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/background.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const AboutPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "About Me",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          // profile picture
          top: 250,
          left: 360,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/selfie.jpg"),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
            width: 280,
            height: 280,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildHeader(context),
        ],
      ),
    );
  }
}

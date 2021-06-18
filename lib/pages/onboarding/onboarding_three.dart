import 'package:flutter/material.dart';
import 'package:splash_screen/theme.dart';
import 'package:splash_screen/data.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildImage() {
      return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              images[2],
            ),
          ),
        ),
      );
    }

    buildNavigation() {
      return Container(
        margin: EdgeInsets.all(30),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left,
              ),
            ),
            Spacer(),
          ],
        ),
      );
    }

    buildBottomSheet() {
      return Container(
        height: 267,
        width: double.infinity,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          ),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Text(
              titles[2],
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              subtitles[2],
              style: greyTextStyle.copyWith(
                wordSpacing: 8,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 12,
                      height: 4,
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: kLightBlueColor,
                      ),
                    ),
                    Container(
                      width: 12,
                      height: 4,
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: kLightBlueColor,
                      ),
                    ),
                    Container(
                      width: 18,
                      height: 4,
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: kBlueColor,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/button_next.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBlueColor,
      body: Stack(
        children: [
          buildImage(),
          buildNavigation(),
          Align(
            alignment: Alignment.bottomCenter,
            child: buildBottomSheet(),
          ),
        ],
      ),
    );
  }
}

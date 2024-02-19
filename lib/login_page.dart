// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:dropbox/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'size_config.dart';
// import 'app_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kHorizontalPadding / 1.5,
              vertical: kVerticalPadding * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to",
                style: kQuestrialRegular.copyWith(
                    fontSize: SizeConfig.blocksizeHorizontal! * 5,
                    color: kBlackColor),
              ),
              SizedBox(
                height: SizeConfig.blocksizeHorizontal! * 2,
              ),
              Text(
                "Dribbbox",
                style: kQuestrialBold.copyWith(
                    fontSize: SizeConfig.blocksizeHorizontal! * 9,
                    color: kBlackColor),
              ),
              SizedBox(
                height: SizeConfig.blocksizeHorizontal! * 2,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: kHorizontalPadding / 3),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  style: kQuestrialMedium.copyWith(
                      fontSize: SizeConfig.blocksizeHorizontal! * 2.5,
                      color: kLightGreyText),
                ),
              ),
              SizedBox(
                height: SizeConfig.blocksizeHorizontal! * 3.5,
              ),
              Text(
                "Join for free",
                style: kQuestrialMedium.copyWith(
                    fontSize: SizeConfig.blocksizeHorizontal! * 3,
                    color: kLightGreyText),
              ),
              SizedBox(
                height: SizeConfig.blocksizeHorizontal! * 12,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "assets/smard_id_icon.svg",
                          width: SizeConfig.blocksizeHorizontal! * 12,
                          height: SizeConfig.blocksizeHorizontal! * 12,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blocksizeHorizontal! * 3,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "assets/signin.svg",
                          width: SizeConfig.blocksizeHorizontal! * 12,
                          height: SizeConfig.blocksizeHorizontal! * 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blocksizeHorizontal! * 12,
                  ),
                  Text(
                    "Use social login",
                    style: kQuestrialMedium.copyWith(
                        fontSize: SizeConfig.blocksizeHorizontal! * 2.5,
                        color: kLightGreyText),
                  ),
                  SizedBox(
                    height: SizeConfig.blocksizeHorizontal! * 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/instagram.svg",
                        width: SizeConfig.blocksizeHorizontal! * 8,
                        height: SizeConfig.blocksizeHorizontal! * 8,
                      ),
                      SizedBox(
                        width: SizeConfig.blocksizeHorizontal! * 3,
                      ),
                      SvgPicture.asset(
                        "assets/facebook.svg",
                        width: SizeConfig.blocksizeHorizontal! * 8,
                        height: SizeConfig.blocksizeHorizontal! * 8,
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blocksizeHorizontal! * 10,
                  ),
                  Text("Create an account", style: kQuestrialMedium.copyWith(
                    fontSize: SizeConfig.blocksizeHorizontal! * 3.5
                  )),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}

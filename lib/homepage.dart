// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app_styles.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Color> textColors = [
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
  ];

  List<Color> folderColors = [
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
  ];

  List<String> folderIconColor = [
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
  ];

  List<String> moreIconColors = [
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
  ];

  List<String> folderNames = [
    'Mobile apps',
    'SVG Icons',
    'Prototype',
    'Avatar',
    'Mobile apps',
    'SVG Icons',
    'Prototype',
    'Avatar',
    'Mobile apps',
    'SVG Icons',
    'Prototype',
    'Avatar',
  ];

  List<String> folderDates = [
    'December 20, 2024',
    'December 19, 2021',
    'November 12, 2024',
    'November 19, 1023',
    'December 20, 2024',
    'December 19, 2021',
    'November 12, 2024',
    'November 19, 1023',
    'December 20, 2024',
    'December 19, 2021',
    'November 12, 2024',
    'November 19, 1023',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButton: SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: kDarkBluebuttonColor,
              shape: CircleBorder(),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ))),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: kHorizontalPadding, vertical: kVerticalPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Your dribbbox",
                    style: kQuestrialBold.copyWith(
                        fontSize: SizeConfig.blocksizeHorizontal! * 6,
                        color: kBlackColor),
                  ),
                  SvgPicture.asset('assets/menu_icon.svg'),
                ],
              ),
              SizedBox(
                height: SizeConfig.blocksizeHorizontal! * 4,
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      borderSide: BorderSide(width: 1, color: kGreyColor)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      borderSide: BorderSide(width: 1, color: kGreyColor)),
                  prefixIcon: Container(
                    width: 24,
                    height: 24,
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/search_icon.svg'),
                  ),
                  hintText: "search folder",
                  hintStyle: kQuestrialMedium.copyWith(
                      fontSize: SizeConfig.blocksizeHorizontal! * 4,
                      color: kDarkgrey),
                ),
                style: kQuestrialMedium.copyWith(
                    fontSize: SizeConfig.blocksizeHorizontal! * 4,
                    color: kDarkgrey),
              ),
              SizedBox(
                height: SizeConfig.blocksizeVertical! * 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Recent",
                        style: kQuestrialSemiBold.copyWith(
                            fontSize: SizeConfig.blocksizeHorizontal! * 4,
                            color: kLightBlack),
                      ),
                      SizedBox(
                        width: SizeConfig.blocksizeHorizontal! * 2.5,
                      ),
                      SvgPicture.asset('assets/arrow_down_icon.svg'),
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/sort_icon.svg',
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blocksizeVertical! * 3,
              ),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: SizeConfig.blocksizeHorizontal! * 2,
                  mainAxisSpacing: SizeConfig.blocksizeHorizontal! * 2,
                  mainAxisExtent: 120,
                ),
                itemCount: folderColors.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 0.5 * kHorizontalPadding,
                    ),
                    decoration: BoxDecoration(
                        color: folderColors[index],
                        borderRadius: BorderRadius.circular(kBorderRadius)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                                'assets/${folderIconColor[index]}'),
                            SvgPicture.asset('assets/${moreIconColors[index]}')
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.blocksizeVertical! * 1,
                        ),
                        Text(
                          folderNames[index],
                          style: kQuestrialSemiBold.copyWith(
                              color: textColors[index],
                              fontSize: SizeConfig.blocksizeHorizontal! * 4),
                        ),
                        SizedBox(
                          height: SizeConfig.blocksizeVertical! * 0.3,
                        ),
                        Text(
                          folderDates[index],
                          style: kQuestrialRegular.copyWith(
                            color: textColors[index],
                            fontSize: SizeConfig.blocksizeHorizontal! * 2.5,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

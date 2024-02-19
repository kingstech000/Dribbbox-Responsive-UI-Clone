// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'size_config.dart';
import 'app_styles.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  List<Color> textColors = [
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
  ];

  List<String> folderIconColor = [
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
  ];

  List<String> folderNames = [
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
  ];

  List<String> recentUploadDates = [
    'December 20, 2024',
    'December 19, 2021',
    'November 12, 2024',
    'November 19, 2023',
    'November 22, 2023',
  ];

  List<String> uploadSize = [
    '300kb',
    '250kb',
    '190kb',
    '400kb',
    '290kb',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPadding, vertical: kVerticalPadding / 3),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/arrow_back_icon.svg'),
                Text(
                  "My profile",
                  style: kQuestrialSemiBold.copyWith(
                      fontSize: SizeConfig.blocksizeHorizontal! * 5,
                      color: kLightBlack),
                ),
                SvgPicture.asset('assets/more_horiz_icon.svg'),
              ],
            ),
            SizedBox(
              height: SizeConfig.blocksizeHorizontal! * 4,
            ),
            Container(
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                  color: kProfileCardColor,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 0,
                      offset: const Offset(0, 18),
                      blurRadius: 18,
                      color: kBlackColor.withOpacity(0.06),
                    )
                  ]),
              padding: EdgeInsets.symmetric(
                  vertical: 19, horizontal: kHorizontalPadding),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset('assets/pro_label.svg'),
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, -18, 0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: kAvatarBackgroundColor,
                        backgroundImage: AssetImage("images/user.png"),
                      ),
                    ),
                    Text(
                      "Savannah Michael",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: kQuestrialBold.copyWith(
                          fontSize: SizeConfig.blocksizeHorizontal! * 6,
                          color: kBlackColor),
                    ),
                    SizedBox(
                      height: SizeConfig.blocksizeHorizontal! * 1,
                    ),
                    Text(
                      "Ui/Ux designer",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: kQuestrialRegular.copyWith(
                          fontSize: SizeConfig.blocksizeHorizontal! * 5,
                          color: kLightgreyColor),
                    ),
                    SizedBox(
                      height: SizeConfig.blocksizeHorizontal! * 1.5,
                    ),
                    Text(
                      "Check for circular dependencies in your layout, where widgets depend on each other for their size constraints. This can lead to layout issues and infinite loops.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: kQuestrialRegular.copyWith(
                          color: kLightTextGreyColor,
                          fontSize: SizeConfig.blocksizeHorizontal! * 3),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blocksizeHorizontal! * 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My folders",
                  style: kQuestrialSemiBold.copyWith(
                      fontSize: SizeConfig.blocksizeHorizontal! * 3.5,
                      color: kBlackColor),
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/add_icon.svg"),
                    SizedBox(
                      width: SizeConfig.blocksizeHorizontal! * 5,
                    ),
                    SvgPicture.asset("assets/setting_icon.svg"),
                    SizedBox(
                      width: SizeConfig.blocksizeHorizontal! * 5,
                    ),
                    SvgPicture.asset("assets/arrow_right_icon.svg"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blocksizeHorizontal! * 5,
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
                          SvgPicture.asset('assets/${folderIconColor[index]}'),
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
            SizedBox(
              height: SizeConfig.blocksizeHorizontal! * 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent uploads",
                  style: kQuestrialSemiBold.copyWith(
                      fontSize: SizeConfig.blocksizeHorizontal! * 3.5,
                      color: kBlackColor),
                ),
                SvgPicture.asset("assets/arrange_vertical_icon.svg"),
              ],
            ),
            ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        bottom: SizeConfig.blocksizeVertical! * 1.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: kLightBlueColor,
                              child: SvgPicture.asset(
                                "assets/word_icon.svg",
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.blocksizeHorizontal! * 2.5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Project${index + 1}.docx",
                                  style: kQuestrialSemiBold.copyWith(
                                      fontSize:
                                          SizeConfig.blocksizeHorizontal! * 3.5,
                                      color: kBlackColor),
                                ),
                                Text(
                                  recentUploadDates[index],
                                  style: kQuestrialRegular.copyWith(
                                      fontSize:
                                          SizeConfig.blocksizeHorizontal! * 2.5,
                                      color: kLightgrey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          uploadSize[index],
                          style: kQuestrialRegular.copyWith(
                              fontSize: SizeConfig.blocksizeHorizontal! * 2.5,
                              color: kLightgrey),
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      )),
    );
  }
}

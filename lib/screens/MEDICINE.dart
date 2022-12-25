import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:computiq/screens/PopularCategories.dart';
import 'package:computiq/screens/Search.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:computiq/const /const.dart';
import '../card1.dart';
import '../card2.dart';


class MedicineScreen extends StatefulWidget {
  const MedicineScreen({Key? key}) : super(key: key);

  @override
  State<MedicineScreen> createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {
  int activeIndex = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                  '/Users/alialansari/Desktop/computiq/images/appBarIcon/userIcon.svg'),
              alignment: Alignment.centerRight,
            ),
            titleSpacing: 7.32,
            centerTitle: false,
            title: const Text(
              'MEDICINE',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.64,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  '/Users/alialansari/Desktop/computiq/images/appBarIcon/cartIcon.svg',
                ),
              )
            ],
          ),
          bottomNavigationBar: NavigationBarTheme(
            data:const NavigationBarThemeData(
              indicatorColor: Color(0xffBFB5FF),
            ),
            child: NavigationBar(
                selectedIndex: selectedIndex,
                onDestinationSelected: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                height: 50,
                backgroundColor: const Color(0xffFDFBF7),
                destinations: [
                  NavigationDestination(
                    icon: SvgPicture.asset(
                        '/Users/alialansari/Desktop/computiq/images/navigatorIcon/homeIcon.svg'),
                    label: 'HOME',
                  ),
                  NavigationDestination(
                    icon: SvgPicture.asset(
                        '/Users/alialansari/Desktop/computiq/images/navigatorIcon/gruopIcon.svg'),
                    label: 'ORDER',
                  ),
                  NavigationDestination(
                    icon: SvgPicture.asset(
                        '/Users/alialansari/Desktop/computiq/images/navigatorIcon/labTestIcon.svg'),
                    label: 'LAB TEST',
                  ),
                  NavigationDestination(
                    icon: SvgPicture.asset(
                        '/Users/alialansari/Desktop/computiq/images/navigatorIcon/offerIcon.svg'),
                    label: 'OFFERS',
                  ),
                  NavigationDestination(
                    icon: SvgPicture.asset(
                        '/Users/alialansari/Desktop/computiq/images/navigatorIcon/profile.svg'),
                    label: 'PROFILE',
                  ),
                ]),
          ),
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(21.14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                  },
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Search Medicine & Health Products',
                    hintStyle: const TextStyle(
                        fontSize: 12.2, fontWeight: FontWeight.w400),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(13.0122),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color(0xffF3F2E9),
                    suffix: SvgPicture.asset(
                        '/Users/alialansari/Desktop/computiq/images/search.svg'),
                  ),
                ),
                const SizedBox(
                  height: 16.27,
                ),
                Card1(
                  color: const Color(0xffD7D0FF),
                ),
                const SizedBox(
                  height: 16.27,
                ),
                Column(
                  children: [
                    CarouselSlider(
                      items:const [
                        Card2(),
                        Card2(),
                        Card2(),
                        Card2(),
                      ],
                      options: CarouselOptions(
                        height: 160,
                       pageSnapping: true,
                        enlargeCenterPage: true,
                        disableCenter: true,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndex = index;
                          });
                        },
                        autoPlayAnimationDuration: Duration(seconds: 1),
                        viewportFraction: 1,
                        // enlargeStrategy: CenterPageEnlargeStrategy.height,
                        aspectRatio: 3.3,
                      ),
                    ),
                   const SizedBox(
                      height: 5,
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: activeIndex,
                      count: 4,
                      effect:const JumpingDotEffect(
                        dotWidth:6.51,
                        dotHeight: 6.51,

                      ),
                    ),
                  ],
                ),
               const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                  const  Text(
                      'Popular Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.27,
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PopularCategories()));
                        },
                        child: Row(
                          children: [
                          const  Text(
                              'SEE ALL',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11.39,
                                  color: Colors.black),
                            ),
                           const SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset(
                                '/Users/alialansari/Desktop/computiq/images/bigICon.svg')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 11.39,
                              mainAxisSpacing: 45.27),
                      itemCount: imageItems.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(16.27),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      imageItems[index],
                                    ),
                                  ),
                                ),
                                height: 97,
                                width: 94,
                              ),
                            ),
                            Text(
                              itemsName[index],
                              style:const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                           const SizedBox(
                              height: 5,
                            ),
                          ],
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





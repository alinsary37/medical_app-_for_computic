import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:computiq/const /const.dart';

class PopularCategories extends StatefulWidget {
  const PopularCategories({Key? key}) : super(key: key);

  @override
  State<PopularCategories> createState() => _PopularCategoriesState();
}

class _PopularCategoriesState extends State<PopularCategories> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(
                  '/Users/alialansari/Desktop/computiq/images/appBarIcon/backIcon.svg')),
          title: Text(
            'Popular Categories',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.27,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: false,
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 11.39,
              mainAxisSpacing: 12.2),
          itemCount: imageItems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.27),
                          color: Color(0xffEFEDE9),
                          image: DecorationImage(image: AssetImage(imageItems[index]))),
                    ),
                  ),
                  Text(itemsName[index],style: TextStyle(
                    fontSize: 11.39,
                  ),),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

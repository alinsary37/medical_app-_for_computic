import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:computiq/items&picture.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  void updateList(String value) {
    // filter our list
    setState(() {
      disolay_list = itemSearchList
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  static List<ItemSearch> itemSearchList = [
    ItemSearch('Nutritional Drinks',
        '/Users/alialansari/Desktop/computiq/images/items/img_6.png'),
    ItemSearch('Ayurveda',
        '/Users/alialansari/Desktop/computiq/images/items/img_1.png'),
    ItemSearch('Vitamins & Supplement',
        '/Users/alialansari/Desktop/computiq/images/items/img_2.png'),
    ItemSearch('Healthcare Devices',
        '/Users/alialansari/Desktop/computiq/images/items/img_3.png'),
    ItemSearch('Homeopathy',
        '/Users/alialansari/Desktop/computiq/images/items/img_4.png'),
    ItemSearch('Diabetes Care',
        '/Users/alialansari/Desktop/computiq/images/items/img_5.png'),
    ItemSearch('Nutritional Drinks',
        '/Users/alialansari/Desktop/computiq/images/items/img_6.png'),
    ItemSearch('Ayurveda',
        '/Users/alialansari/Desktop/computiq/images/items/img_1.png'),
    ItemSearch('Vitamins & Supplement',
        '/Users/alialansari/Desktop/computiq/images/items/img_2.png'),
    ItemSearch('Vitamin D3',
        '/Users/alialansari/Desktop/computiq/images/items/img_9.png'),
  ];
  Map<String, String > itemSearch = {
    'Nutritional Drinks':'/Users/alialansari/Desktop/computiq/images/items/img_6.png',
    'Ayurveda':'/Users/alialansari/Desktop/computiq/images/items/img_1.png',
    'Vitamins & Supplement':'/Users/alialansari/Desktop/computiq/images/items/img_2.png',
    'Healthcare Devices':'/Users/alialansari/Desktop/computiq/images/items/img_3.png',
    'Homeopathy':'/Users/alialansari/Desktop/computiq/images/items/img_4.png',
    'Diabetes Care':'/Users/alialansari/Desktop/computiq/images/items/img_5.png',
    'Nutritional Drinks':'/Users/alialansari/Desktop/computiq/images/items/img_6.png',
    'Ayurveda':'/Users/alialansari/Desktop/computiq/images/items/img_7.png',
    'Vitamins & Supplement':'/Users/alialansari/Desktop/computiq/images/items/img_8.png',
  };
  List<ItemSearch> disolay_list = List.from(itemSearchList);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: false,
            title: Text(
              'Search',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(
                  '/Users/alialansari/Desktop/computiq/images/appBarIcon/backIcon.svg'),
              color: Colors.black,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                      '/Users/alialansari/Desktop/computiq/images/appBarIcon/cartIcon.svg'))
            ],
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.all(21.14),
                  child: TextField(
                    autofocus: true,
                    onChanged: (value) {
                      updateList(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Vitamin D3',
                      filled: true,
                      fillColor: Color(0xffF3F2E9),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(13.01)),
                      suffix: SvgPicture.asset(
                        '/Users/alialansari/Desktop/computiq/images/search.svg',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Expanded(
              //   child: disolay_list.length == 0 ?Text('No result ') :ListView.builder(
              //     itemCount: disolay_list.length,
              //     itemBuilder: (context, index) => ListTile(
              //       title: Text(disolay_list[index].name),
              //       leading: Image.asset(disolay_list[index].image),
              //     ),
              //   ) ,
              // ),
              Expanded(
                child: disolay_list.length == 0 ? Center(child: Text('no result')):GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, crossAxisSpacing:  11.39, mainAxisSpacing: 45.27),
                  itemCount: disolay_list.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(16.27),
                    ),
                    child: ListTile(
                      title: Image.asset(disolay_list[index].image ),
                      subtitle: Text(disolay_list[index].name),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

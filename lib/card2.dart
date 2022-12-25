import 'package:flutter/material.dart';

class Card2 extends StatefulWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.39,
      width: 305.79,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.5183),
        color: Color(0xffC7F4C2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          'Upto',
                          style: TextStyle(
                            fontSize: 10.57,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          '80%',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.42),
                    child: Text(
                      'OFFER*',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 8.12,
                      ),
                    ),
                  ),
                  Text(
                    'On Health Products',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 11.39,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff0BAB7C))),
                  ),
                  Flexible(child: Text('Homeopathy, Ayurvedic,',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 8.13,
                    ),
                  )),
                  Flexible(child: Text('Personal Care & More',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 8.13,
                    ),
                  )),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: Image.asset(
                    '/Users/alialansari/Desktop/computiq/images/itemsPicture.png',
                    width: 149.64,
                    height:90,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
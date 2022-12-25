
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final Color? color;
  final double? height;
  final Text? text;
  Card1({this.color,this.height,this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121.99,
      width: 305.79,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.5183),
        color: color,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(19),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        Text(
                          'Upload Prescription',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.64,
                          ),
                        ),
                        SizedBox(
                          height: 3.85,
                        ),
                        Text(
                          'Upload a Prescription and Tell Us what you Need. We do the Rest.!',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'Flat 25% off',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'on Medicines*',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Order Now',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xff5F48E6)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
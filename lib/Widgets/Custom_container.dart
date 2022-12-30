import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class C_Container extends StatelessWidget {
  String img;
  String bitTxt;
  String bitType;
  String price;
  String Rating;
  C_Container({required this.img, required this.bitTxt, required this.bitType, required this.price, required this.Rating});

  @override
  Widget build(BuildContext context) {
    return   Container(
                    height: 51.h,
                    width: 290.w,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 25.h,
                          width: 25.w,
                          child: Image.asset(
                            img,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              bitTxt,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15.sp),
                            ),
                            Text(
                              bitType,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12.sp),
                            ),
                          ],
                        ),
                        Container(
                          height: 25.h,
                          width: 80.w,
                          child: Image.asset(
                            'assets/images/image 4.png',
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              price,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 15.sp),
                            ),
                            Row(
                              children: [
                                Icon(Icons.airline_stops_rounded),
                                Text(
                                  Rating,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp,
                                      color: Colors.red),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
  }
}
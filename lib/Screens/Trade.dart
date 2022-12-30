import 'package:bitcoin_flutter/Widgets/Custom_container.dart';
import 'package:bitcoin_flutter/Widgets/topbar_nicon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Trade extends StatelessWidget {
  const Trade({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(210.h),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  topbarNicon(txt: 'Trade'),
                  SizedBox(
                    height: 18.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.w),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 319.w,
                        height: 57.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff265955),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 9.w, right: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 9.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '#92454544',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.sp,
                                            color: Colors.white),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Demo Accounts',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              Text(
                                '100,000.99 USD',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TabBar(
                    indicatorColor: Color(0xff265955),
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 16.sp,
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Favourites',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Majors',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Metals',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Crypto',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Center(
          child: Container(
            height: 446.h,
            width: 319.w,
            decoration: BoxDecoration(
              color: Color(0xff265955),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, right: 13.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 12.h,
                  ),
                C_Container(img: 'assets/images/bit.png',bitTxt: 'Bitcoin', bitType: '2 BTC', price:'\$301,100',Rating: '-4.2'),
                SizedBox(height: 12.h,),
                C_Container(img: 'assets/images/ethereum 1.png',bitTxt: 'Bitcoin', bitType: '2 BTC', price:'\$301,100',Rating: '-4.2'),
                SizedBox(height: 12.h,),
                C_Container(img: 'assets/images/solana 1.png',bitTxt: 'Bitcoin', bitType: '2 BTC', price:'\$301,100',Rating: '-4.2'),
                SizedBox(height: 12.h,),
                C_Container(img: 'assets/images/tether 1.png',bitTxt: 'Bitcoin', bitType: '2 BTC', price:'\$301,100',Rating: '-4.2'),
                SizedBox(height: 12.h,),
                C_Container(img: 'assets/images/dollar-symbol 1.png',bitTxt: 'Bitcoin', bitType: '2 BTC', price:'\$301,100',Rating: '-4.2'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

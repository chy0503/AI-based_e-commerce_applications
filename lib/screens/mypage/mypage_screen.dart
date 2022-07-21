import 'package:flutter/material.dart';
import 'package:baljachwi_project/screens/mypage/membership_rating_screen.dart';
import 'package:baljachwi_project/screens/mypage/coupon_screen.dart';
import 'package:baljachwi_project/screens/mypage/order_history_screen.dart';
import 'package:baljachwi_project/screens/mypage/address_management_screen.dart';
import 'package:baljachwi_project/screens/mypage/review_screen.dart';
import 'package:baljachwi_project/screens/mypage/gift_history_screen.dart';
import 'package:baljachwi_project/screens/mypage/edit_member_info_screen.dart';
import 'package:baljachwi_project/screens/mypage/invite_friend_screen.dart';
import 'package:baljachwi_project/screens/mypage/personal_inquiry_screen.dart';
import 'package:baljachwi_project/screens/mypage/product_inquiry_screen.dart';
import 'package:baljachwi_project/screens/mypage/notice_screen.dart';
import 'package:baljachwi_project/screens/mypage/introduce_screen.dart';
import 'package:baljachwi_project/screens/mypage/information_use_screen.dart';

class mypage extends StatelessWidget {
  const mypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.navigate_before),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {}, // 페이지 연결
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/logo/logo.png'), // 나중에 장바구니 로고로 변경
            onPressed: null,
          )
        ],
        backgroundColor: Color(0xffffa511),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Color(0xffffa511),
              height: 140,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              child: Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {}, // 사진 변경 기능
                    child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      padding: const EdgeInsets.all(5),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset('assets/logo/logo.png'),
                    ),
                  ),
                  Text(
                    'baljachi 님',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.all(5),
                              child: Text(
                                '회원 등급',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffa6a6a6),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.all(5),
                              child: Text(
                                'SILVER',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffffa511),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(left: 40, right: 40),
                        child: ElevatedButton(
                          child: Text(
                            '할인혜택 보기',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffa6a6a6),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 0,
                            primary: Color(0xfff2f2f2),
                            fixedSize: Size(100, 45),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => membershipRating(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color(0xffd9d9d9),
                              width: 1,
                            ),
                            right: BorderSide(
                              color: Color(0xffd9d9d9),
                              width: 1,
                            ),
                            bottom: BorderSide(
                              color: Color(0xffd9d9d9),
                              width: 1,
                            ),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => coupon(),
                              ),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.all(5),
                                child: Text(
                                  '사용 가능 쿠폰',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xffa6a6a6),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.all(5),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffffa511),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color(0xffd9d9d9),
                              width: 1,
                            ),
                            bottom: BorderSide(
                              color: Color(0xffd9d9d9),
                              width: 1,
                            ),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => nonmemberOrder(),
                            //   ),
                            // );
                          },
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.all(5),
                                child: Text(
                                  '함께 배송 mate',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xffa6a6a6),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.all(5),
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffffa511),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(height: 30),
            Container(
              margin: const EdgeInsets.all(25),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(5),
                    child: Text(
                      '나의 쇼핑',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7f7f7f),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 10),
                    height: 5,
                    color: Color(0xff7f7f7f),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => orderHistory(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '주문 내역',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffa6a6a6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    height: 1,
                    color: Color(0xffd9d9d9),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => addressMange(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '배송지 관리',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffa6a6a6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    height: 1,
                    color: Color(0xffd9d9d9),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => review(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '리뷰',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffa6a6a6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    height: 1,
                    color: Color(0xffd9d9d9),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => giftHistory(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '선물 내역',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffa6a6a6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    height: 1,
                    color: Color(0xffd9d9d9),
                  ),
                  Container(height: 30),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(5),
                    child: Text(
                      '계정 설정',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7f7f7f),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 10),
                    height: 5,
                    color: Color(0xff7f7f7f),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => editMemberInfo(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '회원 정보 수정',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffa6a6a6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    height: 1,
                    color: Color(0xffd9d9d9),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => inviteFriend(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '친구 초대',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffa6a6a6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    height: 1,
                    color: Color(0xffd9d9d9),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => nonmemberOrder(),
                      //   ),
                      // );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '로그아웃',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffa6a6a6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    height: 1,
                    color: Color(0xffd9d9d9),
                  ),
                  Container(height: 30),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(5),
                    child: Text(
                      '고객 센터',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7f7f7f),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 10),
                    height: 5,
                    color: Color(0xff7f7f7f),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => personalInquiry(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '1:1 문의',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffa6a6a6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    height: 1,
                    color: Color(0xffd9d9d9),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => productInquiry(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '상품 문의',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffa6a6a6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    height: 1,
                    color: Color(0xffd9d9d9),
                  ),
                  Container(height: 30),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(5),
                    child: Text(
                      '발자취',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7f7f7f),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 10),
                    height: 5,
                    color: Color(0xff7f7f7f),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => notice(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '공지사항',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffa6a6a6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    height: 1,
                    color: Color(0xffd9d9d9),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => informationUse(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '이용 안내',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffa6a6a6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    height: 1,
                    color: Color(0xffd9d9d9),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => introduce(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '회사 소개',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffa6a6a6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    height: 1,
                    color: Color(0xffd9d9d9),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
1. 장바구니 로고 바꾸기 + 장바구니 담은 상품 개수
2. 회원 정보 불러오기, 연동
3. 프로필 사진 변경 기능
4. 페이지 연결 확인
5. 스크롤 시 onTap 활성화 된 부분은 스크롤되지 않는 문제
6. 리뷰 - 배달 완료되어 리뷰를 작성할 수 있는 주문 내역이 있을 때 new가 뜨도록
*/

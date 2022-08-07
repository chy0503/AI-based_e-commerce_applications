import 'package:baljachwi_project/screens/mypage/write_personal_inquiry_screen.dart';
import 'package:flutter/material.dart';
import 'order_history_detail_screen.dart';

//AppBar
AppBar makeAppBar(BuildContext context, String title) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
    leading: IconButton(
      icon: Icon(Icons.navigate_before),
      color: Colors.black,
      iconSize: 30,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    backgroundColor: Colors.white,
    shape: Border(bottom: BorderSide(color: Color(0xffc0c0c0), width: 2)),
    elevation: 0,
  );
}

//mypage, nonmember_home
Column makeCol(double m, String title) {
  return Column(
    children: [
      Container(height: m),
      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.all(5),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xff7f7f7f),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 5, bottom: 10),
        height: 5,
        color: const Color(0xff7f7f7f),
      ),
    ],
  );
}

//mypage, nonmember_home
Container makeList(BuildContext context, Widget path, String title) {
  return Container(
    child: Column(
      children: [
        GestureDetector(
          onVerticalDragUpdate: (DragUpdateDetails details) {},
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => path,
              ),
            );
          },
          child: Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.all(5),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xffa6a6a6),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 8),
          height: 1,
          color: const Color(0xffd9d9d9),
        )
      ],
    ),
  );
}

// order
Container make_orderList(BuildContext context, var _orderNum, String _product,
    String _time, String _payment, var _price, var _num, String _state) {
  return Container(
    alignment: Alignment.centerLeft,
    margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Color(0xffd9d9d9)),
      color: Colors.white,
    ),
    padding: const EdgeInsets.fromLTRB(30, 5, 30, 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              flex: 7,
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: Text(
                  '주문 번호',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 20,
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: Text(
                  _orderNum.toString(),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: IconButton(
                  icon: Icon(
                    Icons.navigate_next,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => orderHistoryDetail(_orderNum,
                            _product, _time, _payment, _price, _num, _state),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 1,
          margin: const EdgeInsets.only(top: 5, bottom: 15),
          color: Color(0xffd9d9d9),
        ),
        make_orderRow('상품명', _product),
        Container(height: 10),
        make_orderRow('결제 금액', f.format(_price * _num).toString() + '원'),
        Container(height: 10),
        make_orderRow('결제 일시', _time),
        Container(height: 10),
        make_orderRow('주문 상태', _state),
      ],
    ),
  );
}

Row make_orderRow(String title, String content) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Expanded(
        flex: 7,
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff7f7f7f)),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      Expanded(
        flex: 23,
        child: Container(
          child: Text(
            content,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    ],
  );
}

Widget make_textField(String _hint, TextEditingController _controller) {
  return Container(
    height: 50,
    margin: const EdgeInsets.only(bottom: 7),
    child: TextField(
      controller: _controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Color(0xffd9d9d9), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Color(0xffd9d9d9), width: 2),
        ),
        hintText: _hint,
        hintStyle: TextStyle(color: Color(0xffa6a6a6)),
      ),
    ),
  );
}

Container make_tap(String _tap) {
  return Container(
    color: Colors.white,
    height: 50,
    alignment: Alignment.center,
    child: Text(
      _tap,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17,
      ),
    ),
  );
}

Container make_inquiryText(String _text) {
  return Container(
    alignment: Alignment.topLeft,
    child: Text(
      _text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget make_inquiryTextForm(String _title, TextFormField _form) {
  return Column(
    children: [
      make_inquiryText(_title),
      Container(
        height: 40,
        margin: const EdgeInsets.only(top: 5, bottom: 20),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xffa6a6a6), width: 1),
          ),
        ),
        child: _form,
      ),
    ],
  );
}

InputDecoration inquiryFieldDeco(String _hint) {
  return InputDecoration(
    border: InputBorder.none,
    hintText: _hint,
    hintStyle: TextStyle(color: Color(0xffa6a6a6)),
  );
}

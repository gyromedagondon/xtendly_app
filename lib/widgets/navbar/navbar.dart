import 'package:flutter/material.dart';
import 'package:xtendly/constraints.dart';
import 'package:xtendly/widgets/navbar/navbar_items.dart';

class NavBar extends StatefulWidget {
  NavBar();

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      //color: Colors.white.withOpacity(0.5),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 0,
            color: Colors.white,
            spreadRadius: 0,
            offset: Offset(0, 3))
      ]),
      child: Padding(
        padding: EdgeInsets.all(2),
        child: Expanded(
          child: Row(children: [
            SizedBox(width: 30),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Image(image: AssetImage('lib/assets/Ellipse 2.png')),
            ),
            SizedBox(width: screenSize.width / 8),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[0] = true : _isHovering[0] = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HOME',
                    style: TextStyle(
                      color: _isHovering[0]
                          ? Color.fromARGB(255, 214, 147, 123)
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenSize.width / 40),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[1] = true : _isHovering[1] = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'NEW ARRIVAL',
                    style: TextStyle(
                      color: _isHovering[1]
                          ? Color.fromARGB(255, 214, 147, 123)
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenSize.width / 40),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[2] = true : _isHovering[2] = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SHOP',
                    style: TextStyle(
                      color: _isHovering[2]
                          ? Color.fromARGB(255, 214, 147, 123)
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenSize.width / 40),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[3] = true : _isHovering[3] = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'LAST COLLECTION',
                    style: TextStyle(
                      color: _isHovering[3]
                          ? Color.fromARGB(255, 214, 147, 123)
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenSize.width / 40),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[4] = true : _isHovering[4] = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MEN',
                    style: TextStyle(
                      color: _isHovering[4]
                          ? Color.fromARGB(255, 214, 147, 123)
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenSize.width / 40),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[5] = true : _isHovering[5] = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WOMEN',
                    style: TextStyle(
                      color: _isHovering[5]
                          ? Color.fromARGB(255, 214, 147, 123)
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenSize.width / 40),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 28,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(30)),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: 'Search',
                    hintStyle: TextStyle(fontWeight: FontWeight.w600),
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8)),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8)),
                child: Icon(Icons.star_outline),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:xtendly/screens/responsive.dart';
import 'package:xtendly/widgets/buttons.dart';
import 'package:xtendly/widgets/navbar/drawer_items.dart';
import 'package:xtendly/widgets/navbar/navbar.dart';
import 'package:xtendly/widgets/navbar/navbar_items.dart';
import 'package:xtendly/widgets/sale_banner/sale_banner.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      /*appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 56), child: NavBar()),*/
      //drawer: DrawerItems(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              //SECTION 1==================================================================
              Stack(
                children: [
                  Container(
                      child: Image(
                        image: AssetImage('lib/assets/background.png'),
                        fit: BoxFit.cover,
                      ),
                      height: 800,
                      width: MediaQuery.of(context).size.width),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text('Help',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Text('   |   ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          InkWell(
                            onTap: () {},
                            child: Text('Join Us',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Text('   |   ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          InkWell(
                            onTap: () {},
                            child: Text('Sign In',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: NavBar(),
                  ),
                ],
              ),
              Positioned(
                top: 120,
                left: 20,
                child: Container(
                    child: Image(
                      image: AssetImage('lib/assets/dailyaestheticshoodie.png'),
                      fit: BoxFit.cover,
                    ),
                    height: 480,
                    width: 350),
              ),
              Positioned(
                top: 110,
                right: 30,
                child: Container(
                    child: Image(
                      image: AssetImage('lib/assets/hoodiesonhanger.png'),
                      fit: BoxFit.cover,
                    ),
                    height: 540,
                    width: 670),
              ),
              Positioned(
                left: 350,
                bottom: 120,
                child: Container(
                    child: Image(
                      image: AssetImage('lib/assets/guywithhoodie.png'),
                      fit: BoxFit.cover,
                    ),
                    height: 500,
                    width: 380),
              ),
              Positioned(
                  top: 570,
                  right: 590,
                  child: Center(child: defaultbutton('SHOP NOW'))),
            ]),

            //SECTION 2=================================================================
            Container(
                color: Color.fromARGB(255, 231, 231, 231),
                height: 800,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 100, left: 50, right: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(children: [
                            featuredPhotos(Image(
                                image: AssetImage(
                                    'lib/assets/girlwithhoodie.png'))),
                            Positioned(
                                bottom: 70,
                                left: 80,
                                child: Center(
                                  child: defaultbutton('Sweatshirts'),
                                ))
                          ]),
                          Stack(children: [
                            featuredPhotos(Image(
                                image: AssetImage(
                                    'lib/assets/guywithhoodie.png'))),
                            Positioned(
                                bottom: 70,
                                left: 80,
                                child: Center(
                                  child: defaultbutton('Hoodies'),
                                ))
                          ]),
                          Stack(children: [
                            featuredPhotos(Image(
                                image: AssetImage(
                                    'lib/assets/girlwithhoodie.png'))),
                            Positioned(
                                bottom: 70,
                                left: 80,
                                child: Center(
                                  child: defaultbutton('Pair'),
                                ))
                          ]),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150, right: 150),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                        style: TextStyle(fontSize: 20, letterSpacing: 1.5),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),

            //SALE BANNER
            SaleBanner(),
            SizedBox(height: 100),

            //SECTION 3 TEST ONLY
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        featuredMenu(
                            Image(
                                image: AssetImage(
                                    'lib/assets/girlwithhoodie.png')),
                            '15% OFF'),
                        Text(
                          'LOREM IPSUM                    ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Lorem Ipsum                                   ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        featuredMenu(
                            Image(
                                image: AssetImage(
                                    'lib/assets/girlwithhoodie.png')),
                            '15% OFF'),
                        Text(
                          'LOREM IPSUM                    ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Lorem Ipsum                                   ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        featuredMenu(
                            Image(
                                image: AssetImage(
                                    'lib/assets/girlwithhoodie.png')),
                            '15% OFF'),
                        Text('LOREM IPSUM                    ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(
                          'Lorem Ipsum                                   ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        featuredMenu(
                            Image(
                                image: AssetImage(
                                    'lib/assets/girlwithhoodie.png')),
                            '15% OFF'),
                        Text(
                          'LOREM IPSUM                    ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Lorem Ipsum                                   ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        featuredMenu(
                            Image(
                                image: AssetImage(
                                    'lib/assets/girlwithhoodie.png')),
                            '15% OFF'),
                        Text(
                          'LOREM IPSUM                    ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Lorem Ipsum                                   ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        featuredMenu(
                            Image(
                                image: AssetImage(
                                    'lib/assets/girlwithhoodie.png')),
                            '15% OFF'),
                        Text(
                          'LOREM IPSUM                    ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Lorem Ipsum                                   ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        featuredMenu(
                            Image(
                                image: AssetImage(
                                    'lib/assets/girlwithhoodie.png')),
                            '15% OFF'),
                        Text('LOREM IPSUM                    ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(
                          'Lorem Ipsum                                   ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        featuredMenu(
                            Image(
                                image: AssetImage(
                                    'lib/assets/girlwithhoodie.png')),
                            '15% OFF'),
                        Text(
                          'LOREM IPSUM                    ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Lorem Ipsum                                   ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

            //FOOTER SECTION
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //COMPANY LOGO
                    Row(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            child: Image(
                                image: AssetImage('lib/assets/Ellipse 2.png'),
                                fit: BoxFit.cover)),
                      ],
                    ),

                    //SOCIAL MEDIA LINKS
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Container(
                                  width: 600,
                                  child: Row(
                                    children: [
                                      Icon(Icons.telegram_outlined,
                                          size: 35, color: Colors.black54),
                                      SizedBox(width: 20),
                                      Container(
                                        width: 400,
                                        child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                            style: TextStyle(
                                                color: Colors.black54)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, top: 20, bottom: 20),
                                child: Container(
                                  width: 600,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.phone_iphone,
                                          size: 35, color: Colors.black54),
                                      SizedBox(width: 20),
                                      Text(
                                        'Lorem Ipsum',
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Container(
                                  width: 600,
                                  child: Row(
                                    children: [
                                      Icon(Icons.mail_outline,
                                          size: 35, color: Colors.black54),
                                      SizedBox(width: 20),
                                      Text(
                                        'Lorem ipsum dolor sit amet',
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    //SOCIAL MEDIA ICONS
                    Row(
                      children: [
                        Icon(Icons.facebook, size: 48, color: Colors.black54),
                        SizedBox(width: 20),
                        Icon(Icons.facebook, size: 48, color: Colors.black54),
                        SizedBox(width: 20),
                        Icon(Icons.facebook, size: 48, color: Colors.black54),
                      ],
                    ),
                  ],
                ),

                //TEXT INFORMATION
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 60, 60, 180),
                  child: Column(
                    children: [
                      Text(
                        'COLLECTION',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 60, 60, 180),
                  child: Column(
                    children: [
                      Text(
                        'INFORMATION',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 60, 60, 180),
                  child: Column(
                    children: [
                      Text(
                        'MORE',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//FEATURED PHOTO CONTAINER
Container featuredPhotos(Image image) {
  return Container(padding: EdgeInsets.all(20), height: 500, child: image);
}

//FEATURED MENU CONTAINER
Container featuredMenu(Image image, text) {
  return Container(
      height: 370,
      width: 280,
      child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Stack(
            children: [
              image,
              Positioned(top: 18, right: -5, child: labelPercent(text))
            ],
          )));
}

//PERCENTAGE OFF LABEL
Container labelPercent(String percent) {
  return Container(
    padding: EdgeInsets.all(10),
    color: Color.fromARGB(255, 235, 215, 160),
    child: Text(
      percent,
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xtendly/screens/desktop_layout.dart';
import 'package:xtendly/widgets/buttons.dart';
import 'package:xtendly/widgets/sale_banner/mobile_sale_banner.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Image(image: AssetImage('lib/assets/Ellipse 2.png')),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 26.0,
                    ))),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.star_outline,
                      size: 26.0,
                    )))
          ]),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(
                child: Image(image: AssetImage('lib/assets/Ellipse 2.png'))),
            InkWell(
                onTap: () {},
                child:
                    ListTile(leading: Icon(Icons.home), title: Text('HOME'))),
            InkWell(
                onTap: () {},
                child: ListTile(
                    leading: Icon(Icons.new_label),
                    title: Text('NEW ARRIVAL'))),
            InkWell(
                onTap: () {},
                child: ListTile(
                    leading: Icon(Icons.shopping_cart), title: Text('SHOP'))),
            InkWell(
                onTap: () {},
                child: ListTile(
                    leading: Icon(Icons.shop), title: Text('LAST COLLECTION'))),
            InkWell(
                onTap: () {},
                child: ListTile(leading: Icon(Icons.man), title: Text('MEN'))),
            InkWell(
                onTap: () {},
                child:
                    ListTile(leading: Icon(Icons.woman), title: Text('WOMEN'))),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //SECTION 1========================================================================================
            Stack(children: [
              Container(
                  child: Image(
                    image: AssetImage('lib/assets/background.png'),
                    fit: BoxFit.cover,
                  ),
                  height: 800,
                  width: MediaQuery.of(context).size.width),
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                    child: Image(
                      image: AssetImage('lib/assets/dailyaestheticshoodie.png'),
                      fit: BoxFit.cover,
                    ),
                    height: 400,
                    width: 230),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                    child: Image(
                      image: AssetImage('lib/assets/hoodiesonhanger.png'),
                      fit: BoxFit.cover,
                    ),
                    height: 190,
                    width: 280),
              ),
              Positioned(
                left: 15,
                bottom: 300,
                child: Container(
                    child: Image(
                      image: AssetImage('lib/assets/guywithhoodie.png'),
                      fit: BoxFit.cover,
                    ),
                    height: 400,
                    width: 230),
              ),
              Positioned(
                  top: 280,
                  right: 85,
                  child: Center(child: defaultbutton('SHOP NOW'))),
            ]),

            //SECTION 2 =====================================================================================
            Container(
                color: Color.fromARGB(255, 231, 231, 231),
                height: 1600,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(children: [
                            mobilefeaturedPhotos(Image(
                              image:
                                  AssetImage('lib/assets/girlwithhoodie.png'),
                              fit: BoxFit.cover,
                            )),
                            Positioned(
                                bottom: 70,
                                left: 80,
                                child: Center(
                                  child: defaultbutton('Sweatshirts'),
                                ))
                          ]),
                          Stack(children: [
                            mobilefeaturedPhotos(Image(
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
                            mobilefeaturedPhotos(Image(
                                image: AssetImage(
                                    'lib/assets/girlwithhoodie.png'))),
                            Positioned(
                                bottom: 70,
                                left: 80,
                                child: Center(
                                  child: defaultbutton('Pair'),
                                )),
                          ]),
                        ],
                      ),
                    ),
                  ],
                )),

            //SALE BANNER====================================================================================
            MobileSaleBanner(),
            //SECTION 3======================================================================================
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          mobilefeaturedMenu(
                              Image(
                                  image: AssetImage(
                                      'lib/assets/girlwithhoodie.png')),
                              '15% OFF'),
                          Text(
                            'LOREM IPSUM                  ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Lorem Ipsum                                 ',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          mobilefeaturedMenu(
                              Image(
                                  image: AssetImage(
                                      'lib/assets/girlwithhoodie.png')),
                              '15% OFF'),
                          Text('LOREM IPSUM                  ',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text(
                            'Lorem Ipsum                                 ',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          mobilefeaturedMenu(
                              Image(
                                  image: AssetImage(
                                      'lib/assets/girlwithhoodie.png')),
                              '15% OFF'),
                          Text(
                            'LOREM IPSUM                  ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Lorem Ipsum                                 ',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          mobilefeaturedMenu(
                              Image(
                                  image: AssetImage(
                                      'lib/assets/girlwithhoodie.png')),
                              '15% OFF'),
                          Text(
                            'LOREM IPSUM                  ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Lorem Ipsum                                 ',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          mobilefeaturedMenu(
                              Image(
                                  image: AssetImage(
                                      'lib/assets/girlwithhoodie.png')),
                              '15% OFF'),
                          Text(
                            'LOREM IPSUM                  ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Lorem Ipsum                                 ',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          mobilefeaturedMenu(
                              Image(
                                  image: AssetImage(
                                      'lib/assets/girlwithhoodie.png')),
                              '15% OFF'),
                          Text(
                            'LOREM IPSUM                  ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Lorem Ipsum                                 ',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                    top: 300,
                    right: 85,
                    child: Center(child: defaultbutton('MORE'))),
              ],
            ),

            //FOOTER SECTION=================================================================================
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 50, 100, 20),
                      child: Container(
                          width: 85,
                          height: 85,
                          child: Image(
                            image: AssetImage('lib/assets/Ellipse 2.png'),
                            fit: BoxFit.cover,
                          )),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 10, 10),
                      child: Icon(
                        FontAwesomeIcons.locationArrow,
                        size: 30,
                        color: Colors.black54,
                      ),
                    ),
                    Container(
                      width: 150,
                      child: Center(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                          maxLines: 2,
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 10, 10),
                      child: Icon(Icons.phone_iphone,
                          size: 30, color: Colors.black54),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        'Lorem ipsum',
                        maxLines: 2,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black54),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 10, 10),
                      child: Icon(Icons.mail_outline,
                          size: 30, color: Colors.black54),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        'Lorem ipsum dolor sit amet',
                        maxLines: 2,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black54),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 10, 10),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.facebook,
                          color: Colors.black54,
                          size: 45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.facebook,
                          color: Colors.black54,
                          size: 45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.facebook,
                          color: Colors.black54,
                          size: 45,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 23),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FooterMenuItem('COLLECTION'),
                    FooterMenuItem('INFORMATION'),
                    FooterMenuItem('MORE'),
                    SizedBox(height: 50)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

//FEATURED PHOTO CONTAINER
Container mobilefeaturedPhotos(Image image) {
  return Container(padding: EdgeInsets.all(20), width: 320, child: image);
}

//FEATURED MENU CONTAINER
Container mobilefeaturedMenu(Image image, text) {
  return Container(
      height: 370,
      width: 280,
      child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Stack(
            children: [
              image,
              Positioned(top: 18, right: -5, child: labelPercent(text))
            ],
          )));
}

Container FooterMenuItem(String text) {
  return Container(
      width: 260,
      child: InkWell(
        onTap: () {},
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ));
}

import 'package:flutter/material.dart';
import 'package:xtendly/constraints.dart';
import 'package:xtendly/screens/desktop_layout.dart';
import 'package:xtendly/widgets/buttons.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

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
                    height: 480,
                    width: 350),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                    child: Image(
                      image: AssetImage('lib/assets/hoodiesonhanger.png'),
                      fit: BoxFit.cover,
                    ),
                    height: 240,
                    width: 390),
              ),
              Positioned(
                left: 15,
                bottom: 300,
                child: Container(
                    child: Image(
                      image: AssetImage('lib/assets/guywithhoodie.png'),
                      fit: BoxFit.cover,
                    ),
                    height: 450,
                    width: 330),
              ),
            ]),

            //SECTION 2
            Container(
                color: Color.fromARGB(255, 231, 231, 231),
                height: 1600,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 80, left: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(children: [
                            featuredPhotos(Image(
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
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

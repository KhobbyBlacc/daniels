
import 'package:flutter/material.dart';

import '../ar.dart';
import '../favorite.dart';
import '../gallery_screen.dart';
import '../show.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

//list of NavItems
enum BottomsIcons {
  gallary,
  fashion,
  favorites,
  ar
}


class _BottomNavState extends State<BottomNav> {

  BottomsIcons bottomsIcons = BottomsIcons.gallary;
  @override
  Widget build(BuildContext context) {
    
return Scaffold(
        body: Stack(children: <Widget>[
      //calling Fragments from the bottomNav
      bottomsIcons == BottomsIcons.gallary
          ? const Center(
              child: GalleryPage(),
            )
          : Container(),
      // bottomsIcons == BottomsIcons.fashion
      //     ? const Center(
      //     child: Show(),
      //       )
      //     : Container(), 
          bottomsIcons == BottomsIcons.ar
          ? const Center(
          child: ARScreen(),
            )
          : Container(),
      bottomsIcons == BottomsIcons.favorites
          ? const Center(
             child: Favorites(),
            )
          : Container(),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
         padding:const EdgeInsets.only(top:10, bottom: 10, left: 2),
          height: 75,
           decoration:const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
           // blurRadius: 10,
            //offset: Offset(0, 10),
          )
        ],
          //  borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    bottomsIcons = BottomsIcons.gallary;
                  });
                },
                child: bottomsIcons == BottomsIcons.gallary
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.green.shade100.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding:const EdgeInsets.only(
                            left: 16, right: 16, top: 8, bottom: 8),
                        child:const Row(
                          children:  [
                            Icon(
                             Icons.photo_album,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Gallery",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      )
                    : const Icon(Icons.photo_album, 
                    color: Colors.white,),
              ),
              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       bottomsIcons = BottomsIcons.fashion;
              //     });
              //   },
              //   child: bottomsIcons == BottomsIcons.fashion
              //       ? Container(
              //           decoration: BoxDecoration(
              //             color: Colors.green.shade100.withOpacity(0.6),
              //             borderRadius: BorderRadius.circular(30),
              //           ),
              //           padding:const EdgeInsets.only(
              //               left: 16, right: 16, top: 8, bottom: 8),
              //           child: const Row(
              //             children:[
              //               Icon(
              //                   Icons.draw_sharp,
              //                   color: Colors.green,
                            
              //               ),
              //               SizedBox(
              //                 width: 8,
              //               ),
              //               Text(
              //                 "Fashion",
              //                 style: TextStyle(
              //                   fontWeight: FontWeight.bold,
              //                   fontSize: 15,
              //                   color: Colors.green,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         )
              //       : const Icon(Icons.browser_updated, 
              //       color: Colors.white),
              // ),
              
              GestureDetector(
                onTap: () {
                  setState(() {
                    bottomsIcons = BottomsIcons.ar;
                  });
                },
                child: bottomsIcons == BottomsIcons.ar
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.green.shade100.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding:const EdgeInsets.only(
                            left: 16, right: 16, top: 8, bottom: 8),
                        child: const Row(
                          children:[
                            Icon(
                                Icons.architecture,
                                color: Colors.green,
                            
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "AR",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      )
                    : const Icon(Icons.architecture, 
                    color: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    bottomsIcons = BottomsIcons.favorites;
                  });
                },
                child: bottomsIcons == BottomsIcons.favorites
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.green.shade100.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 8, bottom: 8),
                        child:const Row(
                          children: [
                            Icon(
                               Icons.favorite,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Favorites",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      )
                    :const Icon( Icons.favorite, 
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ]));
  }
}
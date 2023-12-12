import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class ProjectUiWrkDemo extends StatefulWidget {
  const ProjectUiWrkDemo({super.key});

  @override
  State<ProjectUiWrkDemo> createState() => _ProjectUiWrkDemoState();
}
int _index=1;
class _ProjectUiWrkDemoState extends State<ProjectUiWrkDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Card(
        child: CurvedNavigationBar(
          items: [
            Icon(Icons.favorite,size: 30,color: Colors.black26,),
            Icon(Icons.shopping_cart,size: 60,color: Colors.white,),
            Icon(Icons.person,size: 30,color: Colors.black26,),
          ],
          backgroundColor: Colors.transparent,
          height: 50,
          buttonBackgroundColor: Colors.orange,
          index:_index,
          onTap: (index){
            setState(() {

            });
          },
        ),
        elevation: 45,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                children: [
                  Text("F", style: TextStyle( fontSize: 30),),
                  Text("oo",style: TextStyle(fontSize: 25,color: Colors.orange),),
                  Text("die",style: TextStyle(fontSize: 25)),
                  Padding(
                    padding: const EdgeInsets.only(left: 250.0),
                    child: Icon(Icons.notifications_none_sharp),
                  ),
                  Icon(Icons.shopping_cart_outlined),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                  hintText:"Search your favarite food",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Stack(
              children: [
                Container(
                  width: 330,
                  height: 160,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: Column(
                      children: [
                        Text("The Faster Food",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        Text("Delivery",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                            ),

                            onPressed: (){},
                            child: Text("Order Now",style: TextStyle(fontWeight: FontWeight.bold),)),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors:[
                        Colors.amberAccent,
                        Colors.white,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),

                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Container(
                    width: 160,
                    height: 160,
                      decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/image/Deliveryboy-removebg-preview.png"),
                        fit: BoxFit.fitWidth,
                      ),
                        color: Colors.transparent,
                      ),
                ),
                  ),
                ),
              ],
            ),
            // Container(
            //   width: 330,
            //   height: 160,
            //   child: Column(
            //     children: [
            //       Text("The Faster Food",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            //       Text("Delivery",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            //       ElevatedButton(
            //           style: ElevatedButton.styleFrom(
            //             backgroundColor: Colors.orange,
            //             foregroundColor: Colors.white,
            //           ),
            //
            //           onPressed: (){},
            //           child: Text("Order Now",style: TextStyle(fontWeight: FontWeight.bold),)),
            //     ],
            //   ),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     gradient: LinearGradient(
            //       colors:[
            //         Colors.amberAccent,
            //         Colors.white,
            //       ],
            //       begin: Alignment.bottomCenter,
            //       end: Alignment.topCenter,
            //     ),
            //     // image: const DecorationImage(
            //     //   image: AssetImage("assets/image/Deliverboy.jpg"),
            //
            //     //),
            //   ),
            //
            // ),
            Row(
              children: [
                Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.only(left: 180.0),
                  child: OutlinedButton(
                      onPressed: (){},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide.none,
                      ),
                      child: Text("View all",style: TextStyle(fontSize: 17,color: Colors.orange),),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Card(
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage("assets/image/Burger.jpg"),
                            ),
                          ),
                        ),
                        elevation: 25,
                      ),
                      Text("Fast Food",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Card(
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                            image: AssetImage("assets/image/vegbiriyani.jpg"),
                            ),
                          ),
                        ),
                        elevation: 25,
                      ),
                      Text("Biriyani",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Card(
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage("assets/image/juice.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        elevation: 25,
                      ),
                     Text("Juice",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Card(
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage("assets/image/snack.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        elevation: 25,
                      ),
                      Text("Snack",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text("Most Popular",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Icon(Icons.local_fire_department_sharp,color: Colors.red,),
                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: OutlinedButton(
                      onPressed: (){},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide.none,
                      ),
                      child: Text("View all",style: TextStyle(fontSize: 17,color: Colors.orange),)),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Card(
                    child: Container(
                      width: 130,
                      height: 175,
                      child: Column(
                        children: [
                          Card(
                            elevation: 25,
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/image/Biriyani.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Text("Chicken biriyani",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Text("Rs.149",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.add,size: 30,color: Colors.white,)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                      ),
                    ),
                    elevation: 15,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Card(
                    child: Container(
                      width: 130,
                      height: 175,
                      child: Column(
                        children: [
                          Card(
                            elevation: 25,
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/image/BeefKacchi.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Text("Beef kacchi",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Text("Rs.299",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.add,size: 30,color: Colors.white,)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                      ),
                    ),
                    elevation: 15,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 130,
                    height: 180,
                    
                    child: Card(
                      elevation: 15,
                      child: Column(
                        children: [
                          Card(
                            child: Container(
                             width: 100,
                             height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/image/flyingburger.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            elevation: 25,
                          ),
                          Text("Beef Burger",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Text("Rs.49",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                      child: Icon(Icons.add,size: 30,color: Colors.white,)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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

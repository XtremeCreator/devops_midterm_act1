import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        scaffoldBackgroundColor: Colors.black87,
        appBarTheme: AppBarTheme(
          color: Colors.black87,
        )),
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87, // Set the background color
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.grey.shade900,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));},
                  child: Row(
                    children: [
                      Text(
                        'Home',
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          width: 4.0), // Add spacing between the title and arrow
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  'assets/reddit.png',
                  height: 35,
                )
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black87,
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Communities',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Colors.white,
                    )
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Create a community',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 75),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    ),
                  ],
                )),
            ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.speaker_notes_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Custom Feeds',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 110),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.bar_chart,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Charts',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/reddit-user.png',
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'r/Reddits',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ]),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Why im like this?',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_upward_outlined),
                                  color: Colors.white,
                                ),
                                Text(
                                  '80 |',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_downward_outlined),
                                  color: Colors.white,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.chat),
                                  color: Colors.white,
                                ),
                                Text(
                                  '15 Comments',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.share),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  //second post

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/basketball.jpg',
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'r/bballsk',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ]),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'No one can down me!',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset('assets/jordan.jpg',height: 350,width: 350,fit: BoxFit.cover,),
                          ),
                        ],
                      )


                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_upward_outlined),
                                  color: Colors.white,
                                ),
                                Text(
                                  '786 |',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_downward_outlined),
                                  color: Colors.white,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.chat),
                                  color: Colors.white,
                                ),
                                Text(
                                  '98 Comments',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.share),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/heart.jpg',
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'r/valentines',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ]),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'I love you!',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'I hope this message finds you wrapped in warmth and joy. As I sit down to pen these words, my heart is overflowing with love for you. There are moments in life when the simplest expressions carry the weight of the deepest emotions, and this is one of those times.',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_upward_outlined),
                                  color: Colors.white,
                                ),
                                Text(
                                  '43 |',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_downward_outlined),
                                  color: Colors.white,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.chat),
                                  color: Colors.white,
                                ),
                                Text(
                                  '75 Comments',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.share),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  //third post

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/reddit-user.png',
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'r/funny',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ]),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'He held it in very well',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset('assets/hold.jpg',width: 350,
                                height: 350,
                                fit: BoxFit.cover,),
                            ),
                          ],
                        )

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_upward_outlined),
                                  color: Colors.white,
                                ),
                                Text(
                                  '32 |',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_downward_outlined),
                                  color: Colors.white,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.chat),
                                  color: Colors.white,
                                ),
                                Text(
                                  '27 Comments',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.share),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0, // Adjust the notch margin as needed

        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                Text('Home', style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.people_outline,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                Text('Communities', style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                Text('Create', style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Badge(
                    child: Icon(
                      Icons.message_outlined,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
                Text('Chat', style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Badge(
                    child: Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
                Text('Inbox', style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

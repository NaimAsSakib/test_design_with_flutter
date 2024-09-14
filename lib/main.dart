import 'package:flutter/material.dart';

const imageUrl =
    'https://cdn.bangladeshscenictours.com/wp-content/uploads/2019/11/Exploring-Coxs-Bazar.jpg';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyProfile(),
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Demo Design'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.fitWidth,
            ), // width is screenSize
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'This is Coxbazar',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.7),
                  ),
                  Text(
                    'Longest beach in the world!!',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.7),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                       showCustomSnackBar(context, 'Calling');
                      },
                      backgroundColor: Colors.blue,
                      // Set the background color to blue
                      child: const Icon(
                        Icons.call,
                        color: Colors
                            .white, // Set the icon color to white for better contrast
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: () {
                        showCustomSnackBar(context, 'Sharing');
                      },
                      backgroundColor: Colors.blue,
                      // Set the background color to blue
                      child: const Icon(
                        Icons.share,
                        color: Colors
                            .white, // Set the icon color to white for better contrast
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: () {
                        showCustomSnackBar(context, 'Weighting');
                      },
                      backgroundColor: Colors.blue,
                      // Set the background color to blue
                      child: const Icon(
                        Icons.monitor_weight,
                        color: Colors
                            .white, // Set the icon color to white for better contrast
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        showCustomSnackBar(context, 'Calling');
                      },
                      backgroundColor: Colors.blue,
                      // Set the background color to blue
                      child: const Icon(
                        Icons.call,
                        color: Colors
                            .white, // Set the icon color to white for better contrast
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: () {
                        showCustomSnackBar(context, 'Alarming');
                      },
                      backgroundColor: Colors.blue,
                      // Set the background color to blue
                      child: const Icon(
                        Icons.add_alarm,
                        color: Colors
                            .white, // Set the icon color to white for better contrast
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: () {
                        showCustomSnackBar(context, 'Adding');
                      },
                      backgroundColor: Colors.blue,
                      // Set the background color to blue
                      child: const Icon(
                        Icons.add_box_rounded,
                        color: Colors
                            .white, // Set the icon color to white for better contrast
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: () {
                        showCustomSnackBar(context, 'Subtracting');
                      },
                      backgroundColor: Colors.blue,
                      // Set the background color to blue
                      child: const Icon(
                        Icons.minimize,
                        color: Colors
                            .white, // Set the icon color to white for better contrast
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(bio),
            )
          ],
        ),
      ),
    );
  }


  void showCustomSnackBar(BuildContext context, String message) {   // for showing msg like toast
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2), // You can adjust this duration
      ),
    );
  }

}

const bio =
    '''Cox's Bazar (/ˌkɒksɪz bəˈzɑː/; Bengali: কক্সবাজার, romanized: Kôksbajar; pronounced [kɔksbadʒaɾ]) is a city, fishing port, tourism centre, and district headquarters in southeastern Bangladesh. Cox's Bazar Beach, one of the most popular tourist attractions in Bangladesh, is the longest uninterrupted natural beach in the world.[1][2] Located 150 km (93 mi) south of the city of Chittagong, Cox's Bazar is also known by the name Panowa, which translates literally as "yellow flower." An old name was "Palongkee".[3][4]

The city covers an area of 23.4 km2 (9.0 sq mi) with 58 mahallas and 27 wards and as of 2022 had a population of nearly 200,000.[5] Cox's Bazar is connected by road and air with Chittagong.[6][7]

The modern Cox's Bazar derives its name from Captain Hiram Cox, an officer of the British East India Company, a Superintendent of Palongkee outpost. To commemorate his role in refugee rehabilitation work, a market was established and named after him. It is one of Bangladesh's main tourist spots. In 2023 Bangladesh evacuated over 50,000 people to safe shelters as Cyclone Mocha approached.[8] During the protest of 2024, around 10,000 tourists were stuck at Cox's Bazar.

History
During the early 9th century, the greater Chittagong area, including Cox's Bazar, was under the rule of Arakan kings until its conquest by the Mughals in 1666.[9] When the Mughal Prince Shah Shuja was passing through the hilly terrain of the present-day Cox's Bazar on his way to Arakan, he was attracted to its scenic and captivating beauty. He commanded his forces to camp there. His retinue of one thousand palanquins stopped there for some time. A place named Dulahazara, meaning "one thousand palanquins," still exists in the area. After the Mughals, the place came under the control of the Tipras and the Arakanese, followed by the Portuguese and then the British.

The name Cox's Bazar originated from British East India Company (EIC) official Hiram Cox, who was appointed as the Superintendent of Palonki (today's Cox's Bazar) outpost. He succeeded Warren Hastings, who became the Governor of Bengal following the passage of the Regulating Act 1773. Cox embarked upon the task of rehabilitation and settlement for the Arakanese refugees in the area.[10] He rehabilitated many refugees in the area, but died in 1799 before finishing his work. To commemorate him, a market was established and named after him, called Cox's Bazar. Cox's Bazar was first established in 1854 and became a municipality in 1869.[9]

After the Indian Rebellion of 1857, Company rule in India came to an end and was replaced by the British Crown. As a result, Cox's Bazar was declared a district of the Bengal Province under the British Crown.''';

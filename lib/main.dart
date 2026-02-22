import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const HomePage()
    );
  }
}





class HomePage extends StatelessWidget {
  const HomePage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat info card'), centerTitle: true, backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Padding(padding: EdgeInsets.all(16.0),
          child: Card(
            color: Color.fromARGB(250, 255, 153, 102),
            child: Padding(
            padding: EdgeInsets.all(16.0), child: ProfileBody(),



            ),
          ),
        ),
      ),
    );
  }
}

class ProfileBody extends StatelessWidget{
  const ProfileBody({super.key});


  static const List<String> info = [
    'white',
    'adult',
    'green eyes',
    'always hungry'
  ];

  Widget pixel() {
    return Container(
      width: 20,
      height: 20,
      color: Colors.black,
    );
  }

  Widget empty() {
    return Container(
      width: 20,
      height: 20,
      color: Colors.white,
    );
  }

  void _launchRickRoll() async {
    final Uri url = Uri.parse('https://www.youtube.com/watch?v=dQw4w9WgXcQ');
    try {
      // Force external app (browser)
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } catch (e) {
      debugPrint('Could not launch $url: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(mainAxisSize: MainAxisSize.min, 
        children: [const CircleAvatar(radius: 77, foregroundImage: AssetImage('assets/images/cat.png'),),
              
            const SizedBox(height: 16),
                Text('Bonya',  style: theme.textTheme.headlineSmall?.copyWith(
    fontWeight: FontWeight.w600)),
            const SizedBox(height: 16),
                Text('Lives in Kharkiv', style: theme.textTheme.bodyMedium?.copyWith(
    fontWeight: FontWeight.w600,)),

          const Divider(thickness: 3, color: Colors.purple, height: 20,),

          TextButton.icon(onPressed: () {}, label: const Text('Favorite food - corn'),
          icon: const Icon(Icons.food_bank_outlined),),

          Wrap(spacing: 8, runSpacing: 8, alignment: WrapAlignment.center,
          children: [for (final label in info) Chip(label: Text(label), backgroundColor: Colors.orangeAccent,),
          ],),

          const SizedBox(height: 30),


    GestureDetector(
    onTap: _launchRickRoll,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(), empty(),empty(),empty(), empty(), pixel(), empty(), empty(),empty(), empty(), empty(), pixel(), empty(),empty(),empty(),empty(),empty(),
                  ],
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(),empty(),empty(),empty(), pixel(), empty(), pixel(), empty(), empty(), empty(),pixel(), empty(), pixel(),empty(),empty(),empty(),empty(),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(),empty(),empty(),empty(), pixel(), empty(), pixel(), pixel(), pixel(), pixel(),pixel(), empty(), pixel(),empty(),empty(),empty(),empty(),
                  ],
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(),empty(),empty(),empty(),   pixel(), empty(), empty(), empty(),empty(), empty(), empty(), empty(), pixel(),empty(),empty(),empty(),empty(),
                  ],
                ),


                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(),empty(),empty(),empty(), empty(), pixel(), empty(), pixel(),empty(), pixel(), empty(), pixel(), empty(),empty(),empty(),empty(),empty(),
                  ],
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(),empty(),empty(),empty(),  empty(), pixel(), empty(), empty(),pixel(), empty(), empty(), pixel(), empty(),empty(),empty(),empty(),empty(),
                  ],
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(),empty(),empty(),empty(), empty(), pixel(), empty(), pixel(),pixel(), pixel(), empty(), pixel(), empty(),empty(),empty(),empty(),empty(),
                  ],
                ),Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(), empty(), empty(),empty(),  empty(), pixel(), empty(), empty(),empty(), empty(), empty(), pixel(), empty(),empty(),empty(), pixel(),empty(),
                  ],
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(),empty(),  empty(),  empty(), empty(), empty(), pixel(), empty(), empty(),empty(), pixel(), empty(), empty(),empty(),pixel(),empty(),empty(),
                  ],
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(),empty(), empty(), empty(), empty(), empty(), pixel(), pixel(), empty(), pixel(), pixel(), empty(), empty(), empty(),pixel(),empty(),empty(),
                  ],
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(),empty(),  empty(), empty(), empty(), pixel(), empty(), pixel(), pixel(), empty(), pixel(), empty(), empty(), pixel(),empty(),empty(),
                  ],
                ),Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(),  empty(),empty(),  empty(), empty(), pixel(), empty(), pixel(), pixel(), empty(), pixel(), empty(), pixel(),empty(),empty(),empty(),
                  ],
                ),Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(),  empty(),empty(), empty(),empty(), pixel(), empty(), pixel(), pixel(), empty(), pixel(),pixel(), pixel(),empty(),empty(),empty(),
                  ],
                ),Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    empty(),empty(),empty(),empty(), empty(), pixel(), empty(), pixel(), empty(), pixel(), pixel(),empty(),empty(),empty(),empty(),
                  ],
                ),
              ],
            ),
          ),
    ),






    ]);
  }
}



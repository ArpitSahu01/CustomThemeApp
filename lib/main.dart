import 'package:flutter/material.dart';

void main(){
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(brightness: Brightness.light,primarySwatch: MaterialColor(
        0xFFFF0000,{
          50: Color(0xFFFFE5E5),
          100: Color(0xFFFFCCCC),
          200: Color(0xFFFFB3B3),
          300: Color(0xFFFF6666),
          400: Color(0xFFFF4D4D),
          500: Color(0xFFFF0000),
          600: Color(0xFFE60000),
          700: Color(0xFFCC0000),
          800: Color(0xFFB30000),
          900: Color(0xFFB30000),
      }
      )),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(".appable/"),leading: const Icon(Icons.ondemand_video_rounded),),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add_shopping_cart_outlined),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
             Text("Heading",style: Theme.of(context).textTheme.headline2,),
             Text("Sub-Heading",style: Theme.of(context).textTheme.subtitle1,),
             Text("Paragraph",style: Theme.of(context).textTheme.bodyMedium,),
            ElevatedButton(onPressed: (){}, child: const Text("Elevated Button",)),
            OutlinedButton(onPressed: (){}, child: const Text("Outlined Button")),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(image: AssetImage("assets/images/books.png",),),
            )
          ],
        ),
      ),
    );
  }
}


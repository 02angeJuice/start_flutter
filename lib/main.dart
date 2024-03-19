import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("HomePage"),
            backgroundColor: Colors.amber.shade200,
          ),
          body: NestedScrollViewExample()

          // SafeArea(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       ContentWidget("23223"),
          //       ContentWidget("3232"),
          //       ContentWidget("232"),
          //       ContentWidget("232"),
          //       ContentWidget("232"),
          //       ContentWidget("232"),
          //       ContentWidget("232"),
          //       ContentWidget("232"),
          //     ],
          //   ),
          // ),
          ),
    );
  }
}

class NestedScrollViewExample extends StatelessWidget {
  const NestedScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            // Setting floatHeaderSlivers to true is required in order to float
            // the outer slivers over the inner scrollable.
            floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  title: const Text('Floating Nested SliverAppBar'),
                  floating: true,
                  expandedHeight: 200.0,
                  forceElevated: innerBoxIsScrolled,
                ),
              ];
            },
            body: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 50,
                    child: Center(child: Text('Item $index')),
                  );

                  // return ContentWidget('Item $index');
                })));
  }
}

class ContentWidget extends StatelessWidget {
  final String text;

  const ContentWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: LabelWidget(text));
  }
}

class LabelWidget extends StatelessWidget {
  final String text;

  const LabelWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //     title: const Center(
        //       child: Text("Start Flutter"),
        //     ),
        //     backgroundColor: Colors.deepOrange.shade300),
        // body: const Center(
        //   // child: Text("Hello yah?"),
        //   child: Image(
        //     image: AssetImage('images/cat_default.jpg'),
        //     // image: NetworkImage(
        //     //     'https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Orange_tabby_cat_sitting_on_fallen_leaves-Hisashi-01A.jpg/800px-Orange_tabby_cat_sitting_on_fallen_leaves-Hisashi-01A.jpg'),
        //   ),
        // ),

        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // verticalDirection: VerticalDirection.up,
            children: [
              // Container(
              //   width: double.infinity,
              //   height: 100,
              //   color: Colors.red.shade200,
              // ),
              Container(
                color: Colors.purpleAccent.shade100,
                width: 100,
                height: 100,
                alignment: Alignment.center,
                // margin: const EdgeInsets.all(100),
                padding: EdgeInsets.all(7),
                child: Text("1"),
              ),
              Container(
                color: Colors.teal.shade100,
                width: 100,
                height: 100,
                alignment: Alignment.center,
                // margin: const EdgeInsets.all(100),
                padding: EdgeInsets.all(7),
                child: Text("2"),
              ),
              Container(
                color: Colors.greenAccent.shade100,
                width: 100,
                height: 100,
                alignment: Alignment.center,
                // margin: const EdgeInsets.all(100),
                padding: EdgeInsets.all(7),
                child: Text("3"),
              )
            ],
          ),
        ),

        // backgroundColor: Colors.amber.shade100,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(ExampleApp());

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.amber,
      ),
      home: HelloWorld(),
    );
  }
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.25),
          ),
          height: 300,
          width: 450,
          child: PageViewer(),
        ),
      ),
    );
  }
}

class PageViewer extends StatefulWidget {
  const PageViewer({Key? key}) : super(key: key);

  @override
  _PageViewerState createState() => _PageViewerState();
}

class _PageViewerState extends State<PageViewer> {
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    // A view port fraction can be used to control the fraction each
    // page occupies in the scrolling direction.

    // The value ranges from `0.0` - `1.0`.

    // Example: A view port fraction of `0.75` means the child will
    // occupy 75% of the available space leaving part of the adjecent
    // pages visible to the user.
    _pageController = PageController(viewportFraction: 1.0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        _ViewItem(color: Colors.red, text: "Page One"),
        _ViewItem(color: Colors.blue, text: "Page Two"),
        _ViewItem(color: Colors.purple, text: "Page Three"),
      ],
    );
  }
}

class _ViewItem extends StatelessWidget {
  const _ViewItem({
    Key? key,
    @required this.color,
    @required this.text,
  }) : super(key: key);
  final Color? color;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(38.5),
      ),
      margin: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
      child: Center(
        child: Text(
          text.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

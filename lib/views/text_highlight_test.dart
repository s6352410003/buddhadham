import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';

class TextHighlightTest extends StatefulWidget {
  const TextHighlightTest({super.key});

  @override
  State<TextHighlightTest> createState() => _TextHighlightTestState();
}

class _TextHighlightTestState extends State<TextHighlightTest> {
  Map<String, HighlightedWord> words = {
    "Flutter": HighlightedWord(
      onTap: () {
        print("Flutter");
      },
      textStyle: TextStyle(),
    ),
    "open-source": HighlightedWord(
      onTap: () {
        print("open-source");
      },
      textStyle: TextStyle(),
    ),
    "ทาง": HighlightedWord(
      onTap: () {},
      textStyle: TextStyle(color: Colors.amber),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(8.0),
    ),
    "ภาค": HighlightedWord(
      onTap: () {},
      textStyle: TextStyle(color: Colors.amber),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(8.0),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Text Highligh",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextHighlight(
              text:
                  "          ภาค ๓\n          อารยธรรมวิถี\n\n          ทางดำเนินเพื่อเข้าถึงธรรมของอริยชน\n          หรือ\n          ภาคภาค ภาควิภาค ถี ภาคชีวิตของคนมีอารยธรรม", // You need to pass the string you want the highlights
              words: words, // Your dictionary words
              textStyle: TextStyle(
                // You can set the general style, like a Text()
                fontSize: 20.0,
                color: Colors.black,
              ),
              textAlign: TextAlign
                  .justify, // You can use any attribute of the RichText widget
            ),
          ],
        ),
      ),
    );
  }
}

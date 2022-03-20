import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchBar({
    Key? key,
    required this.text,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final styleActive = TextStyle(color: Colors.deepOrange[800]);
    const styleHint = TextStyle(
      color: Color(0xFF6C6C6C),
      // fontSize: 14,
      fontFamily: "Nunito",
      fontWeight: FontWeight.w700,
    );
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return Container(
      height: 40,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        style: style,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          suffixIcon: widget.text.isNotEmpty
              ? GestureDetector(
                  child: Icon(Icons.close, color: style.color),
                  onTap: () {
                    controller.clear();
                    widget.onChanged('');
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                )
              : null,
          hintText: widget.hintText,
          hintStyle: style,
          border: InputBorder.none,
          icon: Icon(Icons.search, color: style.color),
        ),
      ),
    );
  }
}
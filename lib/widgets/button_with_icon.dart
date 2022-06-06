import 'package:flutter/material.dart';

class ButtonWithIcon extends StatefulWidget {
  const ButtonWithIcon({Key? key}) : super(key: key);

  @override
  State<ButtonWithIcon> createState() => _ButtonWithIconState();
}

class _ButtonWithIconState extends State<ButtonWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      // color: Color.fromARGB(255, 244, 247, 252),
      color: Colors.red,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: ,
            topRight: ,
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () {},
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.menu,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  "Search your notes",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

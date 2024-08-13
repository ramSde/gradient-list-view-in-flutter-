import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ 
        Text("Edit",style: TextStyle(color: Color(0xffff7d04)
        ,fontSize: 15,fontWeight: FontWeight.w600),
        ),
        Text("City ManageMent",style: TextStyle(color: Colors.grey[650]
        ,fontSize: 18,fontWeight: FontWeight.w600),
        ),
        Text("Done",style: TextStyle(color: Color.fromARGB(255, 88, 161, 3)
        ,fontSize: 15,fontWeight: FontWeight.w600),
        )
      ],
      
    );
  }
}
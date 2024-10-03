import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/home_screen/home_screen.dart';
import 'package:tash5esy_app/views/medical_record/medical_history_screen.dart';


class add_record extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios), 
          color: AppColors.secondary,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        ),
        title: Text('Add Record',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.secondary,
        ),
        ),
        centerTitle: true,
        elevation:0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150, 
              width: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/add medical history.png'), 
                  fit: BoxFit.contain,
                  
                ),
              ),
            ),
            SizedBox(height: 50), 
        
            SizedBox(width: 50,),
            Text(
              'You Have Not\nAdded Any Medical Records Yet',
              textAlign: TextAlign.center,
              style: TextStyle(
                
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              
              ),
            ),
            const Spacer(), 
            
           ElevatedButton(
    onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MedicalHistoryScreen()),
          );
        },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary, 
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), 
        ),
      ),
      child: const Text(
        'Add Records',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
     ),
),
            const SizedBox(height: 0 , width: 10,),
          ],
        ),
      ),
    );
  }
}
































// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: const Text('Add Record' , style: TextStyle(fontWeight: FontWeight.bold,)),
//       centerTitle: true,
//       foregroundColor: AppColors.secondary,
//       elevation: 0, 
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// }

// class AddRecordBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 1),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           AddRecordimage(),
//           SizedBox(height: 10),
//           AddRecordMessage(),
//           SizedBox(height: 50),
//           AddRecordButton(),
//         ],
//       ),
//     );
//   }
// }

// class AddRecordimage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       ('assets/images/add medical history.png') ,
//       color: AppColors.primary,
//       width: 100,
//       height: 350,
//     );
//   }
// }

// class AddRecordMessage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       'You Have Not Added Any Medical Records Yet',
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         fontSize: 18,
//         color: AppColors.primary,
//         fontWeight: FontWeight.bold,
//       ),
//     );
//   }
// }

// class AddRecordButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         // Add your onPressed action here
//       },
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.blue, // Button color
//         padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10), // Rounded corners
//         ),
//       ),
//       child: Text(
//         'Add Records',
//         style: TextStyle(
//           fontSize: 16,
//           fontWeight: FontWeight.bold,
//         ),
//      ),
// );
// }
// }





























// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;

//   CustomAppBar({required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             padding: EdgeInsets.all(4),
//             child: IconButton(
//               icon: Icon(Icons.arrow_back_ios),
//               color: AppColors.secondary,
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (builder) => HomeScreen(),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ),
//         title: Text(
//           'Add Records',
//           style: TextStyle(
//             color: AppColors.secondary,
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//         iconTheme: IconThemeData(
//           color: Colors.white,
//         ),
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);

//   widget({required Center child}) {}
// }
//  class body extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: [
//          Image.asset(
//            'assets/images/add medical history.png',
//            width: 117,
//            height: 152,
//            color:  AppColors.primary,
//          ),
//          const SizedBox(height: 20),
//          Text(
//            'You Have Not\nAdded Any Medical\nRecords Yet',
//            textAlign: TextAlign.center,
//            style: TextStyle(
//              color:  AppColors.primary,
//              fontSize: 25,
//              fontWeight: FontWeight.bold,
//            ),
//          ),
//        ],
//      ),

//     );

//   }
  
//  }
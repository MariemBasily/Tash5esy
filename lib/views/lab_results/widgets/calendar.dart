import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class CalendarWidget extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onPreviousDay;
  final VoidCallback onNextDay;
  final VoidCallback onSelectDate;

  CalendarWidget({
    required this.selectedDate,
    required this.onPreviousDay,
    required this.onNextDay,
    required this.onSelectDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10), // margin around the whole widget
      padding: EdgeInsets.all(8.0), // padding within the border
      decoration: BoxDecoration(
        color: AppColors.blue, // Background of the whole calendar
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          _buildCalendarHeader(),
          SizedBox(height: 8),
          _buildNavigationRow(),
        ],
      ),
    );
  }

  /// Builds the header with the month name and calendar icon.
  Widget _buildCalendarHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          DateFormat('MMMM').format(selectedDate),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.secondary,
            fontFamily: "SourceSans3",
          ),
        ),
        IconButton(
          icon: Icon(Icons.calendar_today, color: AppColors.secondary),
          onPressed: onSelectDate,
        ),
      ],
    );
  }

  /// Builds the row containing the navigation arrows and days of the week.
  Widget _buildNavigationRow() {
    List<DateTime> weekDays = _generateWeekDays();

    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.secondary),
          constraints: BoxConstraints(), 
          onPressed: onPreviousDay,
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: weekDays.map((date) {
                return Row(
                  children: [
                    DayWidget(
                      date: date,
                      isSelected: date.day == selectedDate.day,
                      onTap: () {
                        // Custom logic to change the date can be added here
                      },
                    ),
                    SizedBox(width: 8), // space between days
                  ],
                );
              }).toList(),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios, color: AppColors.secondary), 
          constraints: BoxConstraints(), // extra space constraints
          onPressed: onNextDay,
        ),
      ],
    );
  }

  /// Generates a list of the 5 days to display (2 days before and 2 after the selected date).
  List<DateTime> _generateWeekDays() {
    return List.generate(5, (index) {
      return selectedDate.subtract(Duration(days: 2 - index));
    });
  }
}

/// A widget that displays a single day with its name and number.
class DayWidget extends StatelessWidget {
  final DateTime date;
  final bool isSelected;
  final VoidCallback onTap;

  DayWidget({
    required this.date,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70, 
        height: 100, 
        decoration: BoxDecoration(
          color: isSelected ? AppColors.secondary : AppColors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat('EEE').format(date), // Day of the week
              style: TextStyle(
                color: isSelected ? AppColors.white : AppColors.grey,
                fontSize: 30, 
                fontFamily: "SourceSans3", 
              ),
            ),
            Text(
              DateFormat('d').format(date), // Day of the month
              style: TextStyle(
                color: isSelected ? AppColors.white : AppColors.grey,
                fontSize: 30, 
                fontWeight: FontWeight.bold,
                fontFamily: "SourceSans3",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

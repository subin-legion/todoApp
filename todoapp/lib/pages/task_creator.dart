import 'package:flutter/material.dart';
import 'package:todoapp/pages/task_editor.dart';
import 'package:todoapp/widgets/app_Theams.dart'; // <-- Import the theme config

class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({super.key});
  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  int selectedDayIndex = 3; // Thursday selected by default
  int selectedPriority = 0; // 0=high, 1=medium, 2=low
  bool getAlert = true;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final weekDays = [
      {'label': 'Mon', 'date': '04'},
      {'label': 'Tue', 'date': '05'},
      {'label': 'Wed', 'date': '07'},
      {'label': 'Thu', 'date': '08'},
      {'label': 'Fri', 'date': '09'},
      {'label': 'Sat', 'date': '10'},
      {'label': 'Sun', 'date': '11'},
    ];
    final priorities = ['High', 'Medium', 'Low'];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 32),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          "Create new task",
          style: AppThemes.titleStyle, // <-- Use centralized style
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          children: [
            const SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.chevron_left,
                  color: AppThemes.primary,
                  size: 28,
                ), // <-- Use theme color
                Text(
                  "04 Mar - 11 Mar",
                  style: TextStyle(
                    color: AppThemes.primary, // <-- Use theme color
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: AppThemes.primary,
                  size: 28,
                ), // <-- Use theme color
              ],
            ),
            const SizedBox(height: 18),
            SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(weekDays.length, (index) {
                  final isSelected = index == selectedDayIndex;
                  return GestureDetector(
                    onTap: () => setState(() {
                      selectedDayIndex = index;
                    }),
                    child: Container(
                      width: 46,
                      decoration: isSelected
                          ? BoxDecoration(
                              border: Border.all(
                                color: AppThemes.primary, // <-- Use theme color
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            )
                          : null,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            weekDays[index]['label']!,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.white70,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            weekDays[index]['date']!,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 25),
            Text(
              "Schedule",
              style: AppThemes.titleStyle,
            ), // <-- Use theme style
            const SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: AppThemes.cardBg, // <-- Use theme color
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.white38),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
                ),
                style: AppThemes.bodyStyle, // <-- Use theme style
              ),
            ),
            const SizedBox(height: 14),
            Container(
              decoration: BoxDecoration(
                color: AppThemes.cardBg, // <-- Use theme color
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                controller: descController,
                minLines: 3,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Description",
                  hintStyle: TextStyle(color: Colors.white38),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
                ),
                style: AppThemes.bodyStyle, // <-- Use theme style
              ),
            ),
            const SizedBox(height: 22),
            Row(
              children: [
                Text(
                  "Start Time",
                  style: AppThemes.bodyStyle, // <-- Use theme style
                ),
                const SizedBox(width: 57),
                Text(
                  "End Time",
                  style: AppThemes.bodyStyle,
                ), // <-- Use theme style
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppThemes.cardBg, // <-- Use theme color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        const Icon(Icons.access_time, color: Colors.white54),
                        const SizedBox(width: 8),
                        Text(
                          "06 : 00 PM",
                          style: AppThemes.bodyStyle, // <-- Use theme style
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 18),
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppThemes.cardBg, // <-- Use theme color
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        const Icon(Icons.access_time, color: Colors.white54),
                        const SizedBox(width: 8),
                        Text(
                          "09 : 00 PM",
                          style: AppThemes.bodyStyle, // <-- Use theme style
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            Text("Priority", style: AppThemes.bodyStyle), // <-- Use theme style
            const SizedBox(height: 12),
            Row(
              children: List.generate(priorities.length, (idx) {
                final selected = idx == selectedPriority;
                return GestureDetector(
                  onTap: () => setState(() {
                    selectedPriority = idx;
                  }),
                  child: Container(
                    margin: EdgeInsets.only(right: 12),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                    decoration: BoxDecoration(
                      color: selected
                          ? Colors.transparent
                          : AppThemes.cardBg, // <-- Use theme color
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: selected ? Colors.white : Colors.white54,
                        width: selected ? 2 : 1,
                      ),
                    ),
                    child: Text(
                      priorities[idx],
                      style: TextStyle(
                        color: selected ? Colors.white : Colors.white54,
                        fontWeight: selected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Get alert for this task",
                    style: AppThemes.bodyStyle, // <-- Use theme style
                  ),
                ),
                Switch(
                  value: getAlert,
                  onChanged: (val) => setState(() {
                    getAlert = val;
                  }),
                  activeTrackColor: Color(0xFFC59ADF),
                  activeColor: Color(0xFFDE83B0),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 52,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFDE83B0), Color(0xFFC59ADF)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(14),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditTaskScreen(),
                    ),
                  );
                },
                child: Text(
                  "Create Task",
                  style: AppThemes.titleStyle.copyWith(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ), // <-- Use theme style
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AdditionalHealth extends StatefulWidget {
  const AdditionalHealth({Key? key}) : super(key: key);

  @override
  State<AdditionalHealth> createState() => _AdditionalHealthState();
}

class _AdditionalHealthState extends State<AdditionalHealth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Additional Health Information',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              InformationSection(
                title: 'You can update your Additional Health \n Information details here',
                color: Color(0xff6b678b),
              ),
              FormSection(
                title: 'Chronic illnesses',
                dropdownItems: ['Engineer', 'Doctor', 'Teacher', 'Other'],
                hintText: 'Specify your illnesses',
              ),
              FormSection(
                title: 'Are you on any medications ?',
                dropdownItems: ['Engineer', 'Doctor', 'Teacher', 'Other'],
                hintText: 'Type response here',
              ),
              FormSection(
                title: 'Tobacco use',
                dropdownItems: ['Engineer', 'Doctor', 'Teacher', 'Other'],
              ),
              FormSection(
                title: 'Alcohol consumption',
                dropdownItems: ['Engineer', 'Doctor', 'Teacher', 'Other'],
              ),
              FormSectionWithTextField(
                title: 'Any allergies ?',
                dropdownItems: ['Engineer', 'Doctor', 'Teacher', 'Other'],
                hintText: 'Specify your allergy',
              ),
              FormSection(
                title: 'Any past surgeries or physical injuries ?',
                dropdownItems: ['Engineer', 'Doctor', 'Teacher', 'Other'],
                hintText: 'Type response here',
              ),
              FormSection(
                title: 'Any dietary restrictions ?',
                dropdownItems: ['Engineer', 'Doctor', 'Teacher', 'Other'],
              ),
              FormSection(
                title: 'Pregnancy or Postpartum:?',
                dropdownItems: ['Engineer', 'Doctor', 'Teacher', 'Other'],
              ),
              FormSectionWithTextField(
                title: 'Menopause ?',
                dropdownItems: ['Engineer', 'Doctor', 'Teacher', 'Other'],
                hintText: 'Type response here',
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Save Health Information',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF6154D5),
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 65,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
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

class InformationSection extends StatelessWidget {
  final String title;
  final Color color;

  const InformationSection({
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: color,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 24),
      ],
    );
  }
}

class FormSection extends StatelessWidget {
  final String title;
  final List<String> dropdownItems;
  final String hintText;

  const FormSection({
    required this.title,
    required this.dropdownItems,
    this.hintText = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(height: 15),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Choose from list',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          items: dropdownItems.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            // Handle dropdown change
          },
        ),
        if (hintText.isNotEmpty)
          SizedBox(height: 20),
        if (hintText.isNotEmpty)
          TextFormField(
            minLines: 6,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: hintText,
            ),
          ),
        SizedBox(height: 24),
      ],
    );
  }
}

class FormSectionWithTextField extends StatelessWidget {
  final String title;
  final List<String> dropdownItems;
  final String hintText;

  const FormSectionWithTextField({
    required this.title,
    required this.dropdownItems,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(height: 15),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Choose from list',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          items: dropdownItems.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            // Handle dropdown change
          },
        ),
        SizedBox(height: 15),
        TextFormField(
          minLines: 6,
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: hintText,
          ),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}

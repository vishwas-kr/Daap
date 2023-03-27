import 'package:flutter/material.dart';

class SurplusFoodScreen extends StatefulWidget {
  @override
  _SurplusFoodScreenState createState() => _SurplusFoodScreenState();
}

class _SurplusFoodScreenState extends State<SurplusFoodScreen> {
  bool isSurplusFood = false;
  String fullName = '';
  String mobileNumber = '';
  String emailAddress = '';
  String selectedCity = '';
  String foodPickupAddress = '';
  String mealQuality = '';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Surplus Food'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Is this Surplus Food?'),
              Row(
                children: [
                  Radio(
                    value: true,
                    groupValue: isSurplusFood,
                    onChanged: (value) {
                      setState(() {
                        isSurplusFood = value;
                      });
                    },
                  ),
                  Text('Yes'),
                  Radio(
                    value: false,
                    groupValue: isSurplusFood,
                    onChanged: (value) {
                      setState(() {
                        isSurplusFood = value;
                      });
                    },
                  ),
                  Text('No'),
                ],
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                  hintText: 'Enter your full name',
                ),
                onChanged: (value) {
                  setState(() {
                    fullName = value;
                  });
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile Number',
                  hintText: 'Enter your mobile number',
                ),
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  setState(() {
                    mobileNumber = value;
                  });
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your mobile number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                  hintText: 'Enter your email address',
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    emailAddress = value;
                  });
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Select City',
                  hintText: 'Select your city',
                ),
                onChanged: (value) {
                  setState(() {
                    selectedCity = value;
                  });
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please select your city';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Food Pickup Address',
                  hintText: 'Enter your food pickup address',
                ),
                maxLines: 3,
                onChanged: (value) {
                  setState(() {
                     foodPickupAddress = value;
                  });
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your food pickup address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Meal Quality',
                  hintText: 'Enter the meal quality',
                ),
                onChanged: (value) {
                  setState(() {
                    mealQuality = value;
                  });
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter the meal quality';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // Submit form
                      // TODO: Implement form submission logic
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

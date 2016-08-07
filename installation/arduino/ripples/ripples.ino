/*
 * "Ripples" - [vor ort project]
 * Collaborative sound sculpture: Dillon Bastan, the2vvo
 * All scripts by Dillon Bastan, 2016
 * 
 * Servos in a matrix controlled by i2c drivers spin boxes
 * with object in them, causing a rattling sound. 
 * Boxes' spinning simulates earthquakes, via earthquake data.
 */



/*********Imports***********
***************************/
#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>
#include "Earthquake.h"
#include "Box.h"



/*********Globals***********
***************************/
#define DRIVERS_COUNT 4                 //Number of Adafruit i2c drivers

//Servo parameters
#define SERVO_COLS 7                    //Columns of servos
#define SERVO_ROWS 7                    //Rows of servos
#define SERVO_PULSE_MIN  170            //Lowest pulse position of servo (of 4096)
#define SERVO_PULSE_MAX  600            //Highest pulse position
#define SERVO_LO_POWER 3                //Lowest power (speed) for servo (amount incremented each update)
#define SERVO_HI_POWER 100              //Highest speed
#define SERVO_POWER_SLOPE 1.1           //Slope of decrease in power based on distance to center of earthquake
#define SERVO_UPDATE_INTERVAL 5         //Interval(ms) between moving servos

//Earthquake parameters
#define EARTHQUAKE_COUNT 5             //Number of earthquakes
#define EARTHQUAKE_ATTACK_TIME 5        //Time(sec) for all servos to spin after start of earthquake phase
#define EARTHQUAKE_DECAY_TIME 3         //Time(sec) for all servos to stop spinning at end of earthquake phase
#define EARTHQUAKE_DIAMETER 8.49        //Distance from top left servo to bottom right
#define EARTHQUAKE_LARGEST_MAG 6.7      //Largest magnitude earthquake

//Earthquake data
float earthquakeMagnitudes[] = {        //Magnitudes of earthquakes (affect spin speed)
  6.7, 5.51, 6.4, 5.8, 5.12
};
int earthquakeLengths[] = {             //Peak duration of earthquake(sec)
  3, 4, 3, 6, 2
};
int earthquakeEpicenters[][2] = {       //Location of center of earthquake on matrix grid
  {1,6}, {5,2}, {1,0}, {3,4}, {0,3}
};
int earthquakePinNumbers[] = {          //Pin numbers of photocells that activate connected eathquake
  54, 55, 56, 57, 58
};
int earthquakePinThresholds[] = {       //Thresholds(serial) photocells go under to activate connected earthquake
  2, 2, 2, 2, 2
};

//Object arrays
Earthquake earthquakes[EARTHQUAKE_COUNT];      //Earthquake array
Box boxes[SERVO_COLS][SERVO_ROWS];             //Box array (servo managment class)
Adafruit_PWMServoDriver servoDrivers[] = {     //Adafruit i2c driver array
  Adafruit_PWMServoDriver(0x41), 
  Adafruit_PWMServoDriver(0x44),
  Adafruit_PWMServoDriver(0x43),
  Adafruit_PWMServoDriver(0x47)
};



/*********Setup***********
***************************/
void setup() {
  
  Serial.begin(9600);
  
  //Setup Adafruit_PWMServoDrivers
  for (int i = 0; i < DRIVERS_COUNT; i++) {
    servoDrivers[i].begin();
    servoDrivers[i].setPWMFreq(60); // Servos run at ~60 Hz updates
  }
  yield();
  
  //Instantiate Earthquakes
  for (int i = 0; i < EARTHQUAKE_COUNT; i++) {
    earthquakes[i] = Earthquake(
      earthquakeMagnitudes[i], earthquakeLengths[i], 
      earthquakeEpicenters[i][0], earthquakeEpicenters[i][1],
      earthquakePinNumbers[i], earthquakePinThresholds[i]
    );
  }
  
  //Instantiate Boxes
  int servoIndex = 0;
  for (int col = 0; col < SERVO_COLS; col++) {
    for (int row = 0; row < SERVO_ROWS; row++) 
    {
      boxes[col][row] = Box(
        servoIndex,
        servoDrivers[Box::getDriverIndex(servoIndex)], 
        Box::getPinIndex(servoIndex), SERVO_PULSE_MIN
      );
      servoIndex++;
    }
  }
}



/*********Main***********
***************************/
void loop() 
{
  //Determine if any earthquakes are active, activate any newly found ones
  if (Earthquake::detectEarthquakes(earthquakes, EARTHQUAKE_COUNT, EARTHQUAKE_ATTACK_TIME, EARTHQUAKE_DECAY_TIME)) {
    for (int col = 0; col < SERVO_COLS; col++) {
      for (int row = 0; row < SERVO_ROWS; row++) 
      {
        //Calculate the speed of spinning for each servo based of active earthquakes
        boxes[col][row].calculateSpinPower(earthquakes, EARTHQUAKE_COUNT, EARTHQUAKE_DIAMETER, EARTHQUAKE_ATTACK_TIME, EARTHQUAKE_DECAY_TIME, EARTHQUAKE_LARGEST_MAG, col, row);

        //Spin the servos one increment
        boxes[col][row].moveBox(SERVO_UPDATE_INTERVAL, SERVO_PULSE_MIN, SERVO_PULSE_MAX, SERVO_LO_POWER, SERVO_HI_POWER, SERVO_POWER_SLOPE);
      }
    }
  } else 
  {
    //If no earthquakes present, reset all servos
    Box::turnOffBoxes(boxes, SERVO_COLS, SERVO_ROWS, SERVO_PULSE_MIN);
  }
}

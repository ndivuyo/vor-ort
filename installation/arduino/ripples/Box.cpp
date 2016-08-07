/*
 * Class for controlling servos under the small boxes with Adafruit i2c drivers
 * Description of methods in header file
 */


#include "Box.h"


//Default Constructor
Box::Box(){}

//Parameter Constructor
Box::Box(int index, Adafruit_PWMServoDriver driver, int pinIndex, int startPos)
{
  this->index = index;
  this->driver = driver;
  this->pinIndex = pinIndex;
  this->spinPower = -1;
  this->lastUpdate = 0;
  this->pos = startPos;
  this->increment = 1;
  driver.setPWM(pinIndex, 0, pos);
}


//moveBox
void Box::moveBox(int updateInterval, int loPulse, int hiPulse, int loPower, int hiPower, float powerSlope)
{
  if (spinPower != -1)              //-1 is the off value (servo won't spin)
  {                                              
    float power = map(pow(spinPower, powerSlope)*1000, 0, 1000, loPower, hiPower);  //Amount of pulse servo increments (speed)
    if (millis() - lastUpdate > updateInterval)                                     //Update servo pulse if interval is passed
    {
      pos = constrain(pos + increment * power, loPulse, hiPulse);     //New pulse position
      driver.setPWM(pinIndex, 0, pos);                                //Set new position of servo
      if (pos >= hiPulse || pos <= loPulse) {                         //Change directions at pulse length ranges
        increment = -increment;
      }
      lastUpdate = millis();                  //remember millis() for determining next interval threshold
      /*//MONITOR INDIVIDUAL SERVOS
      if (index == 0) {
        Serial.print(spinPower);
        Serial.print("\t");
        Serial.print(power);
        Serial.print("\t");
        Serial.print(pos);
        Serial.print("\n");
      }
     */
    }
  }
}


//calculateSpinPower
void Box::calculateSpinPower(Earthquake *earthquakes, int quakesNum, float diameter, int attack, int decay, float largestMag, int col, int row) 
{
  this->spinPower = 0;                                //Reset power for accumulation of powers (if multiple earthquakes)
  for (int i = 0; i < quakesNum; i++) {
    if (earthquakes[i].getActive())                   //Determine if earthquake is occuring
    {
      int quakeTime = (millis() - earthquakes[i].getPhaseStart());                    //Time(ms) since earthquake began
      float dist = constrain(earthquakes[i].getDistance(col, row) / diameter, 0, 1);  //Distance(0..1) of servo from center of earthquake
      float power = earthquakes[i].getMagnitude() / largestMag * (1 - dist);          //Power of servo based on distance and magnitude (essentially speed)
      power = constrain(this->spinPower + power, 0, 1);                               //Accumulate power if more than one earthquake

      if (quakeTime - attack*1000 < earthquakes[i].getDuration()*1000)                //If during attack (onset) of earthquake up to start of decay (end of duration)
      {
        float quakePhase = (float)quakeTime / (float)(attack*1000);                   //Phase of attack (>=1 is during peak)
        if (quakePhase >= dist) {                                                     //Once phase is >= distance from center, move the servo
          this->spinPower = power;
        }
      } else                                                                          //During decay of earthquake
      {                      
        quakeTime = (quakeTime - attack*1000 - earthquakes[i].getDuration()*1000);    //Calibrate current time
        float quakePhase = (float)quakeTime / (float)(decay * 1000);                  //Phase of decay (0..1)
        if (quakePhase < dist) {                                                      //Once phase is < distance from center, move the servo
          this->spinPower = power;
        }
      }
    }
  }
  if (this->spinPower == 0)                      //If no power, set to -1, which prevents servo from moving
    this->spinPower = -1;
}


//resetBox
void Box::resetBox(int resetPos) {              //-1 stops servo, and set servo pulse to lowest position
  if (spinPower != -1)
    spinPower = -1;
  if (pos != resetPos) {
    pos = resetPos;
    driver.setPWM(pinIndex, 0, pos);
  }
}


//getDriverIndex
int Box::getDriverIndex(int index) {            //Specific to 7x7 grid setup of 4 i2c driver and 49 servos
  return index < 36 ? floor(index / 12) : 3;
}


//getPinIndex
int Box::getPinIndex(int index) {               //Specific to 7x7 grid setup of 4 i2c driver and 49 servos
  return index < 36 ? index % 12 : index - 36;
}


//turnOffBoxes
void Box::turnOffBoxes(Box boxes[][7], int colsNum, int rowsNum, int resetPos) {
  for (int col = 0; col < colsNum; col++) {
    for (int row = 0; row < rowsNum; row++) {
      boxes[col][row].resetBox(resetPos);
    }
  }
}


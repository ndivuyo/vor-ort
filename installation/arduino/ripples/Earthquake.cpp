/*
 * Class for earthquakes
 * Description of methods in header file
 */


#include "Earthquake.h"


//Default Constructor
Earthquake::Earthquake(){}

//Parameter Constructor
Earthquake::Earthquake(float magnitude, float duration, int xIndex, int yIndex, int pinNum, int pinThresh) {
  this->magnitude = magnitude;
  this->duration = duration;
  this->center[0] = xIndex;
  this->center[1] = yIndex;
  this->pinNum = pinNum;
  this->pinThresh = pinThresh;
  this->active = false;
}


//getIsActive
bool Earthquake::getActive() {
  return this->active;
}

//getMagnitude
float Earthquake::getMagnitude() {
  return this->magnitude;
}

//getDuration
int Earthquake::getDuration() {
  return this->duration;
}

//getCenter
int* Earthquake::getCenter() {
  return this->center;
}

//getPinNum
int Earthquake::getPinNum() {
  return this->pinNum;
}

//getPhaseStart
int Earthquake::getPhaseStart() {
  return this->phaseStart;
}


//setActive
void Earthquake::setActive(bool state) {
  this->active = state;
}

//setPhaseStart
void Earthquake::setPhaseStart(unsigned long startTime) {
  this->phaseStart = startTime;
}


//isActive
bool Earthquake::isActive() {
  int value = analogRead(this->pinNum);
  if (value < this->pinThresh && value > 0) {
    return true;
  }
  return false;
}


//detectEarthquakes
bool Earthquake::detectEarthquakes(Earthquake* earthquakes, int amount, int attack, int decay) 
{
  for (int i = 0; i < amount; i++) {
    if (!earthquakes[i].getActive()) {                  //Earthquake is not set as active
      if (earthquakes[i].isActive())                    //If it is active
      {
        earthquakes[i].setActive(true);
        earthquakes[i].setPhaseStart(millis());         //Start of the phase of Earthquake (ms)
        Serial.print(i);
        Serial.print("\t");
        Serial.print("Earthquake On");
        Serial.print("\tmag: ");
        Serial.print(earthquakes[i].getMagnitude());
        Serial.print("\n");
      }
    } else 
    {
      int phaseLength = earthquakes[i].getPhaseStart() + earthquakes[i].getDuration()*1000;   //The length of the entire 
      phaseLength += attack*1000 + decay*1000;                                                //earthquake (attack, peak and decay)
      if ((int)millis() - phaseLength > 0)             //If the Earthquake phase is over
      {            
        earthquakes[i].setActive(false);
        Serial.print(i);
        Serial.print("\t");
        Serial.print("Earthquake Off");
        Serial.print("\n");
      }
    }
  }
  
  for (int i = 0; i < amount; i++)                    //Return boolean if any earthquakes are active or not
  {
    if (earthquakes[i].getActive())
      return true;
  }
  return false;
}


//getDistance
float Earthquake::getDistance(int x, int y) {
  int distX = pow(this->center[0] - x, 2);
  int distY = pow(this->center[1] - y, 2);
  return sqrt(distX + distY);
}

/*
 * Class for earthquakes
 */

#ifndef Earthquake_H
#define Earthquake_H

#include <Arduino.h>

class Earthquake {
  private:
    bool active;          //Earthquake is active
    float magnitude;
    int duration;         //Length in seconds of peak of earthquake
    int center[2];        //Center of earthquake in servo grid
    int pinNum;           //Pin number for photocell that triggers earthquake
    int pinThresh;        //Low threshold value for pin to trigger earthquake
    int phaseStart;       //time (ms) earthquake phase began
    
  public:
  
    //Constructors
    Earthquake();
    Earthquake(float magnitude, float duration, int xIndex, int yIndex, int pinNum, int pinThresh);

    //Getters
    bool getActive();
    float getMagnitude();
    int getDuration();
    int* getCenter();
    int getPinNum();
    int getPhaseStart();

    //Setters
    void setActive(bool state);
    void setPhaseStart(unsigned long startTime);

    //Determines if earthquake is active based on photocell serial value
    bool isActive();

    //Detect if earthquakes start or end and activates/deactivates them
    static bool detectEarthquakes(Earthquake* earthquakes, int amount, int attack, int decay);

    //Get distance from center of earthquake
    float getDistance(int x, int y);
 };

 #endif

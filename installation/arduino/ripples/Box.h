/*
 * Class for controlling servos under the small boxes with Adafruit i2c drivers
 */

#ifndef Box_H
#define Box_H

#include <Adafruit_PWMServoDriver.h>
#include "Earthquake.h"

class Box {
  private:
    int index;                          //Index in order of all instantiated boxes on grid
    Adafruit_PWMServoDriver driver;     //Driver object servo connects to
    int pinIndex;                       //pin index servo connects to on driver
    int pos;                            //current rotation position (of 4096)
    int increment;                      //Direction pos increments (+ or -)
    float spinPower;                    //The amount the servo spins for each increment
    unsigned long lastUpdate;           //Last millis() time that the servo pos was changed
    
  
  public:
  
    //Constructors
    Box();
    Box(int index, Adafruit_PWMServoDriver driver, int pinIndex, int startPos);

    //Increases/decreases the servo position
    void moveBox(int updateInterval, int loPulse, int hiPulse, int loPower, int hiPower, float powerSlope);

    //Calculates the amount the servo will move for each change in position (essentially the speed)
    void calculateSpinPower(Earthquake *earthquakes, int quakesNum, float diameter, int attack, int decay, float largestMag, int col, int row);
    
    //Resets position and values of servo
    void resetBox(int resetPos);

    //Returns the driver index based on order index
    static int getDriverIndex(int index);
    
    //Returns the driver pin index based on order index
    static int getPinIndex(int index);

    //Reset all boxes in multi-array
    static void turnOffBoxes(Box boxes[][7], int rowsNum, int colsNum, int resetPos);
};

 #endif

//right
int rightWheelReverse=8;
int rightWheelDrive=11; 
int rightWheelSpeed=9;

//left
int leftWheelReverse=12; 
int leftWheelDrive=13;
int leftWheelSpeed=10;

//speed
int speed =250;

//counters
int counter = 0;
int mDelay = 100;

void setup()
{
	//right
	pinMode(rightWheelReverse,OUTPUT);
  	pinMode(rightWheelDrive,OUTPUT);
  	pinMode(rightWheelSpeed,OUTPUT);

	//left
  	pinMode(leftWheelReverse,OUTPUT);
  	pinMode(leftWheelDrive,OUTPUT);
  	pinMode(leftWheelSpeed,OUTPUT);
}
 
void drive()
{
	//speed
     	analogWrite(rightWheelSpeed,speed);
     	analogWrite(leftWheelSpeed,speed);
     
    	//left wheel 
	digitalWrite(leftWheelDrive,HIGH);
     	digitalWrite(leftWheelReverse,LOW);
     
	//right wheel	
     	digitalWrite(rightWheelDrive,HIGH);
	digitalWrite(rightWheelReverse,LOW);
}

void reverse()
{
	//speed
     	analogWrite(rightWheelSpeed,speed);//input a simulation value to set the speed
     	analogWrite(leftWheelSpeed,speed);
    
	//left wheel
     	digitalWrite(leftWheelDrive,LOW);
     	digitalWrite(leftWheelReverse,HIGH);

        //right wheel 
     	digitalWrite(rightWheelDrive,LOW);
     	digitalWrite(rightWheelReverse,HIGH);
}

void leftDrive()
{
	//speed
    	analogWrite(rightWheelSpeed,speed);
     	analogWrite(leftWheelSpeed,speed);

     	//left wheel
     	digitalWrite(leftWheelDrive,LOW);
     	digitalWrite(leftWheelReverse,LOW);

     	//right wheel
     	digitalWrite(rightWheelDrive,HIGH);
     	digitalWrite(rightWheelReverse,LOW);
}
void leftReverse()
{
	//speed
     	analogWrite(rightWheelSpeed,speed);
     	analogWrite(leftWheelSpeed,speed);

     	//left wheel
     	digitalWrite(leftWheelDrive,LOW);
     	digitalWrite(leftWheelReverse,LOW);

     	//right wheel
     	digitalWrite(rightWheelDrive,LOW);
     	digitalWrite(rightWheelReverse,HIGH);
}

void rightDrive()
{
	//speed
     	analogWrite(rightWheelSpeed,speed);
     	analogWrite(leftWheelSpeed,speed);

     	//left wheel
     	digitalWrite(leftWheelDrive,HIGH);
     	digitalWrite(leftWheelReverse,LOW);

     	//right wheel
     	digitalWrite(rightWheelDrive,LOW);
     	digitalWrite(rightWheelReverse,LOW);
}

void rightReverse()
{
	//speed
     	analogWrite(rightWheelSpeed,speed);
     	analogWrite(leftWheelSpeed,speed);

     	//left wheel
     	digitalWrite(leftWheelDrive,LOW);
     	digitalWrite(leftWheelReverse,HIGH);
     
	//right wheel
	digitalWrite(rightWheelDrive,LOW);
     	digitalWrite(rightWheelReverse,LOW);
}

void stop()
{
	//speed
     	analogWrite(rightWheelSpeed,0);
     	analogWrite(leftWheelSpeed,0);
    
	//left 
     	digitalWrite(leftWheelDrive,LOW);//turn DC Motor B move clockwise
     	digitalWrite(leftWheelReverse,LOW);
    
	//right	 
     	digitalWrite(rightWheelDrive,LOW);//turn DC Motor A move anticlockwise
	digitalWrite(rightWheelReverse,LOW);
}

void loop()
{
	if (counter < 120)
	{
 		stop(); 
   		delay(mDelay);
	}
	if (counter >= 120 && counter < 130)
	{
 		drive(); 
   		delay(mDelay);
	}
	else if (counter >= 130 && counter < 140)
	{
 		reverse(); 
   		delay(mDelay);
	}
	else if (counter >= 140 && counter < 143)
	{
		leftDrive();
		delay(mDelay);
	}
        else if (counter >= 143 && counter < 146)
        {
                leftReverse();
		delay(mDelay);
	}
        else if (counter >= 146 && counter < 149)
        {
                rightDrive();
		delay(mDelay);
	}
        else if (counter >= 149 && counter < 152)
        {
                rightReverse();
		delay(mDelay);
	}
        else if (counter > 151)
	{
		stop();
   		delay(mDelay);
		counter = 0;
	}
	counter++;
}

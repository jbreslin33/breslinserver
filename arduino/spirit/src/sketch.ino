//right
int rightWheelReverse=8;
int rightWheelDrive=11; 
int rightWheelSpeed=9;

//left
int leftWheelReverse=12; 
int leftWheelDrive=13;
int leftWheelSpeed=10;

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

void wheel(int left, int right,int delayTime)
{
	//speed
	if (left < 0)
	{
		int speed = left * -1; 
     		analogWrite(leftWheelSpeed,speed);
		digitalWrite(leftWheelDrive,LOW);
     		digitalWrite(leftWheelReverse,HIGH);
	}
	if (left == 0)
	{
		int speed = 0; 
     		analogWrite(leftWheelSpeed,speed);
		digitalWrite(leftWheelDrive,LOW);
     		digitalWrite(leftWheelReverse,LOW);
	}
	if (left > 0)
	{
		int speed = left; 
     		analogWrite(leftWheelSpeed,speed);
		digitalWrite(leftWheelDrive,HIGH);
     		digitalWrite(leftWheelReverse,LOW);
	}
	
	if (right < 0)
	{
		int speed = right * -1; 
     		analogWrite(rightWheelSpeed,speed);
		digitalWrite(rightWheelDrive,LOW);
     		digitalWrite(rightWheelReverse,HIGH);
	}
	if (right == 0)
	{
		int speed = 0; 
     		analogWrite(rightWheelSpeed,speed);
		digitalWrite(rightWheelDrive,LOW);
     		digitalWrite(rightWheelReverse,LOW);
	}
	if (right > 0)
	{
		int speed = right; 
     		analogWrite(rightWheelSpeed,speed);
		digitalWrite(rightWheelDrive,HIGH);
     		digitalWrite(rightWheelReverse,LOW);
	}
	
	delay(delayTime);
}

void drive(int delayTime, int speed)
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

	delay(delayTime);
}

void reverse(int delayTime, int speed)
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
	
	delay(delayTime);
}

void leftDrive(int delayTime, int speed)
{
	//speed
	speed = 125;
    	analogWrite(rightWheelSpeed,speed);
     	analogWrite(leftWheelSpeed,speed);

     	//left wheel
     	digitalWrite(leftWheelDrive,LOW);
     	digitalWrite(leftWheelReverse,LOW);

     	//right wheel
     	digitalWrite(rightWheelDrive,HIGH);
     	digitalWrite(rightWheelReverse,LOW);

	delay(delayTime);
}
void leftReverse(int delayTime, int speed)
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
	
	delay(delayTime);
}

void rightDrive(int delayTime, int speed)
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
	
	delay(delayTime);
}

void rightReverse(int delayTime, int speed)
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
	
	delay(delayTime);
}

void stop(int delayTime, int speed)
{
	//speed
     	analogWrite(rightWheelSpeed,speed);
     	analogWrite(leftWheelSpeed,speed);
    
	//left 
     	digitalWrite(leftWheelDrive,LOW);//turn DC Motor B move clockwise
     	digitalWrite(leftWheelReverse,LOW);
    
	//right	 
     	digitalWrite(rightWheelDrive,LOW);//turn DC Motor A move anticlockwise
	digitalWrite(rightWheelReverse,LOW);

	delay(delayTime);
}

void loop()
{
	if (counter < 120)
	{
 		stop(100,0); 
	}
	if (counter >= 120 && counter < 130)
	{
 		//drive(100,250); 
		wheel(250,250,100);
	}
	else if (counter >= 130 && counter < 140)
	{
 	       //reverse(100,250); 
		wheel(-250,-250,100);
	}
	else if (counter >= 140 && counter < 145)
	{
	       //leftDrive(100,125);
		wheel(0,125,100);
	}
        else if (counter >= 145 && counter < 150)
        {
               //leftReverse(100,125);
		wheel(0,-125,100);		
	}
        else if (counter >= 155 && counter < 160)
        {
               // rightDrive(100,125);
		wheel(125,0,100);		
	}
        else if (counter >= 165 && counter < 170)
        {
               //rightReverse(100,125);
		wheel(-125,0,100);	
	}
        else if (counter > 170)
	{
		stop(100,0);
	        wheel(0,0,100);	
		counter = 0;
	}
	counter++;
}

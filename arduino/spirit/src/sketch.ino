//right
int rightWheelReverse=8;
int rightWheelDrive=11; 
int rightWheelSpeedPin=9;
int rightWheelSpeed = 250; 

//left
int leftWheelReverse=12; 
int leftWheelDrive=13;
int leftWheelSpeedPin=10;
int leftWheelSpeed = 250; 

int speed =127;
int counter = 0;

void setup()
{
  pinMode(rightWheelReverse,OUTPUT);
  pinMode(rightWheelDrive,OUTPUT);
  pinMode(rightWheelSpeedPin,OUTPUT);
  pinMode(leftWheelReverse,OUTPUT);
  pinMode(leftWheelDrive,OUTPUT);
  pinMode(leftWheelSpeedPin,OUTPUT);
}
 
void forward()
{
     	analogWrite(rightWheelSpeedPin,rightWheelSpeed);//input a simulation value to set the speed
     	analogWrite(leftWheelSpeedPin,leftWheelSpeed);
     
    	//left wheel 
	digitalWrite(leftWheelDrive,HIGH);
     	digitalWrite(leftWheelReverse,LOW);
     
	//right wheel	
     	digitalWrite(rightWheelDrive,HIGH);
	digitalWrite(rightWheelReverse,LOW);
}

void backward()
{
     	analogWrite(rightWheelSpeedPin,rightWheelSpeed);//input a simulation value to set the speed
     	analogWrite(leftWheelSpeedPin,leftWheelSpeed);
    
	//right wheel 
     	digitalWrite(leftWheelDrive,LOW);
     	digitalWrite(leftWheelReverse,HIGH);
     
     	digitalWrite(rightWheelDrive,LOW);//turn DC Motor A move clockwise
     	digitalWrite(rightWheelReverse,HIGH);
}





void left()
{
     analogWrite(rightWheelSpeedPin,speed);//input a simulation value to set the speed
     analogWrite(leftWheelSpeedPin,speed);
     digitalWrite(leftWheelDrive,HIGH);//turn DC Motor B move clockwise
     digitalWrite(leftWheelReverse,LOW);
     digitalWrite(rightWheelDrive,HIGH);//turn DC Motor A move clockwise
     digitalWrite(rightWheelReverse,LOW);
}
void right()
{
     analogWrite(rightWheelSpeedPin,speed);//input a simulation value to set the speed
     analogWrite(leftWheelSpeedPin,speed);
     digitalWrite(leftWheelDrive,LOW);//turn DC Motor B move anticlockwise
     digitalWrite(leftWheelReverse,HIGH);
     digitalWrite(rightWheelDrive,LOW);//turn DC Motor A move clockwise
     digitalWrite(rightWheelReverse,HIGH);
}
/*
void stop()
{
     digitalWrite(rightWheelSpeedPin,LOW);// Unenble the pin, to stop the motor. this should be done to avid damaging the motor. 
     digitalWrite(leftWheelSpeedPin,LOW);
     delay(1000);
}
*/
void stop()
{
     	analogWrite(rightWheelSpeedPin,0);//input a simulation value to set the speed
     	analogWrite(leftWheelSpeedPin,0);
     
     	digitalWrite(leftWheelDrive,LOW);//turn DC Motor B move clockwise
     	digitalWrite(leftWheelReverse,LOW);
     
     	digitalWrite(rightWheelDrive,LOW);//turn DC Motor A move anticlockwise
	digitalWrite(rightWheelReverse,LOW);
	counter++;
}

void loop()
{
	if (counter < 10)
	{
 		forward(); 
   		delay(1000);
	}
	else if (counter >= 10 && counter < 20)
	{
 		backward(); 
   		delay(1000);
	}
	else if (counter >= 20 && counter < 30)
	{
		left();
		delay(1000);
	}
	else if (counter > 90) 
	{
		stop();
   		delay(1000);
	}

	if (counter < 100)
	{
		counter++;
	}

//stop();
}

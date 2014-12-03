/* Flashing LED
 * ------------
 *
 * Turns on and off a light emitting diode(LED) connected to a digital  
 * pin, in intervals of 2 seconds.
 *
 */
int incomingByte = 0;   // for incoming serial data
int ledPin = 13;                 // LED connected to digital pin 13

void setup()
{
  pinMode(ledPin, OUTPUT);  // sets the digital pin as output
    Serial.begin(9600); //start serial 
}

void loop()
{
  if (Serial.available() > 0)
  {
           // send data only when you receive data:
   
                // read the incoming byte:
                incomingByte = Serial.read();

                // say what you got:
                Serial.print("I received: ");
                Serial.println(incomingByte, DEC);
    
       digitalWrite(ledPin, HIGH);   // sets the LED on
       delay(10000);                  // waits for a second
                  // waits for a second
  }
}


//int ledPin = LED_BUILTIN;

int pirPin = 3;
int lightPin = 0;
unsigned long lastSeen = 0;
int state = 0;

const long timeout = 10000;
const long interval = 1000;

//#include <RH_ASK.h>
//#include <SPI.h> // Not actualy used but needed to compile
//RH_ASK driver(2000, 9, 10); // ESP8266: do not use pin 11

void setup() {
//  Serial.begin(115200);
//  pinMode(ledPin, OUTPUT);
  pinMode(lightPin, OUTPUT);
  pinMode(pirPin, INPUT);
//  digitalWrite(ledPin, LOW);
  digitalWrite(lightPin, LOW);

//  if (!driver.init())
//         Serial.println("Radio init failed");
}
/*
boolean decode() {
    uint8_t buf[RH_ASK_MAX_MESSAGE_LEN];
    uint8_t buflen = sizeof(buf);

    if (driver.recv(buf, &buflen)) // Non-blocking
    {
      // Convert received data into string
      String message = String((char*)buf);
      Serial.print("Message Received: \"");
      Serial.println(message + "\"");
      if (message.substring(0, 3) == "TRG") {
        return true;
      } else {
        return false;
      }
    }
}
*/
void loop() {
  int pirValue = digitalRead(pirPin);
//  digitalWrite(ledPin, pirValue);
  
  boolean radioTrigger = false;//decode();
  
  if (pirValue == HIGH || radioTrigger == true) {
      if (state == LOW) {
//        Serial.println("Turn ON");
        fadein();
        state = HIGH;
        digitalWrite(lightPin, state);
      }
      lastSeen = millis();
//      Serial.print("Last: "); 
//      Serial.println(lastSeen);
  } else {
    unsigned long elapsed = millis() - lastSeen;
//    Serial.print("Now: "); 
//    Serial.print(millis());
//    Serial.print(" Elapsed: "); 
//    Serial.println(elapsed);
    if (elapsed > timeout || elapsed < 0) {
      if (state == HIGH) {
        fadeout();
        state = LOW;
        digitalWrite(lightPin, state);
//        Serial.println("Turn OFF");
      }
    }
  }

//  Serial.print("State: ");
//  Serial.println(state);
  delay(interval);
}

void fadein() {
  // fade in from min to max in increments of 5 points:
  for (int fadeValue = 0 ; fadeValue <= 255; fadeValue += 5) {
    // sets the value (range from 0 to 255):
    analogWrite(lightPin, fadeValue);
    // wait for 30 milliseconds to see the dimming effect
    delay(50);
  }
}

void fadeout() {
  for (int fadeValue = 255 ; fadeValue >= 0; fadeValue -= 5) {
    // sets the value (range from 0 to 255):
    analogWrite(lightPin, fadeValue);
    // wait for 30 milliseconds to see the dimming effect
    delay(50);
  }
}

#include <TinyGPS++.h>

TinyGPSPlus gps;

// UART2 dipakai untuk GPS
HardwareSerial GPS_Serial(2);

// Pin GPS
#define GPS_TX 18  // ESP32 receive from GPS TX
#define GPS_RX 19  // ESP32 transmit to GPS RX
#define GPS_BAUDRATE 9600

// Pin Push Button
#define VIBRATE 4   // satu kaki tombol ke GPIO 4, kaki lain ke GND

void setup() {
  Serial.begin(115200);

  // Setup GPS UART
  GPS_Serial.begin(GPS_BAUDRATE, SERIAL_8N1, GPS_RX, GPS_TX);

  // Setup tombol menggunakan internal pull-up
  pinMode(VIBRATE, INPUT_PULLUP);    
  Serial.println("Semicolon Tracker Ready!");
}

void loop() {
  int buttonState = digitalRead(VIBRATE);
  int lat, lng;

  if(buttonState){
    while (GPS_Serial.available() > 0) {
    gps.encode(GPS_Serial.read());
    }

    if (gps.location.isUpdated()) {
      lat = gps.location.lat();
      lng = gps.location.lng();
      Serial.print("Latitude : ");
      Serial.println(lat, 6);

      Serial.print("Longitude: ");
      Serial.println(lng, 6);

      Serial.print("Altitude : ");
      Serial.print(gps.altitude.meters(), 6);
      
      if (gps.altitude.isValid()) Serial.println(gps.altitude.meters());
      else Serial.println("INVALID");

      Serial.print("Speed    : ");
      if (gps.speed.isValid()) {
        Serial.print(gps.speed.kmph());
        Serial.println(" km/h");
      } else {
        Serial.println("INVALID");
      }

      Serial.print("Date/Time: ");
      if (gps.date.isValid() && gps.time.isValid()) {
        Serial.print(gps.date.year()); Serial.print("-");
        Serial.print(gps.date.month()); Serial.print("-");
        Serial.print(gps.date.day()); Serial.print(" ");

        Serial.print(gps.time.hour()); Serial.print(":");
        Serial.print(gps.time.minute()); Serial.print(":");
        Serial.println(gps.time.second());
      } else {
        Serial.println("INVALID");
      }

      Serial.println("---------------------------");
    }
  }

  delay(300);
}

#include <Arduino.h>

#define LED_PIN  2

void setup() {
  Serial.begin(256000);
  Serial.printf("OUTPUT pin %d]n", LED_PIN);
  pinMode(LED_PIN, OUTPUT);
}

void loop() {
  Serial.printf("%d high\n", LED_PIN);
  digitalWrite(LED_PIN, HIGH);
  delay(1000);
  Serial.printf("%d low\n", LED_PIN);
  digitalWrite(LED_PIN, LOW);
  delay(1000);
}

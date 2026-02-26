void setup() {
  Serial.begin(9600);
  while (!Serial) { }
  Serial.println("You are now inside the matrix.");
}
void loop() {
  delay(1000);
  Serial.println("a second has passed.");
}
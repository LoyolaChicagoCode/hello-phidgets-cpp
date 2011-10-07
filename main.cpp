#include <iostream>
#include <phidget21.h>

using namespace std;

int SensorChangeHandler(CPhidgetInterfaceKitHandle IFK, void *usrptr, int Index, int Value) {
	cout << "Sensor: " << Index << " Value: " << Value << endl;
	return 0;
}

int main(int argc, char* argv[]) {
	cout << "Hello Phidgets!!!" << endl;

	CPhidgetInterfaceKitHandle ifKit = 0;
	CPhidgetInterfaceKit_create(&ifKit);

	CPhidget_open((CPhidgetHandle)ifKit, -1);
	CPhidget_waitForAttachment((CPhidgetHandle)ifKit, 10000);

	CPhidgetInterfaceKit_set_OnSensorChange_Handler (ifKit, SensorChangeHandler, NULL);

	cout << "Press ENTER to continue...";
	cin.ignore();

	CPhidget_close((CPhidgetHandle)ifKit);
	CPhidget_delete((CPhidgetHandle)ifKit);

	return 0;
}

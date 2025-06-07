# sensors

| System                   | Name       | Driver                 | Misc.                      | Sources |
|--------------------------|------------|------------------------|----------------------------|---------|
| Hall effect sensor 	   | BU52031NVX | [rohm,hall-bu52031nvx] | 			                  | /d/i?   |
| RGB LED Driver   		   | LP5521 	| [ti,lp5521]		     | 			                  | mainline|
| Ambient Light, Proximity | avago  	| [avago,apds9130]	     | 			                  | /d/i/s  |
| Accelerometer	           | BMA2x2 	| [bosch,bma2x2]	     | 			                  | /d/i/s  |
| revA-Accelerometer 	   | k2hh       | [st, k2hh]		     | 			                  | /d/i/s  |
| Magnetometer	    	   | BMM050 	| [bosch, bmm050]	     | 			                  | /d/i/s  |
| Battery Voltage Sensor   | MAX17048 	| [maxim, max17048]	     |  			              | /d/p    |
| Charge Controller	       | BQ24262 	| [ti, bq24262-charger]  | 			                  | /d/p    |
| PM8909 PMIC		       |   		    |   			         | Controls LED and Vibrator. | ?       |
| Camera Sensor (front)    | HI707?     | [qcom, hi707]          |                            | ?       |
| Camera Sensor (rear)     | HI351?     | [qcom, hi351]          |                            | ?       |

# Camera info

- Does not have led flash, as indicated by that `qcom,led-flash-src` is commented out. (and by looking at the device lol :P)

- Does not have eeprom

- Is rotated +90

|       | rev A      | 
|-------|------------|
| rear  | qcom,hi351 | 
| front | qcom,hi707 |
|       |            |

# Panel info

It uses a Tianma ili9488 HVGA panel and LM3530 Backlight driver ([backlight, lm3530] found in `//`).



# Sound

Uses built in card, `msm8909-snd-card` as given [qcom, msm8x16-audiocodec]




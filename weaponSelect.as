/* 
Developed by Daphne Link
Version 1.0
*/
package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	
	public class weaponSelect extends MovieClip {
		//create variables for objects
		var gameBackground: backgroundImage;
		var myWeaponBox: weaponSelectionBox;
		var myGs1a: Gs1aClass;
		var myGar44: Gar44Class;
		var myGsmZero: GsmZeroClass;
		var myGaaR8: GaaR8Class;
		var displayStatsGs1a: Gs1aStats;
		
		//next gun values
		var isFrame = 0;
		
		//constructor
		public function weaponSelect() {
			//display background
			editBg();
			//display weapon selection box
			boxWeaponSelect();
			//display guns in weapon selection box
			displayGuns();			
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, gunSelected);
			stop();
		} //close constructor weaponSelect
		
		//function to display background image and positioning
		function editBg(): void {
			gameBackground = new backgroundImage;
			addChild(gameBackground);
			gameBackground.x = 275.35;
			gameBackground.y = 200.35;
		} //close editBg function
		
		//function to display weapon selection box & positioning
		function boxWeaponSelect(): void {
			myWeaponBox = new weaponSelectionBox;
			addChild(myWeaponBox);
			myWeaponBox.x = 126.35;
			myWeaponBox.y = 159.35;
		} //close boxWeaponSelect function
		
		//function to display guns in weapon selection box
		function displayGuns(): void {
			//sniper rifle
			myGs1a = new Gs1aClass;
			addChild(myGs1a);
			myGs1a.x = 126.35;
			myGs1a.y = 90.35;
			//3 round burst assault rifle
			myGar44 = new Gar44Class;
			addChild(myGar44);
			myGar44.x = 126.35;
			myGar44.y = 140.35;
			//submachine gun
			myGsmZero = new GsmZeroClass;
			addChild(myGsmZero);
			myGsmZero.x = 126.35;
			myGsmZero.y = 190.35;
			//full automatic assault rifle
			myGaaR8 = new GaaR8Class;
			addChild(myGaaR8);
			myGaaR8.x = 126.35;
			myGaaR8.y = 250.35;
		}  // close displayGuns function
		
		//function to display gun stats when arrowed over
		function gunSelected(e:KeyboardEvent):void {
			
			if(isFrame == 0) {
				if(e.keyCode == Keyboard.UP) {
					gotoAndStop(1);
				} else if(e.keyCode == Keyboard.DOWN) {
					gotoAndStop(2);
					isFrame = 2;
				}
			} else
			if(isFrame == 2) {
				if(e.keyCode == Keyboard.UP) {
					gotoAndStop(1);
					isFrame = 0;
				} else if(e.keyCode == Keyboard.DOWN) {
					gotoAndStop(3);
					isFrame = 3;
				}
			} else
			if(isFrame == 3) {
				if(e.keyCode == Keyboard.UP) {
					gotoAndStop(2);
					isFrame = 2;
				} else if(e.keyCode == Keyboard.DOWN) {
					gotoAndStop(4);
					isFrame = 4;
				}
			} else
			if(isFrame == 4) {
				if(e.keyCode == Keyboard.UP) {
					gotoAndStop(3);
					isFrame = 3;
				} else if(e.keyCode == Keyboard.DOWN) {
					gotoAndStop(5);
					isFrame = 5;
				}
			} else
			if(isFrame == 5) {
				if(e.keyCode == Keyboard.UP) {
					gotoAndStop(4);
					isFrame = 4;
				} else if(e.keyCode == Keyboard.DOWN) {
					gotoAndStop(2);
					isFrame = 2;
				}
			}
						
		} // close gunSelected1 function
	
		
	} //close class weaponSelect extends MovieClip
	
} //close package

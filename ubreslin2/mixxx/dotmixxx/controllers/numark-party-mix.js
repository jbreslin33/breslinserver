var NumarkPartyMix = {};
var pad_valA = 0;
var pad_valB = 0; 
var pad_on_A = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]];
var pad_on_B = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]];



NumarkPartyMix.init = function(id) {
	midi.sendShortMsg(0x84, 0x00, 0x7F);
	midi.sendShortMsg(0x85, 0x00, 0x7F); 
	midi.sendShortMsg(0x80, 0x01, 0x7F); 
	midi.sendShortMsg(0x80, 0x02, 0x7F);
	midi.sendShortMsg(0x81, 0x01, 0x7F);
	midi.sendShortMsg(0x81, 0x02, 0x7F);
	engine.connectControl("[Channel1]", "play", connectPlayButtonA);
	engine.trigger("[Channel1]", "play");
	engine.connectControl("[Channel2]", "play", connectPlayButtonB);
	engine.trigger("[Channel2]", "play");
	engine.connectControl("[Channel1]", "hotcue_1_activate", NumarkPartyMix.set_cues);
	engine.connectControl("[Channel1]", "hotcue_1_clear", NumarkPartyMix.set_cues);
	engine.connectControl("[Channel1]", "hotcue_2_activate", NumarkPartyMix.set_cues);
	engine.connectControl("[Channel1]", "hotcue_2_clear", NumarkPartyMix.set_cues);
	engine.connectControl("[Channel1]", "hotcue_3_activate", NumarkPartyMix.set_cues);
	engine.connectControl("[Channel1]", "hotcue_3_clear", NumarkPartyMix.set_cues);
	engine.connectControl("[Channel1]", "hotcue_4_activate", NumarkPartyMix.set_cues); 
	engine.connectControl("[Channel1]", "hotcue_4_clear", NumarkPartyMix.set_cues);
	engine.trigger("[Channel1]", "hotcue_1_activate");
	engine.connectControl("[Channel1]","beatloop_1_toggle", NumarkPartyMix.set_loop);
	engine.connectControl("[Channel1]","beatloop_2_toggle", NumarkPartyMix.set_loop);
	engine.connectControl("[Channel1]","beatloop_4_toggle", NumarkPartyMix.set_loop);
	engine.connectControl("[Channel1]","beatloop_8_toggle", NumarkPartyMix.set_loop); 
	engine.connectControl("[Sampler1]","play", NumarkPartyMix.set_sampler);
	engine.connectControl("[Sampler2]","play", NumarkPartyMix.set_sampler);
	engine.connectControl("[Sampler3]","play", NumarkPartyMix.set_sampler);
	engine.connectControl("[Sampler4]","play", NumarkPartyMix.set_sampler);
	engine.connectControl("[Channel1]","LoadSelectedTrack", NumarkPartyMix.deck_A_changed);
	
	engine.connectControl("[Channel2]", "hotcue_1_activate", NumarkPartyMix.set_cues_B);
	engine.connectControl("[Channel2]", "hotcue_1_clear", NumarkPartyMix.set_cues_B);
	engine.connectControl("[Channel2]", "hotcue_2_activate", NumarkPartyMix.set_cues_B);
	engine.connectControl("[Channel2]", "hotcue_2_clear", NumarkPartyMix.set_cues_B);
	engine.connectControl("[Channel2]", "hotcue_3_activate", NumarkPartyMix.set_cues_B);
	engine.connectControl("[Channel2]", "hotcue_3_clear", NumarkPartyMix.set_cues_B);
	engine.connectControl("[Channel2]", "hotcue_4_activate", NumarkPartyMix.set_cues_B); 
	engine.connectControl("[Channel2]", "hotcue_4_clear", NumarkPartyMix.set_cues_B);
	engine.trigger("[Channel2]", "hotcue_1_activate");
	engine.connectControl("[Channel2]","beatloop_1_toggle", NumarkPartyMix.set_loop_B);
	engine.connectControl("[Channel2]","beatloop_2_toggle", NumarkPartyMix.set_loop_B);
	engine.connectControl("[Channel2]","beatloop_4_toggle", NumarkPartyMix.set_loop_B);
	engine.connectControl("[Channel2]","beatloop_8_toggle", NumarkPartyMix.set_loop_B); 
	engine.connectControl("[Sampler1]","play", NumarkPartyMix.set_sampler_B);
	engine.connectControl("[Sampler2]","play", NumarkPartyMix.set_sampler_B);
	engine.connectControl("[Sampler3]","play", NumarkPartyMix.set_sampler_B);
	engine.connectControl("[Sampler4]","play", NumarkPartyMix.set_sampler_B);
	engine.connectControl("[Channel2]","LoadSelectedTrack", NumarkPartyMix.deck_B_changed);
	engine.connectControl("[Channel1]", "hotcue_1_activate", NumarkPartyMix.set_cues_B);
	engine.connectControl("[Channel1]", "hotcue_1_clear", NumarkPartyMix.set_cues_B);
	engine.connectControl("[Channel1]", "hotcue_2_activate", NumarkPartyMix.set_cues_B);
	engine.connectControl("[Channel1]", "hotcue_2_clear", NumarkPartyMix.set_cues_B);
	engine.connectControl("[Channel1]", "hotcue_3_activate", NumarkPartyMix.set_cues_B);
	engine.connectControl("[Channel1]", "hotcue_3_clear", NumarkPartyMix.set_cues_B);
	engine.connectControl("[Channel1]", "hotcue_4_activate", NumarkPartyMix.set_cues_B); 
	engine.connectControl("[Channel1]", "hotcue_4_clear", NumarkPartyMix.set_cues_B);
	engine.connectControl("[Channel2]", "hotcue_1_activate", NumarkPartyMix.set_cues);
	engine.connectControl("[Channel2]", "hotcue_1_clear", NumarkPartyMix.set_cues);
	engine.connectControl("[Channel2]", "hotcue_2_activate", NumarkPartyMix.set_cues);
	engine.connectControl("[Channel2]", "hotcue_2_clear", NumarkPartyMix.set_cues);
	engine.connectControl("[Channel2]", "hotcue_3_activate", NumarkPartyMix.set_cues);
	engine.connectControl("[Channel2]", "hotcue_3_clear", NumarkPartyMix.set_cues);
	engine.connectControl("[Channel2]", "hotcue_4_activate", NumarkPartyMix.set_cues); 
	engine.connectControl("[Channel2]", "hotcue_4_clear", NumarkPartyMix.set_cues);

}

NumarkPartyMix.shutdown = function() {  
	midi.sendShortMsg(0x80, 0x00, 0x00);
	midi.sendShortMsg(0x80, 0x01, 0x00);
	midi.sendShortMsg(0x80, 0x02, 0x00);
	midi.sendShortMsg(0x81, 0x00, 0x00);
	midi.sendShortMsg(0x81, 0x01, 0x00);
	midi.sendShortMsg(0x81, 0x02, 0x00);
	midi.sendShortMsg(0x84, 0x14, 0x00);
	midi.sendShortMsg(0x84, 0x15, 0x00);
	midi.sendShortMsg(0x84, 0x16, 0x00);
	midi.sendShortMsg(0x84, 0x17, 0x00);
	midi.sendShortMsg(0x85, 0x14, 0x00);
	midi.sendShortMsg(0x85, 0x15, 0x00);
	midi.sendShortMsg(0x85, 0x16, 0x00);
	midi.sendShortMsg(0x85, 0x17, 0x00);
}  

var connectPlayButtonA = function (value, group, control){
	if(value == 0)
	{
		midi.sendShortMsg(0x80, 0x00, 0x00);
	}
	else
	{
		midi.sendShortMsg(0x80, 0x00, 0x7F);
	}
};
var connectPlayButtonB = function (value, group, control){
	if(value == 0)
	{
		midi.sendShortMsg(0x81, 0x00, 0x00);
	}
	else
	{
		midi.sendShortMsg(0x81, 0x00, 0x7F);
	}
};


// The button that enables/disables scratching
NumarkPartyMix.wheelTouch = function (channel, control, value, status, group) {
  //  if ((status & 0xF0) === 0x90) {    // If button down
  
  if (value === 0x7F) {  // Some wheels send 0x90 on press and release, so you need to check the value
        var alpha = 1.0/8;
        var beta = alpha/32;
        engine.scratchEnable(script.deckFromGroup(group), 350, 33+1/3,alpha, beta);
    } else {    // If button up
        engine.scratchDisable(script.deckFromGroup(group));
		
    }
	
	
}
 
// The wheel that actually controls the scratching

NumarkPartyMix.wheelTurn = function (channel, control, value, status, group) {
    // --- Choose only one of the following!
 
    // A: For a control that centers on 0:
    var newValue;
    if (value < 64) {
        newValue = value;
    } else {
        newValue = value - 128;
    }
 
    // In either case, register the movement
    if (engine.isScratching(script.deckFromGroup(group))) {
        engine.scratchTick(script.deckFromGroup(group), newValue); // Scratch!
    } else {
        engine.setValue(group, 'jog', newValue + engine.getValue(group, "jog")); // Pitch bend
    }
}


//changes global variable pad_valA based on input
NumarkPartyMix.toggleSwitchA = function (channel, control, value, status, group) {
	if(control == 0)
	{
		pad_valA = 0;
		NumarkPartyMix.set_cues();
	}
	else if(control == 11)
	{
		pad_valA = 1;
		NumarkPartyMix.set_loop();
	}
	else if(control == 14)
	{
		pad_valA = 2;
		NumarkPartyMix.set_sampler();
	}
	else if(control == 24)
	{
		pad_valA = 3;
		NumarkPartyMix.set_effects();
	}
	
}
//changes global variable pad_valB based on input
NumarkPartyMix.toggleSwitchB = function (channel, control, value, status, group) {
	if(control == 0)
	{
		pad_valB = 0;
		NumarkPartyMix.set_cues_B();
	}
	else if(control == 11)
	{
		pad_valB = 1;
		NumarkPartyMix.set_loop_B();
	}
	else if(control == 14)
	{
		pad_valB = 2;
		NumarkPartyMix.set_sampler_B();
	}
	else if(control == 24)
	{
		pad_valB = 3;
		NumarkPartyMix.set_effects_B();
	}
}

//each pads use based on value of pad mode
NumarkPartyMix.pad_1A = function (channel, control, value, status, group) {
	switch(pad_valA){
		case 0:	engine.setValue("[Channel1]", "hotcue_1_activate", 1);
				break;
		case 1:	engine.setValue("[Channel1]", "beatloop_1_toggle", 1);
				break;
		case 2:	if(engine.getValue("[Sampler1]", "play") === 1){
					engine.setValue("[Sampler1]", "play", 0);  
				}
				else{
					engine.setValue("[Sampler1]", "start_play", 1);  
				}
				break;
	}
	
}
NumarkPartyMix.pad_2A = function (channel, control, value, status, group) {
	switch(pad_valA){
		case 0:	engine.setValue("[Channel1]", "hotcue_2_activate", 1);
				break;
		case 1:	engine.setValue("[Channel1]", "beatloop_2_toggle", 1);
				break;
		case 2:	if(engine.getValue("[Sampler2]", "play") === 1){
					engine.setValue("[Sampler2]", "play", 0);  
				}
				else{
					engine.setValue("[Sampler2]", "start_play", 1);  
				}
				break;
		
	}
}
NumarkPartyMix.pad_3A = function (channel, control, value, status, group) {
	switch(pad_valA){
		case 0:	engine.setValue("[Channel1]", "hotcue_3_activate", 1);
				break;
		case 1:	engine.setValue("[Channel1]", "beatloop_4_toggle", 1);
				break;
		case 2:	if(engine.getValue("[Sampler3]", "play") === 1){
					engine.setValue("[Sampler3]", "play", 0);  
				}
				else{
					engine.setValue("[Sampler3]", "start_play", 1);  
				}
				break;
		
	}
}
NumarkPartyMix.pad_4A = function (channel, control, value, status, group) {
	switch(pad_valA){
		case 0:	engine.setValue("[Channel1]", "hotcue_4_activate", 1);
				break;
		case 1:	engine.setValue("[Channel1]", "beatloop_8_toggle", 1);
				break;
		case 2:	if(engine.getValue("[Sampler4]", "play") === 1){
					engine.setValue("[Sampler4]", "play", 0);  
				}
				else{
					engine.setValue("[Sampler4]", "start_play", 1);  
				}
				break;
		
	}
}

NumarkPartyMix.pad_1B = function (channel, control, value, status, group) {
	switch(pad_valB){
		case 0:	engine.setValue("[Channel2]", "hotcue_1_activate", 1);
				break;
		case 1:	engine.setValue("[Channel2]", "beatloop_1_toggle", 1);
				break;
		case 2:	if(engine.getValue("[Sampler1]", "play") === 1){
					engine.setValue("[Sampler1]", "play", 0);  
				}
				else{
					engine.setValue("[Sampler1]", "start_play", 1);  
				}
				break;

		
	}
}
NumarkPartyMix.pad_2B = function (channel, control, value, status, group) {
	switch(pad_valB){
		case 0:	engine.setValue("[Channel2]", "hotcue_2_activate", 1);
				break;
		case 1:	engine.setValue("[Channel2]", "beatloop_2_toggle", 1);
				break;
		case 2:	if(engine.getValue("[Sampler2]", "play") === 1){
					engine.setValue("[Sampler2]", "play", 0);  
				}
				else{
					engine.setValue("[Sampler2]", "start_play", 1);  
				}
				break;
		
	}
}
NumarkPartyMix.pad_3B = function (channel, control, value, status, group) {
	switch(pad_valB){
		case 0:	engine.setValue("[Channel2]", "hotcue_3_activate", 1);
				break;
		case 1:	engine.setValue("[Channel2]", "beatloop_4_toggle", 1);
				break;
		case 2:	if(engine.getValue("[Sampler3]", "play") === 1){
					engine.setValue("[Sampler3]", "play", 0);  
				}
				else{
					engine.setValue("[Sampler3]", "start_play", 1);  
				}
				break;
		
	}
}
NumarkPartyMix.pad_4B = function (channel, control, value, status, group) {
	switch(pad_valB){
		case 0:	engine.setValue("[Channel2]", "hotcue_4_activate", 1);
				break;
		case 1:	engine.setValue("[Channel2]", "beatloop_8_toggle", 1);
				break;
		case 2:	if(engine.getValue("[Sampler4]", "play") === 1){
					engine.setValue("[Sampler4]", "play", 0);  
				}
				else{
					engine.setValue("[Sampler4]", "start_play", 1);  
				}
				break;
		
	}
}

NumarkPartyMix.set_lights_A = function(){
	switch(pad_valA){
		case 0: 
			if(pad_on_A[0][0] == 1)
			{
				midi.sendShortMsg(0x84, 0x14, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x14, 0x00);
			}
			if(pad_on_A[0][1] == 1)
			{
				midi.sendShortMsg(0x84, 0x15, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x15, 0x00);
			}
			if(pad_on_A[0][2] == 1)
			{
				midi.sendShortMsg(0x84, 0x16, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x16, 0x00);
			}
			if(pad_on_A[0][3] == 1)
			{
				midi.sendShortMsg(0x84, 0x17, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x17, 0x00);
			}
		break;
		case 1: 
			if(pad_on_A[1][0] == 1)
			{
				midi.sendShortMsg(0x84, 0x14, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x14, 0x00);
			}
			if(pad_on_A[1][1] == 1)
			{
				midi.sendShortMsg(0x84, 0x15, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x15, 0x00);
			}
			if(pad_on_A[1][2] == 1)
			{
				midi.sendShortMsg(0x84, 0x16, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x16, 0x00);
			}
			if(pad_on_A[1][3] == 1)
			{
				midi.sendShortMsg(0x84, 0x17, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x17, 0x00);
			}
		break;
		case 2: 
			if(pad_on_A[2][0] == 1)
			{
				midi.sendShortMsg(0x84, 0x14, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x14, 0x00);
			}
			if(pad_on_A[2][1] == 1)
			{
				midi.sendShortMsg(0x84, 0x15, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x15, 0x00);
			}
			if(pad_on_A[2][2] == 1)
			{
				midi.sendShortMsg(0x84, 0x16, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x16, 0x00);
			}
			if(pad_on_A[2][3] == 1)
			{
				midi.sendShortMsg(0x84, 0x17, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x17, 0x00);
			}
		break;
		case 3: 
			if(pad_on_A[3][0] == 1)
			{
				midi.sendShortMsg(0x84, 0x14, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x14, 0x00);
			}
			if(pad_on_A[3][1] == 1)
			{
				midi.sendShortMsg(0x84, 0x15, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x15, 0x00);
			}
			if(pad_on_A[3][2] == 1)
			{
				midi.sendShortMsg(0x84, 0x16, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x16, 0x00);
			}
			if(pad_on_A[3][3] == 1)
			{
				midi.sendShortMsg(0x84, 0x17, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x84, 0x17, 0x00);
			}
		break;
			
	}
};
NumarkPartyMix.set_cues = function(){
	pad_on_A[0][0] = engine.getValue("[Channel1]", "hotcue_1_enabled");
	pad_on_A[0][1] = engine.getValue("[Channel1]", "hotcue_2_enabled");
	pad_on_A[0][2] = engine.getValue("[Channel1]", "hotcue_3_enabled");
	pad_on_A[0][3] = engine.getValue("[Channel1]", "hotcue_4_enabled");
	NumarkPartyMix.set_lights_A();
};
NumarkPartyMix.set_loop = function(){
	pad_on_A[1][0] = engine.getValue("[Channel1]", "beatloop_1_enabled");
	pad_on_A[1][1] = engine.getValue("[Channel1]", "beatloop_2_enabled");
	pad_on_A[1][2] = engine.getValue("[Channel1]", "beatloop_4_enabled");
	pad_on_A[1][3] = engine.getValue("[Channel1]", "beatloop_8_enabled");
	NumarkPartyMix.set_lights_A();
};
NumarkPartyMix.set_sampler = function(){
	pad_on_A[2][0] = engine.getValue("[Sampler1]", "play");
	pad_on_A[2][1] = engine.getValue("[Sampler2]", "play");
	pad_on_A[2][2] = engine.getValue("[Sampler3]", "play");
	pad_on_A[2][3] = engine.getValue("[Sampler4]", "play");
	NumarkPartyMix.set_lights_A();
};
NumarkPartyMix.set_effects = function(){

	NumarkPartyMix.set_lights_A();
};
NumarkPartyMix.deck_A_changed = function(){
	pad_on_A[0][0] = engine.getValue("[Channel1]", "hotcue_1_enabled");
	pad_on_A[0][1] = engine.getValue("[Channel1]", "hotcue_2_enabled");
	pad_on_A[0][2] = engine.getValue("[Channel1]", "hotcue_3_enabled");
	pad_on_A[0][3] = engine.getValue("[Channel1]", "hotcue_4_enabled");
	pad_on_A[1][0] = engine.getValue("[Channel1]", "beatloop_1_enabled");
	pad_on_A[1][1] = engine.getValue("[Channel1]", "beatloop_2_enabled");
	pad_on_A[1][2] = engine.getValue("[Channel1]", "beatloop_4_enabled");
	pad_on_A[1][3] = engine.getValue("[Channel1]", "beatloop_8_enabled");
	pad_on_A[2][0] = engine.getValue("[Sampler1]", "play");
	pad_on_A[2][1] = engine.getValue("[Sampler2]", "play");
	pad_on_A[2][2] = engine.getValue("[Sampler3]", "play");
	pad_on_A[2][3] = engine.getValue("[Sampler4]", "play");
	NumarkPartyMix.set_lights_A();
	
};




NumarkPartyMix.set_lights_B = function(){
	switch(pad_valB){
		case 0: 
			if(pad_on_B[0][0] == 1)
			{
				midi.sendShortMsg(0x85, 0x14, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x14, 0x00);
			}
			if(pad_on_B[0][1] == 1)
			{
				midi.sendShortMsg(0x85, 0x15, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x15, 0x00);
			}
			if(pad_on_B[0][2] == 1)
			{
				midi.sendShortMsg(0x85, 0x16, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x16, 0x00);
			}
			if(pad_on_B[0][3] == 1)
			{
				midi.sendShortMsg(0x85, 0x17, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x17, 0x00);
			}
		break;
		case 1: 
			if(pad_on_B[1][0] == 1)
			{
				midi.sendShortMsg(0x85, 0x14, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x14, 0x00);
			}
			if(pad_on_B[1][1] == 1)
			{
				midi.sendShortMsg(0x85, 0x15, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x15, 0x00);
			}
			if(pad_on_B[1][2] == 1)
			{
				midi.sendShortMsg(0x85, 0x16, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x16, 0x00);
			}
			if(pad_on_B[1][3] == 1)
			{
				midi.sendShortMsg(0x85, 0x17, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x17, 0x00);
			}
		break;
		case 2: 
			if(pad_on_B[2][0] == 1)
			{
				midi.sendShortMsg(0x85, 0x14, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x14, 0x00);
			}
			if(pad_on_B[2][1] == 1)
			{
				midi.sendShortMsg(0x85, 0x15, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x15, 0x00);
			}
			if(pad_on_B[2][2] == 1)
			{
				midi.sendShortMsg(0x85, 0x16, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x16, 0x00);
			}
			if(pad_on_B[2][3] == 1)
			{
				midi.sendShortMsg(0x85, 0x17, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x17, 0x00);
			}
		break;
		case 3: 
			if(pad_on_B[3][0] == 1)
			{
				midi.sendShortMsg(0x85, 0x14, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x14, 0x00);
			}
			if(pad_on_B[3][1] == 1)
			{
				midi.sendShortMsg(0x85, 0x15, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x15, 0x00);
			}
			if(pad_on_B[3][2] == 1)
			{
				midi.sendShortMsg(0x85, 0x16, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x16, 0x00);
			}
			if(pad_on_B[3][3] == 1)
			{
				midi.sendShortMsg(0x85, 0x17, 0x7F);
			}
			else
			{
				midi.sendShortMsg(0x85, 0x17, 0x00);
			}
		break;
			
	}
};
NumarkPartyMix.set_cues_B = function(){
	pad_on_B[0][0] = engine.getValue("[Channel2]", "hotcue_1_enabled");
	pad_on_B[0][1] = engine.getValue("[Channel2]", "hotcue_2_enabled");
	pad_on_B[0][2] = engine.getValue("[Channel2]", "hotcue_3_enabled");
	pad_on_B[0][3] = engine.getValue("[Channel2]", "hotcue_4_enabled");
	NumarkPartyMix.set_lights_B();
};
NumarkPartyMix.set_loop_B = function(){
	pad_on_B[1][0] = engine.getValue("[Channel2]", "beatloop_1_enabled");
	pad_on_B[1][1] = engine.getValue("[Channel2]", "beatloop_2_enabled");
	pad_on_B[1][2] = engine.getValue("[Channel2]", "beatloop_4_enabled");
	pad_on_B[1][3] = engine.getValue("[Channel2]", "beatloop_8_enabled");
	NumarkPartyMix.set_lights_B();
};
NumarkPartyMix.set_sampler_B = function(){
	pad_on_B[2][0] = engine.getValue("[Sampler1]", "play");
	pad_on_B[2][1] = engine.getValue("[Sampler2]", "play");
	pad_on_B[2][2] = engine.getValue("[Sampler3]", "play");
	pad_on_B[2][3] = engine.getValue("[Sampler4]", "play");
	NumarkPartyMix.set_lights_B();
};
NumarkPartyMix.set_effects_B = function(){

	NumarkPartyMix.set_lights_B();
};
NumarkPartyMix.deck_B_changed = function(){
	pad_on_B[0][0] = engine.getValue("[Channel2]", "hotcue_1_enabled");
	pad_on_B[0][1] = engine.getValue("[Channel2]", "hotcue_2_enabled");
	pad_on_B[0][2] = engine.getValue("[Channel2]", "hotcue_3_enabled");
	pad_on_B[0][3] = engine.getValue("[Channel2]", "hotcue_4_enabled");
	pad_on_B[1][0] = engine.getValue("[Channel2]", "beatloop_1_enabled");
	pad_on_B[1][1] = engine.getValue("[Channel2]", "beatloop_2_enabled");
	pad_on_B[1][2] = engine.getValue("[Channel2]", "beatloop_4_enabled");
	pad_on_B[1][3] = engine.getValue("[Channel2]", "beatloop_8_enabled");
	pad_on_B[2][0] = engine.getValue("[Sampler1]", "play");
	pad_on_B[2][1] = engine.getValue("[Sampler2]", "play");
	pad_on_B[2][2] = engine.getValue("[Sampler3]", "play");
	pad_on_B[2][3] = engine.getValue("[Sampler4]", "play");
	NumarkPartyMix.set_lights_B();
	
};

// Layout User Options

// Layout User Options
class UserConfig </ help="Plugin that updates the Pixelcade marquee when starting and exiting a game." /> {
	</ label="Front End Text",
		help="Text to display while browsing (before launching)",
		order=1 />
	frontEndTxt="";
}
// PixelCade
class PixelCade {
	user_config = null;
	script_path = "";
	frontEndTxt = "";
	emu_to_pixelcade_map = {
	 Arcade = "mame"
	}
	
	constructor() {
		user_config = fe.get_config();
		script_path =  fe.script_dir + "/scripts";
		frontEndTxt = user_config["frontEndTxt"];
		fe.add_transition_callback(this, "transitions");
	}
	
	function transitions(ttype, var, ttime) {
	        local game_title = fe.game_info(Info.Title,0);
			local emulator_str = fe.game_info(Info.Emulator, 0);
			local rom_name = fe.game_info(Info.Name, 0);

        	switch(ttype) {
			case Transition.ToGame:

			    print("Starting Game " + game_title + "\n");
				print("Emulator is " + emulator_str + "\n");
				local cmd_args = "\"" + game_title + "\"";
				      cmd_args += " " + this.emu_to_pixelcade_map[emulator_str];
				      cmd_args += " " + rom_name;
				print("Script path is " + this.script_path);
				print("Cmd args are : " + cmd_args );
				fe.plugin_command_bg(this.script_path + "/update_pixelcade.sh", cmd_args );
				break;
			case Transition.FromGame:
			        print("Exiting Game \n");
				fe.plugin_command_bg(this.script_path + "/display_marquee_text.sh", "\"" + this.frontEndTxt +"\"");
				break;
		}
		return false;
	}
}
fe.plugin["PixelCade"] <- PixelCade();

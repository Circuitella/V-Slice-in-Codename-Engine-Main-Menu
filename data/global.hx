import Type;

function preStateSwitch():Void {
	if (getStateName() == 'FreeplayState') {
		FlxG.game._requestedState = new MainMenuState();
		FlxG.game._requestedState.curSelected = 1;
		new FlxTimer().start(0.01, ()->{
			FlxG.state.persistentUpdate = false;
			FlxG.state.openSubState(new ModSubState('FreeplaySubState'));
		});
	}
}

function getStateName():Void {
	var split:Array<String> = Type.getClassName(Type.getClass(FlxG.game._requestedState)).split('.');
	return split[split.length - 1];
}
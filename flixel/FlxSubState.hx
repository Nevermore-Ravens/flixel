package flixel;

class FlxSubState extends flixel.group.FlxGroup {
	public var parent:FlxState;

	@:allow(flixel.FlxState.resetSubState)
	var _created:Bool = false;

	/**
	 * Callback method for state open/resume event.
	 * @since 4.3.0
	 */
	public dynamic function openCallback():Void {}

	/**
	 * Callback method for state close event.
	 */
	public dynamic function closeCallback():Void {}

	public function create():Void {}
	public function close():Void {
		if (parent == null || parent.subState != this) return;

		parent.closeSubState();
		active = false;
	}

	override public function destroy():Void {
		super.destroy();
		parent = null;
	}

	public function tryUpdate(elapsed:Float):Void {
	    // TODO: find a better way to make controllers not fuck up on menus
	    if(_skipFrames < 2) {
			_skipFrames++;
			return;
		}
		update(elapsed);
	}

	public function onFocusLost():Void {}
	public function onFocus():Void {}
	public function onResize(width:Int, height:Int):Void {}

	private var _skipFrames:Int = 0;
}

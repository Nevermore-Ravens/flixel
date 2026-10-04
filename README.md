hi yes hello this is a fork of 5.5.0

changes

in graphics.tile:  
added camera.canvas.graphics.endFill() to DrawQuads and DrawTriangle  
inlined super.render();

FlxSubState:  
added parent:FlxState

FlxState:  
changed how (sub)states are drawn/processed

FlxObject:  
changed moves to false by default instead of true

FlxSprite:  
added FlxSprite.clipGraphic()

added wrapMode support  
for individual tiling per sprite

FlxGame constructor lol  
that's it i just didn't like the arg layout

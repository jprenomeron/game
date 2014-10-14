
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{
	SESprite player;

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w = get_scene_width(), h = get_scene_height();
		
		rsc.prepare_image("ray", "ray", w*0.05, h*0.10);
		player = add_sprite_for_image(SEImage.for_resource("ray"));
		var wp = player.get_width(), wh=player.get_height();
		player.move(w*0.5-wp*0.5, h*0.5-wh*0.5);
	}
	public void tick(TimeVal now, double delta) {
		player.move(MainScene.px, MainScene.py);
	}

	public void cleanup() {
		base.cleanup();
	}
}

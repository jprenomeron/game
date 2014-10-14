
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite enemy;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w = get_scene_width();
		var h = get_scene_height(); 

		rsc.prepare_image("enemy", "enemy", w*0.05, h*0.10);
		enemy = add_sprite_for_image(SEImage.for_resource("enemy"));
		enemy.move(Math.random(0,w), Math.random(0,h));
	}

	public void tick(TimeVal now, double delta) {
		var mx = enemy.get_x();
		var my = enemy.get_y();
		var px = MainScene.px;
		var py = MainScene.py;
		enemy.move(mx + (px - mx)/20, my + (py -my)/20);
		
	}

	public void cleanup() {
		base.cleanup();
	}
}

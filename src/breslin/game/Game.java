package breslin.game;

import com.jme3.app.SimpleApplication;
import com.jme3.material.Material;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.shape.Box;
import com.jme3.math.ColorRGBA;


//networking
import java.io.*;

//for headless server
import com.jme3.system.JmeContext;
import com.jme3.system.JmeContext.Type;

/** Sample 1 - how to get started with the most simple JME 3 application.
 * Display a blue 3D cube and view from all sides by
 * moving the mouse and pressing the WASD keys. */
public class Game extends SimpleApplication {
    public static void main(String[] args) {
        Game app = new Game();
        app.start(JmeContext.Type.Headless);
    }
    @Override
    public void simpleInitApp() {
        Box b = new Box(Vector3f.ZERO, 1, 1, 1);
        Geometry geom = new Geometry("Box", b);
        Material mat = new Material(assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
        mat.setColor("Color", ColorRGBA.Blue);
        geom.setMaterial(mat);
        rootNode.attachChild(geom);

        //start networking...
        try {
        	new GameServerThread().start();
		} catch (IOException e) {
		    e.printStackTrace();
        }

    }
}
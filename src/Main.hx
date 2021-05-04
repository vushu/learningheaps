import hxd.res.DefaultFont;
import h2d.Drawable;
import h2d.Tile;
import h2d.Object;
import h2d.Scene;
import hxd.App;

class Main extends App {

    var input : h2d.TextInput;
    var button: h2d.Interactive;

    override function init(): Void {

        engine.backgroundColor = 0x202020;
        var myScene = new Scene();
        setScene(myScene);
        //var myObj = new Object(s2d);
        createGUI();

        //var colorTile = h2d.Tile.fromColor(0xFF00FF, 100, 100, 1);
    }

    public function createGUI(): Void  {
        //var tf = new h2d.Text();
        var font = DefaultFont.get();
        var console = new h2d.Console(font, s2d);
        console.addCommand("hello", "printlns", [], function(){
            console.log("asdfsadfa", 0xFF00FF);
        });

        input = new h2d.TextInput(font, s2d);

        this.input.text = "mama mana";
        this.input.textColor = 0xFF0000;
        //this.buttonSprite = new h2d.Object(s2d);

            var rect = new h2d.Graphics(s2d);

        rect.beginFill(0xEA8220);
        rect.drawRect(10,10,300,200);
        rect.endFill();

        this.button = new h2d.Interactive(100, 100, rect);
        this.button.setPosition(10,0);



    }

    override function update(dt: Float) {

    }

    static function main() {
        new Main();
    }

}

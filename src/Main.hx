package;

import haxe.ui.Toolkit;
import haxe.ui.components.Button;
import haxe.ui.components.Label;
import haxe.ui.containers.VBox;

class Main {
    public static function main() { 
        Toolkit.init();

        var root = new VBox();
        root.padding = 20; 
        
        var label = new Label();
        label.text = "Haxe GUI";
        label.styleString = "font-size: 20px; color: #333;";
        root.addComponent(label);
        
        var button = new Button();
        button.text = "ビルド成功を確認";
        button.marginTop = 10;

        button.onClick = function(e){
            label.text ="動作は正常です";
            label.styleString = "color: #27ae60; font-weight: bold;";
            trace("Button clicked!");
        };
        root.addComponent(button);

        Toolkit.screen.addComponent(root);
    }
}

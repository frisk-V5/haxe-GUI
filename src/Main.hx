package;

import haxe.ui.Toolkit;
import haxe.ui.components.Button;
import haxe.ui.components.Label;
import haxe.ui.containers.VBox;
import haxe.ui.macros.ComponentMacros;

class Main {
    public static function main() { 
        // UIシステム初期化
        Toolkit.init();

        // レイアウトコンテナを作る
        var root = new VBox();
        root.padding = 20; 
        
        //ラベルを作成してテキストを設定する
        var label = new Label();
        label.text = "Haxe GUI";
        // 区切りをセミコロン(;)に修正
        label.styleString = "font-size: 20px; color: #333;";
        root.addComponent(label); //rootに追加
        
        //ボタンを追加

        var button = new Button();
        button.text = "ビルド成功を確認";
        button.marginTop = 10;

        // onClick (kを追加) に修正
        button.onClick = function(e){
            label.text ="動作は正常です";
            label.styleString = "color: #27ae60; font-weight: bold;";
            trace("Button clicked!");
            };
            root.addComponent(button);

            //画面登録
            Toolkit.screen.addComponent(root);
        }
    }

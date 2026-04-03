package;

import js.Browser;
import js.html.ButtonElement;
import js.html.DivElement;

class Main {
    public static function main() {
        var document = Browser.document;

        // コンテナ作成
        var root = document.createDivElement();
        root.style.padding = "20px";

        // ラベル（div）作成
        var label = document.createDivElement();
        label.innerText = "Haxe Native GUI";
        label.style.fontSize = "20px";
        label.style.color = "#333";
        root.appendChild(label);

        // ボタン作成
        var button = document.createButtonElement();
        button.innerText = "ビルド成功を確認";
        button.style.marginTop = "10px";
        button.onclick = function(e) {
            label.innerText = "動作は正常です";
            label.style.color = "#27ae60";
            label.style.fontWeight = "bold";
            trace("Button clicked!");
        };
        root.appendChild(button);

        document.body.appendChild(root);
    }
}

package demo.view {
  import demo.enum.Type;

  import flash.display.Sprite;

  public class SelectorView extends Sprite {
    //==========================================================================
    //  Constructor
    //==========================================================================
    public function SelectorView() {
      super();
      build();
    }
    //==========================================================================
    //  Private methods
    //==========================================================================
    private function build():void {
      const TYPE_LIST:Array = [Type.SCISSORS, Type.ROCK, Type.PAPER];
      var layoutX:Number = 0;
      for each (var type:Type in TYPE_LIST) {
        var button:HandButton = new HandButton(type);
        addChild(button);
        button.x = layoutX;
        layoutX += 100;
      }
    }
  }
}
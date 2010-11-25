package demo.view {
  import demo.enum.Type;

  import flash.display.MovieClip;
  import flash.display.Sprite;
  import flash.events.MouseEvent;

  public class HandButton extends Sprite {
    //==========================================================================
    //  Constructor
    //==========================================================================
    public function HandButton(type:Type) {
      _type = type;

      var asset:MovieClip = new HandAsset();
      asset.gotoAndStop(type.value);
      addChild(asset);

      buttonMode = true;
      mouseChildren = false;

      addEventListener(MouseEvent.ROLL_OVER, rollOverHandler);
      addEventListener(MouseEvent.ROLL_OUT, rollOutHandler);
    }
    //==========================================================================
    //  Properties
    //==========================================================================
    //----------------------------------
    //  type
    //----------------------------------
    private var _type:Type;
    public function get type():Type {
      return _type;
    }
    //==========================================================================
    //  Event handlers
    //==========================================================================
    private function rollOverHandler(event:MouseEvent):void {
      scaleX = scaleY = 1.2;
    }
    private function rollOutHandler(event:MouseEvent):void {
      scaleX = scaleY = 1;
    }
  }
}
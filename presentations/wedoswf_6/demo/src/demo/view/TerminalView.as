package demo.view {
  import demo.enum.Result;
  import demo.enum.Type;
  import flash.display.MovieClip;
  import flash.display.Sprite;

  public class TerminalView extends Sprite {
    //==========================================================================
    //  Constructor
    //==========================================================================
    public function TerminalView() {
      super();
      build();
      mouseEnabled = false;
      mouseChildren = false;
    }
    //==========================================================================
    //  Variables
    //==========================================================================
    private var terminalMc:MovieClip;
    private var leftMc:MovieClip;
    private var rightMc:MovieClip;
    private var resultMc:MovieClip;
    //==========================================================================
    //  Public methods
    //==========================================================================
    public function showResult(leftType:Type, rightType:Type, result:Result):void {
      terminalMc.visible = false;
      leftMc.gotoAndStop(leftType.value);
      rightMc.gotoAndStop(rightType.value);
      resultMc.gotoAndStop(result.value);
    }
    //==========================================================================
    //  Private methods
    //==========================================================================
    private function build():void {
      var asset:Sprite = new TerminalAsset();
      addChild(asset);
      terminalMc = asset["terminalMc"];
      leftMc = asset["leftMc"];
      rightMc = asset["rightMc"];
      resultMc = asset["resultMc"];
    }
  }
}
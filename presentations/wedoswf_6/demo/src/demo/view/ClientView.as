package demo.view {
  import demo.enum.Result;
  import demo.enum.Type;

  import flash.display.MovieClip;
  import flash.display.Sprite;

  public class ClientView extends Sprite {
    //==========================================================================
    //  Constructor
    //==========================================================================
    public function ClientView() {
      super();
      build();
      mouseEnabled = false;
      mouseChildren = false;
    }
    //==========================================================================
    //  Variables
    //==========================================================================
    private var clientMc:MovieClip;
    private var leftMc:MovieClip;
    private var rightMc:MovieClip;
    //==========================================================================
    //  Public methods
    //==========================================================================
    public function showResult(leftType:Type, rightType:Type, result:Result):void {

    }
    //==========================================================================
    //  Private methods
    //==========================================================================
    private function build():void {
      var asset:Sprite = new ClientAsset();
      addChild(asset);
      clientMc = asset["clientMc"];
      leftMc = asset["leftMc"];
      rightMc = asset["rightMc"];
    }
  }
}
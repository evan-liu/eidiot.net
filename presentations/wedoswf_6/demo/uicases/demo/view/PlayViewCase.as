package demo.view {
  import flash.display.DisplayObjectContainer;
  public class PlayViewCase {
    //==========================================================================
    //  Dependencies
    //==========================================================================
    [Inject]
    public var root:DisplayObjectContainer;
    //==========================================================================
    //  Public methods
    //==========================================================================
    [Test]
    public function test():void {
      root.addChild(new PlayView());
    }
  }
}
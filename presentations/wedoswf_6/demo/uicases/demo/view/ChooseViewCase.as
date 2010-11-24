package demo.view {
  import flash.display.DisplayObjectContainer;
  public class ChooseViewCase {
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
      var instance:ChooseView = new ChooseView();
      root.addChild(instance);
      instance.x = 200;
      instance.y = 200;
    }
  }
}
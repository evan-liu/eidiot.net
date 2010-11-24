package demo.view {
  import flash.display.DisplayObjectContainer;
  public class SelectorViewCase {
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
      var instance:SelectorView = new SelectorView();
      root.addChild(instance);
      instance.x = 200;
      instance.y = 200;
    }
  }
}
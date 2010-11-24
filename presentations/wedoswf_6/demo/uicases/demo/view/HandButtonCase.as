package demo.view {
  import demo.enum.Type;
  import flash.display.DisplayObjectContainer;
  public class HandButtonCase {
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
      var typeList:Array = [Type.PAPER, Type.ROCK, Type.SCISSORS];
      var currentX:Number = 200;
      var currentY:Number = 200;
      for each (var type:Type in typeList) {
        var button:HandButton = new HandButton(type);
        root.addChild(button);
        button.x = currentX;
        button.y = currentY;
        currentX += 100;
      }
    }
  }
}
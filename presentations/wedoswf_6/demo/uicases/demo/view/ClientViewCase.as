package demo.view {
  import xface.ui.ContentContainer;
  public class ClientViewCase {
    //==========================================================================
    //  Variables
    //==========================================================================
    private var instance:ClientView;
    //==========================================================================
    //  Dependencies
    //==========================================================================
    [Inject]
    public var root:ContentContainer;
    //==========================================================================
    //  Public methods
    //==========================================================================
    [Before]
    public function setUp():void {
      instance = new ClientView();
      root.addChild(instance);
      instance.x = 100;
      instance.y = 100;
    }
    [After]
    public function tearDown():void {
      instance = null;
    }
    [Test]
    public function test():void {

    }
  }
}
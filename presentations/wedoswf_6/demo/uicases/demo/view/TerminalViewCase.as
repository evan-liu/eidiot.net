package demo.view {
  import demo.enum.Result;
  import demo.enum.Type;
  import xface.ui.ContentContainer;
  public class TerminalViewCase {
    //==========================================================================
    //  Variables
    //==========================================================================
    private var instance:TerminalView;
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
      instance = new TerminalView();
      root.addChild(instance);
      instance.x = 280;
      instance.y = 100;
    }
    [Test]
    public function idle():void {
    }
    [Test]
    public function win():void {
      instance.showResult(Type.PAPER, Type.ROCK, Result.WIN);
    }
    [Test]
    public function lost():void {
      instance.showResult(Type.PAPER, Type.SCISSORS, Result.LOSE);
    }
    [Test]
    public function draw():void {
      instance.showResult(Type.PAPER, Type.PAPER, Result.DRAW);
    }
  }
}
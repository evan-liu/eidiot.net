package demo.model {
  import demo.enum.Result;
  import demo.enum.Type;
  import org.flexunit.asserts.assertEquals;
  import org.osflash.signals.utils.SignalAsyncEvent;
  import org.osflash.signals.utils.handleSignal;
  public class ModelTest {
    //==========================================================================
    //  Variables
    //==========================================================================
    private var instance:Model;
    //==========================================================================
    //  Public methods
    //==========================================================================
    [Before]
    public function setUp():void {
      instance = new Model();
    }
    [After]
    public function tearDown():void {
      instance = null;
    }
    [Test]
    public function test_get_result():void {
      assertEquals(Result.DRAW, instance.getResult(Type.PAPER, Type.PAPER));
      assertEquals(Result.WIN, instance.getResult(Type.PAPER, Type.ROCK));
      assertEquals(Result.LOSE, instance.getResult(Type.PAPER, Type.SCISSORS));

      assertEquals(Result.DRAW, instance.getResult(Type.ROCK, Type.ROCK));
      assertEquals(Result.WIN, instance.getResult(Type.ROCK, Type.SCISSORS));
      assertEquals(Result.LOSE, instance.getResult(Type.ROCK, Type.PAPER));

      assertEquals(Result.DRAW, instance.getResult(Type.SCISSORS, Type.SCISSORS));
      assertEquals(Result.WIN, instance.getResult(Type.SCISSORS, Type.PAPER));
      assertEquals(Result.LOSE, instance.getResult(Type.SCISSORS, Type.ROCK));
    }
    [Test(async,timeout="500")]
    public function left_then_right_done():void {
      handleSignal(this, instance.bothDone, onBothDone, 500, {result:Result.WIN});
      instance.leftType = Type.PAPER;
      instance.rightType = Type.ROCK;
    }
    [Test(async,timeout="500")]
    public function right_then_left_done():void {
      handleSignal(this, instance.bothDone, onBothDone, 500, {result:Result.LOSE});
      instance.rightType = Type.PAPER;
      instance.leftType = Type.ROCK;
    }
    //==========================================================================
    //  Event handlers
    //============================================..==============================
    private function onBothDone(event:SignalAsyncEvent, passData:Object):void {
      assertEquals(instance.result, passData.result);
    }
  }
}
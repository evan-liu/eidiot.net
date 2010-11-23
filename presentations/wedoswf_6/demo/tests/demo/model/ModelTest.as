package demo.model {
  import demo.enum.Result;
  import demo.enum.Type;
  import org.flexunit.asserts.assertEquals;
  import org.osflash.signals.utils.proceedOnSignal;
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
    public function test_both_done_signal_left_first():void {
      proceedOnSignal(this, instance.bothDone);
      instance.leftType = Type.PAPER;
      instance.rightType = Type.ROCK;
    }
    [Test(async,timeout="500")]
    public function test_both_done_signal_right_first():void {
      proceedOnSignal(this, instance.bothDone);
      instance.rightType = Type.ROCK;
      instance.leftType = Type.PAPER;
    }
  }
}
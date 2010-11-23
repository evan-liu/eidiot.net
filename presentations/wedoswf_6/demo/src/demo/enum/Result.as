package demo.enum {
  public class Result {
    //==========================================================================
    //  Class constants
    //==========================================================================
    public static const WIN:Result = new Result("win");
    public static const LOSE:Result = new Result("lose");
    public static const DRAW:Result = new Result("draw");
    //==========================================================================
    //  Constructor
    //==========================================================================
    public function Result(value:String) {
      _value = value;
    }
    //==========================================================================
    //  Properties
    //==========================================================================
    //----------------------------------
    //  value
    //----------------------------------
    private var _value:String;
    public function get value():String {
      return _value;
    }
    //==========================================================================
    //  Public methods
    //==========================================================================
    public function toString():String {
      return "[GameResult " + _value + "]";
    }
  }
}
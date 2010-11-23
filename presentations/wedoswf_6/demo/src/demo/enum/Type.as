package demo.enum {
  public class Type {
    //==========================================================================
    //  Class constants
    //==========================================================================
    public static const SCISSORS:Type = new Type("scissors");
    public static const ROCK:Type = new Type("rock");
    public static const PAPER:Type = new Type("paper");
    //==========================================================================
    //  Constructor
    //==========================================================================
    public function Type(value:String) {
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
      return "[HandValue " + _value + "]";
    }
  }
}
package demo.model {
  import demo.enum.Result;
  import demo.enum.Type;

  import org.osflash.signals.Signal;

  import flash.utils.Dictionary;
  public class Model implements IModel {
    //==========================================================================
    //  Class constants
    //==========================================================================
    private static const WIN_MAP:Dictionary = getWinMap();
    //==========================================================================
    //  Class private methods
    //==========================================================================
    private static function getWinMap():Dictionary {
      var map:Dictionary = new Dictionary();
      map[Type.PAPER] = Type.ROCK;
      map[Type.ROCK] = Type.SCISSORS;
      map[Type.SCISSORS] = Type.PAPER;
      return map;
    }
    //==========================================================================
    //  Signals
    //==========================================================================
    //----------------------------------
    //  bothDone
    //----------------------------------
    private var _bothDone:Signal = new Signal();
    public function get bothDone():Signal {
      return _bothDone;
    }
    //==========================================================================
    //  Properties
    //==========================================================================
    //----------------------------------
    //  leftType
    //----------------------------------
    private var _leftType:Type;
    public function get leftType():Type {
      return _leftType;
    }
    public function set leftType(value:Type):void {
      _leftType = value;
      if (_rightType) {
        _result = getResult(leftType, rightType);
        _bothDone.dispatch();
      }
    }
    //----------------------------------
    //  rightType
    //----------------------------------
    private var _rightType:Type;
    public function get rightType():Type {
      return _rightType;
    }
    public function set rightType(value:Type):void {
      _rightType = value;
      if (_leftType) {
        _result = getResult(leftType, rightType);
        _bothDone.dispatch();
      }
    }
    //----------------------------------
    //  result
    //----------------------------------
    private var _result:Result;
    public function get result():Result {
      return _result;
    }
    //==========================================================================
    //  Public methods
    //==========================================================================
    public function getResult(leftType:Type, rightType:Type):Result {
      if (leftType == rightType) {
        return Result.DRAW;
      }
      return WIN_MAP[leftType] == rightType ? Result.WIN : Result.LOSE;
    }
  }
}
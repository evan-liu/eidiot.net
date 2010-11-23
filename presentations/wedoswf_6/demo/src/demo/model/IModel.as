package demo.model {
  import demo.enum.Result;
  import demo.enum.Type;
  import org.osflash.signals.Signal;
  public interface IModel {
    //==========================================================================
    //  Signals
    //==========================================================================
    function get bothDone():Signal;
    //==========================================================================
    //  Properties
    //==========================================================================
    function get leftType():Type;
    function set leftType(value:Type):void;
    function get rightType():Type;
    function set rightType(value:Type):void;
    function get result():Result;
  }
}
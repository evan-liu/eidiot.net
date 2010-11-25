package demo.utils {
  public class ArrayUtil {
    public static function randomElement(source:Array):* {
      //==========================================================================
      //  Class public methods
      //==========================================================================
      var index:int = int(Math.random() * source.length);
      return source[index];
    }
  }
}
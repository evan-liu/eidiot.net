package demo.utils {
  public class ArrayUtil {
    public static function randomElement(source:Array):* {
      var index:int = int(Math.random() * source.length);
      return source[index];
    }
  }
}
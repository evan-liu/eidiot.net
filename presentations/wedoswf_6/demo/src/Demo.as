package {
  import demo.DemoContext;
  import flash.display.Sprite;
  public class Demo extends Sprite {
    //==========================================================================
    //  Constructor
    //==========================================================================
    public function Demo() {
      context = new DemoContext(this);
    }
    //==========================================================================
    //  Variables
    //==========================================================================
    private var context:DemoContext;
  }
}
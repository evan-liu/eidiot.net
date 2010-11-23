package {
  import org.flexunit.internals.TraceListener;
  import org.flexunit.listeners.TextListener;
  import org.flexunit.runner.FlexUnitCore;
  [SWF(width="800", height="600", backgroundColor="0x000000", frameRate="30")]
  public class DemoTestRunner extends TextListener {
    public function DemoTestRunner() {
      super();
      var flexunit:FlexUnitCore = new FlexUnitCore();
      flexunit.addListener(new TraceListener());
      flexunit.addListener(this);
      flexunit.run(DemoAllTests);
    }
  }
}
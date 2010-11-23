package {
  import xface.ui.TreeRunnerUI;
  [SWF(width="700", height="400", backgroundColor="0xFFFFFF", frameRate="30")]
  public class DemoUIDemoRunner extends TreeRunnerUI {
    public function DemoUIDemoRunner() {
    	super();
    	run(DemoAllUICases);
    }
  }
}
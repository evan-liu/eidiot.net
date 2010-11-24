package demo.view {
  import flash.display.Sprite;
  public class PlayView extends Sprite {
    //==========================================================================
    //  Constructor
    //==========================================================================
    public function PlayView() {
      super();
      build();
    }
    //==========================================================================
    //  Properties
    //==========================================================================
    public const terminal:TerminalView = new TerminalView();
    public const selector:SelectorView = new SelectorView();
    //==========================================================================
    //  Private methods
    //==========================================================================
    private function build():void {
      addChild(terminal);
      addChild(selector);

      terminal.x = 280;
      terminal.y = 100;
      selector.x = 180;
      selector.y = 290;
    }
  }
}
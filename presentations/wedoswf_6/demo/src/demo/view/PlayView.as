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
    //  Private methods
    //==========================================================================
    private function build():void {
      var terminal:TerminalView = new TerminalView();
      addChild(terminal);

      var selector:SelectorView = new SelectorView();
      addChild(selector);

      terminal.x = 280;
      terminal.y = 100;

      selector.x = 180;
      selector.y = 290;
    }
  }
}
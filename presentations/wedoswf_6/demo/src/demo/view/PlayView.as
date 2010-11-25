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

      terminal.x = 275;
      terminal.y = 75;

      selector.x = 150;
      selector.y = 335;
    }
  }
}
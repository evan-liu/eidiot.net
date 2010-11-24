package {
  import demo.view.PlayViewCase;
  import demo.view.TerminalViewCase;
  import demo.view.SelectorViewCase;
  import demo.view.HandButtonCase;
  [Suite]
  public class DemoAllUICases {
    public static function suite():Array {
      return [
        PlayViewCase, 
        TerminalViewCase, 
        SelectorViewCase,
        HandButtonCase,
      ];
    }
  }
}
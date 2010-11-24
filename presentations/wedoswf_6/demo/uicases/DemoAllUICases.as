package {
  import demo.view.ClientViewCase;
  import demo.view.ChooseViewCase;
  import demo.view.HandButtonCase;
  [Suite]
  public class DemoAllUICases {
    public static function suite():Array {
      return [
        ClientViewCase, 
        ChooseViewCase,
        HandButtonCase,
      ];
    }
  }
}
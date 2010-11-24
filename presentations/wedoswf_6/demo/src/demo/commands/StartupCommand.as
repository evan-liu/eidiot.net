package demo.commands {
  import demo.enum.Type;
  import demo.utils.ArrayUtil;
  import demo.model.IModel;
  public class StartupCommand {
    //==========================================================================
    //  Dependencies
    //==========================================================================
    [Inject]
    public var model:IModel;
    //==========================================================================
    //  Public methods
    //==========================================================================
    public function execute():void {
      model.rightType = ArrayUtil.randomElement([Type.PAPER, Type.ROCK, Type.SCISSORS]);
    }
  }
}
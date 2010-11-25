package demo.commands {
  import demo.enum.Type;
  import demo.model.IModel;
  import demo.utils.ArrayUtil;
  import demo.view.PlayView;

  import flash.display.DisplayObjectContainer;
  public class StartPlayCommand {
    //==========================================================================
    //  Dependencies
    //==========================================================================
    [Inject]
    public var model:IModel;
    [Inject]
    public var contextView:DisplayObjectContainer;
    //==========================================================================
    //  Public methods
    //==========================================================================
    public function execute():void {

      contextView.addChild(new PlayView());

      model.rightType = ArrayUtil.randomElement([Type.PAPER, Type.ROCK, Type.SCISSORS]);
    }
  }
}
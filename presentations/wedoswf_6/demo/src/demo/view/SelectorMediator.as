package demo.view {
  import demo.model.IModel;

  import org.robotlegs.mvcs.Mediator;

  import flash.events.MouseEvent;
  public class SelectorMediator extends Mediator {
    //==========================================================================
    //  Dependencies
    //==========================================================================
    [Inject]
    public var model:IModel;
    //==========================================================================
    //  Overridden methods
    //==========================================================================
    override public function onRegister():void {
      addViewListener(MouseEvent.CLICK, clickHandler);
    }
    //==========================================================================
    //  Event handlers
    //==========================================================================
    private function clickHandler(event:MouseEvent):void {
      var button:HandButton = event.target as HandButton;
      if (button) {
        model.leftType = button.type;
      }
    }
  }
}
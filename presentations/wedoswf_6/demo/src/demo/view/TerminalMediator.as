package demo.view {
  import demo.model.IModel;
  import org.robotlegs.mvcs.Mediator;
  public class TerminalMediator extends Mediator {
  	//==========================================================================
  	//  Dependencies
  	//==========================================================================
  	[Inject]
  	public var view:TerminalView;
  	[Inject]
  	public var model:IModel;
  	//==========================================================================
  	//  Overridden methods
  	//==========================================================================
    override public function onRegister():void {
    	model.bothDone.addOnce(onBothDone);
    }
    //==========================================================================
    //  Callbacks
    //==========================================================================
    private function onBothDone():void {
    	view.showResult(model.leftType, model.rightType, model.result);
    }
  }
}
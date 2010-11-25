package demo {
  import demo.commands.StartPlayCommand;
  import demo.model.IModel;
  import demo.model.Model;
  import demo.view.SelectorMediator;
  import demo.view.SelectorView;
  import demo.view.TerminalMediator;
  import demo.view.TerminalView;

  import org.robotlegs.base.ContextEvent;
  import org.robotlegs.mvcs.Context;

  import flash.display.DisplayObjectContainer;
  public class DemoContext extends Context {
    //==========================================================================
    //  Constructor
    //==========================================================================
    public function DemoContext(contextView:DisplayObjectContainer) {
      super(contextView);
    }
    //==========================================================================
    //  Overridden methods
    //==========================================================================
    override public function startup():void {

      injector.mapSingletonOf(IModel, Model);

      mediatorMap.mapView(SelectorView, SelectorMediator);
      mediatorMap.mapView(TerminalView, TerminalMediator);

      commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartPlayCommand);

      dispatchEvent(new ContextEvent(ContextEvent.STARTUP_COMPLETE));
    }
  }
}
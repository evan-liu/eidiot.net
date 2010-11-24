package demo {
  import demo.model.IModel;
  import demo.model.Model;
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
    }
  }
}
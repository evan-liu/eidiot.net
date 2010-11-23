package demo {
  import demo.model.IModel;
  import demo.model.Model;
  import org.robotlegs.mvcs.Context;
  public class DemoContext extends Context {
    //==========================================================================
    //  Overridden methods
    //==========================================================================
    override public function startup():void {
      injector.mapSingletonOf(IModel, Model);
    }
  }
}
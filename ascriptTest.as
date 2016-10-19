package
{
	import com.bulkLoader.BulkLoader;
	import com.bulkLoader.BulkProgressEvent;
	
	import flash.display.Sprite;
	
	import parser.Script;
	
	public class ascriptTest extends Sprite
	{

		private var loader:BulkLoader;
		public function ascriptTest()
		{
			Script.init(this);
			
			loader = new BulkLoader("main");
			loader.add("txt/A.js");
			loader.addEventListener(BulkProgressEvent.COMPLETE,onTxtReady);
			loader.start();
		}
		
		protected function onTxtReady(e:BulkProgressEvent):void
		{
			var js:String = loader.getText("txt/A.js");
			trace(js);
			Script.LoadFromString(js);
			var a = Script.New("A");
			var ob = a.getOb();
			
			trace(ob.f());
//			Script.execute("var a:A = new A();  var b:String = a.getB();  trace(3);");
			trace(ob.f);
		}

	}
}
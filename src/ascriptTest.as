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
			Script.LoadFromString(js);
			Script.execute("var a:A = new A();  trace(a.getB().f());");
			
			trace("\n");
			trace("第二种调用方式(建议):");
			var a:* = Script.New("A");
			var b:* = a.getB();
			trace(b.f());
		}

	}
}
package
{
	import com.bulkLoader.BulkLoader;
	import com.bulkLoader.BulkProgressEvent;
	
	import flash.display.Sprite;
	
	import parser.Script;
	
	public class ascriptTest extends Sprite
	{
		private static var n:String = "测试"; 
		private var loader:BulkLoader;
		public function ascriptTest()
		{
			var arr:Array = [CCC];
			Script.init(this);
			
			loader = new BulkLoader("main");
			loader.add("txt/B.js");
			loader.addEventListener(BulkProgressEvent.COMPLETE,onTxtReady);
			loader.start();
		}
		
		protected function onTxtReady(e:BulkProgressEvent):void
		{
			//var jsA:String = loader.getText("txt/A.js");
			//Script.LoadFromString(jsA);
			
			var jsB:String = loader.getText("txt/B.js");
			Script.LoadFromString(jsB);
			Script.execute("var b = new B(); trace( b.getOB().k() );");
			//var a:* = Script.New("A");
		}

	}
}
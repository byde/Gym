
import flash.display.BitmapData;
import flash.geom.Rectangle;
import flash.geom.ColorTransform;
import flash.geom.Matrix;

/**
 * Little and simple print flash screen class
 */
class PrintScreen {

    public var addListener:Function
    public var broadcastMessage:Function

    private var id:   Number;
    public  var record:LoadVars;

    function PrintScreen(){
        AsBroadcaster.initialize( this );
    }

    public function print(mc:MovieClip, x:Number, y:Number, w:Number, h:Number){
        broadcastMessage("onStart", mc);
        if(x == undefined) x = 0;
        if(y == undefined) y = 0;
        if(w == undefined) w = mc._width;
        if(h == undefined) h = mc._height;
        var bmp:BitmapData = new BitmapData(w, h, false);
        record = new LoadVars();
        record.width  = w
        record.height = h
        record.cols   = 0
        record.rows   = 0
        var matrix = new Matrix();
        matrix.translate(-x, -y)
        bmp.draw(mc, matrix, new ColorTransform(), 1, new Rectangle(0, 0, w, h));
        id = setInterval(copysource, 5, this, mc, bmp);
    }

    private function copysource(scope, movie, bit){
        var pixel:Number
        var str_pixel:String
        scope.record["px" + scope.record.rows] = new Array();
        for(var a = 0; a < bit.width; a++){
            pixel     = bit.getPixel(a, scope.record.rows)
            str_pixel = pixel.toString(16)
            if(pixel == 0xFFFFFF) str_pixel = "";   // don't send blank pixel
            scope.record["px" + scope.record.rows].push(str_pixel)
        }
        scope.broadcastMessage("onProgress", movie, scope.record.rows, bit.height)  // send back the progress status
        scope.record.rows += 1
        if(scope.record.rows >= bit.height){
            clearInterval(scope.id)
            scope.broadcastMessage("onComplete", movie, scope.record)   // completed!
            bit.dispose();
        }
    }
}

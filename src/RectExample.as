package
{

    import emitters.DriftStarsEmitter;

    import flash.events.Event;
    import flash.events.MouseEvent;
    import flash.geom.Point;
    import flash.geom.Rectangle;

    import org.flintparticles.common.displayObjects.RadialDot;
    import org.flintparticles.common.displayObjects.Rect;
    import org.flintparticles.common.initializers.ImageClass;
    import org.flintparticles.common.renderers.SpriteRendererBase;
    import org.flintparticles.twoD.renderers.BitmapRenderer;

    [SWF(backgroundColor=0x000000, width=620, height=400)]

    /**
     * @author Alexey Kolonitsky
     */
    public class RectExample extends ExampleBase
    {
        private var emitter:DriftStarsEmitter;
        private var renderer:SpriteRendererBase;

        public function RectExample()
        {
            super();
        }

        override protected function addedToStageHandler(event:Event):void
        {
            super.addedToStageHandler(event);

            var start:Point = new Point(10, stage.stageHeight / 2);
            var canvas:Rectangle = new Rectangle(0, 0, stage.stageWidth, stage.stageHeight);
            drawQueue.push(start);
            drawQueue.push(canvas);

            emitter = new DriftStarsEmitter(start, canvas, new ImageClass(Rect, [3, 6], true));
            renderer = new BitmapRenderer(canvas, false);
            addChild( renderer );
            renderer.addEmitter( emitter );
        }

        override protected function stage_clickHandler(event:MouseEvent):void
        {
            super.stage_clickHandler(event);

            if (emitter.running)
                emitter.pause();
            else
                emitter.start();
        }
    }
}

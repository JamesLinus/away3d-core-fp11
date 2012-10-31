package away3d.animators.nodes
{
	import away3d.animators.data.AnimationRegisterCache;
	import away3d.animators.data.ParticleAnimationSetting;
	import away3d.core.base.IRenderable;
	import away3d.core.managers.Stage3DProxy;
	import away3d.materials.passes.MaterialPassBase;

	/**
	 * ...
	 * @author ...
	 */
	public class ParticleNodeBase extends AnimationNodeBase
	{
		public static const GLOBAL:int = 0;
		public static const LOCAL:int = 1;
		
		private var _nodeType:int;
		private var _priority:int;
		protected var _nodeName:String;
		
		protected var _dataLenght:uint = 3;
				
		public function ParticleNodeBase(name:String,type:int,priority:int)
		{
			_nodeType = type;
			_priority = priority;
			_nodeName = name;
		}
		
		public function get nodeName():String
		{
			return _nodeName;
		}
		
		public function get nodeType():int
		{
			return _nodeType;
		}
		
		public function get priority():int
		{
			return _priority;
		}
		
		public function processAnimationSetting(setting:ParticleAnimationSetting):void
		{
			
		}
		
		public function getAGALVertexCode(pass:MaterialPassBase, sharedSetting:ParticleAnimationSetting, animationRegisterCache:AnimationRegisterCache) : String
		{
			return "";
		}
		
		public function getAGALFragmentCode(pass:MaterialPassBase, sharedSetting:ParticleAnimationSetting, animationRegisterCache:AnimationRegisterCache) : String
		{
			return "";
		}
		
		public function getAGALUVCode(pass:MaterialPassBase, sharedSetting:ParticleAnimationSetting, animationRegisterCache:AnimationRegisterCache):String
		{
			return "";
		}
		
		public function setRenderState(stage3DProxy : Stage3DProxy, renderable : IRenderable) : void
		{
			
		}
		
		
		public function get dataLength():int
		{
			return this._dataLenght;
		}
		
	}

}
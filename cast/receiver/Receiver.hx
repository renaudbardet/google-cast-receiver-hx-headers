package cast.receiver;

@:native("cast.receiver")
extern class Receiver
{

	/** Version of the cast SDK. */
	public static inline var VERSION:String;

	/** The Cast receiver logger object. */
	public static var logger:{
		/** Sets the log verbosity level. */
		function setLevelValue(cast.receiver.LoggerLevel):Void;
	}

	/**  */
	public static inline var media:{
		/** The media namespace. */
		inline var MEDIA_NAMESPACE:String;
	}

}
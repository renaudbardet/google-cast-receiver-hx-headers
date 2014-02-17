package cast.receiver;

/** Handles cast messages for a specific sender and namespace
  * (it is a point to point communications channel).
  * It should be used when the application wants to have a virtual connection
  * with a single sender for a specific protocol (namespace),
  * similar to a virtual websocket.
  * Applications should never create CastChannels, they should only be obtained
  * from the corresponding CastMessageBus calling the getCastChannel method.
  * Extends goog.events.EventTarget. Implements EventTarget.
  */
extern class CastChannel {
	/** Event handler for {code cast.receiver.CastChannel} close event. */
	public dynamic function onClose:Event->Void;
	/** Event handler for cast.receiver.CastMessageBus message event. */
	public dynamic function onMessage:Event->Void;
	/**  */
	public function getNamespace():String;
	/**  */
	public function getSenderId():String;
	/** Sends a message to the sender associated with this CastChannel. */
	public function send(message:String):Void;
}

/** System events dispatched by cast.receiver.CastChannel. */
extern class Event {
	public var message:Dynamic;
	public function new(type:String, message:Dynamic);
}

/**  */
@:fakeEnum(Int)
extern enum EventType {
	/** Fired when there is a new message. */
	CLOSE;
	/** Fired when the sender associated with this cast channel has disconnected. */
	MESSAGE;
}
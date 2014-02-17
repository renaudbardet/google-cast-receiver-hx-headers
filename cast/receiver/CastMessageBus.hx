package cast.receiver;

/** Handles cast messages for a specific namespace.
  * Applications should never create a CastMessageBus,
  * they should only be obtained from the cast.receiver.CastReceiverManager instance.
  * Extends goog.events.EventTarget. Implements EventTarget.
  */
extern class CastMessageBus {
	/** Deserializes a serialized message. */
	public dynamic function deserializeMessage(String):Dynamic;
	/** Serializes a deserialized message. */
	public dynamic function serializeMessage(Dynamic):String;
	/** Event handler for cast.receiver.CastMessageBus message event. */
	public dynamic function onMessage(Event):Void;
	/** The namespace of the messages processed by this CastMessageBus */
	public function getNamespace():String;
	/** The type of messages processed by this CastMessageBus. */
	public function getMessageType():MessageType;
	/** Sends a message to a specific sender. */
	public function send(senderId:String, message:Dynamic):Void;
	/** Sends a message to all the senders connected. */
	public function broadcast(message:Dynamic):Void;
	/** Provides a {cast.receiver.CastChannel} for a specific senderId. */
	public function getCastChannel(senderId:String):CastChannel;
}

/** Events dispatched by cast.receiver.CastMessageBus. */
@:fakeEnum(Int)
extern enum EventType {
	/** Fired when there is a message. */
	MESSAGE;
}

/** Message types used by cast.receiver.CastMessageBus. */
@:fakeEnum(Int)
extern enum MessageType {
	/** Messages are strings. */
	STRING;
	/** Messages are JSON-encoded. */
	JSON;
	/** Messages are CUSTOM-encoded.
	  * The application must implement CastMessageBus.serializeMessage and CastMessageBus.deserializeMessage
	  */
	CUSTOM;
}
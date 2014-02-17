package cast.receiver.media;

/** Represents the media information. */
extern class MediaInformation {
	/** Typically the url of the media. */
	public var contentId:String;
	/** The stream type. */
	public var contentType:String;
	/** Application-specific media information. */
	public var customData:Dynamic;
	/** The media duration. */
	public var duration:Float;
	/** The media metadata. */
	public var metadata:Dynamic
	/** The stream type. */
	public var streamType:cast.receiver.media.StreamType;
	public function new();
}
package googlecast.receiver.media;

/** Represents the status of a media session. */
@:native("cast.receiver.media.MediaStatus")
extern class MediaStatus {
	/** The current playback position. */
	public var currentTime:Float;
	/** Application-specific media status. */
	public var customData:Dynamic;
	/** If the state is IDLE, the reason the player went to IDLE state. */
	public var idleReason:cast.receiver.media.IdleReason;
	/** The media information. */
	public var media:cast.receiver.media.MediaInformation;
	/** Unique id for the session. */
	public var mediaSessionId:Float;
	/** The playback rate. */
	public var playbackRate:Float;
	/** The playback state. */
	public var playerState:cast.receiver.media.PlayerState;
	/** The commands supported by this player. */
	public var supportedMediaCommands:Float;
	/** The current stream volume. */
	public var volume:cast.receiver.media.Volume;
	public function new();
}
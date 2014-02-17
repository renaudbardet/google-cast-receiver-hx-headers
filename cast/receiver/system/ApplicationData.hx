package cast.receiver.system;
/** Represents the data of the launched application. */
extern class ApplicationData {
	/** The application Id. */
	public var id:String;
	/** The id of the sender that launched the application. */
	public var launchingSenderId:String;
	/** The application name. */
	public var name:String;
	/** The namespaces used by the application. */
	public var namespaces:Array<String>;
	/** The session Id. */
	public var sessionId:Int;
	public function new();
}
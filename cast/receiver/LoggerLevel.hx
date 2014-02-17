package cast.receiver;
@:fakeEnum(Int)
extern enum LoggerLevel {
	/** Debug logging (all messages). */
	DEBUG;
	/** Error logging (errors). */
	ERROR;
	/** Info logging (events, general logs). */
	INFO;
	/** No logging. */
	NONE;
	/** Verbose logging (sender messages). */
	VERBOSE;
}
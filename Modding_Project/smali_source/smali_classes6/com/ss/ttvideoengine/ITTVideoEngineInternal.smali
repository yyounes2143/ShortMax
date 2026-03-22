.class public interface abstract Lcom/ss/ttvideoengine/ITTVideoEngineInternal;
.super Ljava/lang/Object;
.source "ITTVideoEngineInternal.java"


# static fields
.field public static final CODEC_TYPE_H264:Ljava/lang/String; = "h264"

.field public static final CODEC_TYPE_h265:Ljava/lang/String; = "h265"

.field public static final CODEC_TYPE_h266:Ljava/lang/String; = "h266"

.field public static final ENGINE_STATE_ERROR:I = 0x4

.field public static final ENGINE_STATE_FETCHING_INFO:I = 0x1

.field public static final ENGINE_STATE_PARSING_DNS:I = 0x2

.field public static final ENGINE_STATE_PLAYER_RUNNING:I = 0x3

.field public static final ENGINE_STATE_RELEASE:I = 0x5

.field public static final ENGINE_STATE_UNKNOWN:I = 0x0

.field public static final KEY_IS_CONFIG_PARAMS_OPTION:I = 0x64

.field public static final LOAD_STATE_ERROR:I = 0x3

.field public static final LOAD_STATE_PLAYABLE:I = 0x1

.field public static final LOAD_STATE_STALLED:I = 0x2

.field public static final LOAD_STATE_UNKNOWN:I = 0x0

.field public static final PLAYBACK_STATE_ERROR:I = 0x3

.field public static final PLAYBACK_STATE_PAUSED:I = 0x2

.field public static final PLAYBACK_STATE_PLAYING:I = 0x1

.field public static final PLAYBACK_STATE_STOPPED:I = 0x0

.field public static final PLAYER_DECODER_BUFFERING:I = 0x1

.field public static final PLAYER_DEGRADE_MODE_LITE:I = 0x0

.field public static final PLAYER_DEGRADE_MODE_OS:I = 0x1

.field public static final PLAYER_MAX_ACCUMULATED_COUNT:I = 0x1e

.field public static final PLAYER_NET_BUFFERING:I = 0x0

.field public static final PLAYER_OPTION_CLEAN_WHEN_STOP:I = 0x1b

.field public static final PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME:I = 0x154

.field public static final PLAYER_OPTION_ENABEL_HARDWARE_DECODE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PLAYER_OPTION_ENABLE_HARDWARE_DECODE:I = 0x7

.field public static final PLAYER_OPTION_ENABLE_SEND_EVENT:I = 0xce

.field public static final PLAYER_OPTION_ENABLE_START_AUTOMATICALLY:I = 0x64

.field public static final PLAYER_OPTION_EXO_ALLOW_MEDIACODECHELPER:I = 0x138d

.field public static final PLAYER_OPTION_EXO_CODEC_ASYNC_INIT_ENABLE:I = 0x138c

.field public static final PLAYER_OPTION_EXO_CODEC_REUSABLE:I = 0x138b

.field public static final PLAYER_OPTION_EXO_CONSECUTIVE_FAIL_NUM:I = 0x138a

.field public static final PLAYER_OPTION_EXO_ENABLE_NATIVE_MDL:I = 0x1392

.field public static final PLAYER_OPTION_EXO_LOADCONTROL_PARAMETERS:I = 0x1388

.field public static final PLAYER_OPTION_EXO_RENDER_READY_MS:I = 0x1389

.field public static final PLAYER_OPTION_FALLBACK_EXO_FIRST:I = 0x55

.field public static final PLAYER_OPTION_FORBID_OS_PLAYER:I = 0x3

.field public static final PLAYER_OPTION_GET_AUDIO_CODEC_ID:I = 0x2e

.field public static final PLAYER_OPTION_GET_AUDIO_CODEC_TYPE:I = 0x2c

.field public static final PLAYER_OPTION_GET_BUFFERING_TYPE:I = 0x36

.field public static final PLAYER_OPTION_GET_CURRENT_PLAYBACK_TIME:I = 0x34

.field public static final PLAYER_OPTION_GET_CURRENT_VOLUME:I = 0x31

.field public static final PLAYER_OPTION_GET_DURATION:I = 0x32

.field public static final PLAYER_OPTION_GET_ENGINE_STATE:I = 0x39

.field public static final PLAYER_OPTION_GET_LOADED_PROGRESS:I = 0x33

.field public static final PLAYER_OPTION_GET_LOADED_STATE:I = 0x38

.field public static final PLAYER_OPTION_GET_MAX_VOLUME:I = 0x30

.field public static final PLAYER_OPTION_GET_PLAYBACK_STATE:I = 0x37

.field public static final PLAYER_OPTION_GET_PLAYER_TYPE:I = 0x2f

.field public static final PLAYER_OPTION_GET_VIDEO_CODEC_ID:I = 0x2d

.field public static final PLAYER_OPTION_GET_VIDEO_CODEC_TYPE:I = 0x2b

.field public static final PLAYER_OPTION_GET_WATCHED_DURATION:I = 0x35

.field public static final PLAYER_OPTION_GET_WATCHED_DUTATION:I = 0x35
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PLAYER_OPTION_OVERLAY_TOKEN_URL:I = 0x56

.field public static final PLAYER_OPTION_OVERLAY_TYPE:I = 0x57

.field public static final PLAYER_OPTION_RADIO_MODE:I = 0x1e0

.field public static final PLAYER_OPTION_SET_MAX_ACCUMULATED_COUNT:I = 0x1c

.field public static final PLAYER_OPTION_SET_TRACK_VOLUME:I = 0x19f

.field public static final PLAYER_OPTION_THROW_CRASH:I = 0x75

.field public static final PLAYER_TYPE_EXO:I = 0x5

.field public static final PLAYER_TYPE_IP:I = 0x1

.field public static final PLAYER_TYPE_IP_LITE:I = 0x4

.field public static final PLAYER_TYPE_OS:I = 0x2

.field public static final PLAYER_TYPE_OWN:I = 0x0

.field public static final PLAYER_TYPE_OWN_LITE:I = 0x3

.field public static final PLAY_CODEC_NAME_AN_HW:I = 0x2

.field public static final PLAY_CODEC_NAME_AVC:I = 0x4

.field public static final PLAY_CODEC_NAME_CPPh265:I = 0x8

.field public static final PLAY_CODEC_NAME_CPPh266:I = 0x9

.field public static final PLAY_CODEC_NAME_FFVIDEO:I = 0x3

.field public static final PLAY_CODEC_NAME_IOS_HW:I = 0x1

.field public static final PLAY_CODEC_NAME_JX:I = 0x6

.field public static final PLAY_CODEC_NAME_KSC:I = 0x5

.field public static final PLAY_CODEC_NAME_h266:I = 0x7

.field public static final SOURCE_TYPE_DIRECT_URL:I = 0x1

.field public static final SOURCE_TYPE_FEED:I = 0x4

.field public static final SOURCE_TYPE_FILEDESCRIPTOR:I = 0x6

.field public static final SOURCE_TYPE_LOCAL_URL:I = 0x0

.field public static final SOURCE_TYPE_MEDIADATASOURCE:I = 0x7

.field public static final SOURCE_TYPE_PLAYITEM:I = 0x2

.field public static final SOURCE_TYPE_PRELOADITEM:I = 0x3

.field public static final SOURCE_TYPE_SMARTURL:I = 0x8

.field public static final SOURCE_TYPE_UNKNOWN:I = -0x1

.field public static final SOURCE_TYPE_VID:I = 0x5


# virtual methods
.method public abstract getBufferingType()I
.end method

.method public abstract getCurrentPlaybackTime()I
.end method

.method public abstract getCurrentPlaybackTimeAsync()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getFloatOption(I)F
.end method

.method public abstract getIntOption(I)I
.end method

.method public abstract getLoadState()I
.end method

.method public abstract getLoadedProgress()I
.end method

.method public abstract getLongOption(I)J
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract getStringOption(I)Ljava/lang/String;
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract getVolume()F
.end method

.method public abstract getWatchedDuration()I
.end method

.method public abstract initEngine(Landroid/content/Context;I)V
.end method

.method public abstract isLooping()Z
.end method

.method public abstract isMute()Z
.end method

.method public abstract isOSPlayer()Z
.end method

.method public abstract isPlayerType(I)Z
.end method

.method public abstract isShouldPlay()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

.method public abstract releaseAsync()V
.end method

.method public abstract resetEngine()V
.end method

.method public abstract seekTo(ILcom/ss/ttvideoengine/SeekCompletionListener;)V
.end method

.method public abstract setAsyncInit(ZI)V
.end method

.method public abstract setDirectURL(Ljava/lang/String;)V
.end method

.method public abstract setFloatOption(IF)V
.end method

.method public abstract setIntOption(II)V
.end method

.method public abstract setIsMute(Z)V
.end method

.method public abstract setLocalURL(Ljava/lang/String;)V
.end method

.method public abstract setLongOption(IJ)V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V
.end method

.method public abstract setStringOption(ILjava/lang/String;)V
.end method

.method public abstract setSubTag(Ljava/lang/String;)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setSurfaceHolder(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setTag(Ljava/lang/String;)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

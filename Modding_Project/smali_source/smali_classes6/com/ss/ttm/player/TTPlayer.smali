.class public Lcom/ss/ttm/player/TTPlayer;
.super Ljava/lang/Object;
.source "TTPlayer.java"


# annotations
.annotation build Lcom/ss/ttm/player/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttm/player/TTPlayer$DefaultLibraryLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TTPlayerJava"

.field private static mAppPath:Ljava/lang/String; = null

.field private static mCachePath:Ljava/lang/String; = null

.field private static mCrashPath:Ljava/lang/String; = null

.field private static mDebugLibLoader:Lcom/ss/ttm/player/ILibraryLoader; = null

.field private static mIsIPCPlayer:Z = false

.field private static mSetLibraryLoader:Z = false

.field private static mSupportSampleRateNB:I

.field private static mSupportSampleRates:[I

.field private static playerLibName:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrameMetadataListener:Lcom/ss/ttm/player/FrameMetadataListener;

.field private mHandle:J

.field private mId:J

.field private mMediaDataSource:J
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field private mNotifyer:Lcom/ss/ttm/player/IPlayerNotifyer;

.field private mScreenshotListener:Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;

.field private mStrategyParamsTransport:Lcom/ss/ttm/player/StrategyParamsTransport;

.field private mTracker:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ss/ttm/player/TTPlayer$DefaultLibraryLoader;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/ss/ttm/player/TTPlayer$DefaultLibraryLoader;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/ss/ttm/player/TTPlayer;->mDebugLibLoader:Lcom/ss/ttm/player/ILibraryLoader;

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    sput-object v0, Lcom/ss/ttm/player/TTPlayer;->playerLibName:Ljava/lang/String;

    .line 12
    .line 13
    const-class v0, Lcom/ss/ttm/player/TTPlayer;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerLibLoader;->loadLibrary()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerLibLoader;->getPlayerLibName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sput-object v1, Lcom/ss/ttm/player/TTPlayer;->playerLibName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    :try_start_1
    invoke-static {}, Lcom/ss/ttm/player/TTPlayer;->detectAudioFormat()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_2
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerLibLoader;->getErrorInfo()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1

    .line 45
    :cond_0
    throw v1

    .line 46
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;JII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttm/player/TTPlayer;->mTracker:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayer;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ss/ttm/player/TTPlayer;->create(JII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static final native _close(J)V
.end method

.method private final native _create(Landroid/content/Context;IIILjava/lang/String;)J
.end method

.method private static final native _getAppPath()Ljava/lang/String;
.end method

.method private static final native _getCurrentPosition(J)I
.end method

.method private static final native _getDemuxerFactory(I)J
.end method

.method private static final native _getDoubleValue(JID)D
.end method

.method private static final native _getDuration(J)I
.end method

.method private static final native _getFloatValue(JIF)F
.end method

.method private static final native _getIntValue(JII)I
.end method

.method private static final native _getJObjectValue(JI)Ljava/lang/Object;
.end method

.method private static final native _getLongValue(JIJ)J
.end method

.method private static final native _getStreamInfo(J)[Ljava/lang/Object;
.end method

.method private static final native _getStringValue(JI)Ljava/lang/String;
.end method

.method private static final native _getSubtitleContent(JI)Ljava/lang/String;
.end method

.method private static final native _getVideoHeight(J)I
.end method

.method private static final native _getVideoWidth(J)I
.end method

.method private static final native _isLooping(J)I
.end method

.method private static final native _isPlaying(J)I
.end method

.method private static final native _mouseEvent(JIII)V
.end method

.method private static final native _pause(J)I
.end method

.method private static final native _prepare(J)I
.end method

.method private static final native _prevClose(J)V
.end method

.method private static final native _registerNativeMdl(J)I
.end method

.method private static final native _registerPlayerInfo()V
.end method

.method private static final native _release(J)V
.end method

.method private static final native _reset(J)I
.end method

.method private static final native _rotateCamera(JFF)V
.end method

.method private static final native _seek(JI)I
.end method

.method private static final native _seek2(JII)I
.end method

.method private static final native _setABRStrategy(JLcom/ss/ttm/player/ABRStrategy;)V
.end method

.method private static final native _setAIBarrageInfo(JLcom/ss/ttm/player/MaskInfo;)V
.end method

.method private static final native _setAudioProcessor(JLcom/ss/ttm/player/AudioProcessor;)V
.end method

.method private static final native _setDataSource(JLcom/ss/ttm/player/IMediaDataSource;)V
.end method

.method private static final native _setDataSource(JLjava/lang/String;)V
.end method

.method private static final native _setDataSourceFd(JI)V
.end method

.method private static final native _setDoubleValue(JID)I
.end method

.method private static final native _setFloatValue(JIF)I
.end method

.method private static final native _setFloatValueArray(J[I[F)I
.end method

.method private static final native _setGlobalIntForKey(II)V
.end method

.method private static final native _setIntValue(JII)I
.end method

.method private static final native _setIntValueArray(J[I[I)I
.end method

.method private static final native _setLoadControl(JLcom/ss/ttm/player/LoadControl;)V
.end method

.method private static final native _setLongValue(JIJ)I
.end method

.method private static final native _setLongValueArray(J[I[J)I
.end method

.method private static final native _setLooping(JI)V
.end method

.method private static final native _setMaskInfo(JLcom/ss/ttm/player/MaskInfo;)V
.end method

.method private static final native _setMediaTransport(JLcom/ss/ttm/player/MediaTransport;)V
.end method

.method private static final native _setStringValue(JILjava/lang/String;)I
.end method

.method private static final native _setStringValueArray(J[I[Ljava/lang/String;)I
.end method

.method private static final native _setSubInfo(JLcom/ss/ttm/player/SubInfo;)V
.end method

.method private static final native _setSupportFormatNB(I)V
.end method

.method private static final native _setSupprotSampleRates([II)V
.end method

.method private static final native _setSurfaceValue(JJ)I
.end method

.method private static final native _setTraitObject(JIILcom/ss/ttm/player/TraitObject;)V
.end method

.method private static final native _setVideoSurface(JLandroid/view/Surface;)I
.end method

.method private static final native _setVideoSurfaceTimeout(JLandroid/view/Surface;I)I
.end method

.method private static final native _setVolume(JFF)V
.end method

.method private static final native _setupMediaCodec(J)I
.end method

.method private static final native _start(J)I
.end method

.method private static final native _stop(J)V
.end method

.method private static final native _switchStream(JII)V
.end method

.method private static final native _takeScreenshot(J)V
.end method

.method private static final checkPlayerModel()V
    .locals 0

    .line 1
    return-void
.end method

.method private create(JII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttm/player/TTPlayer;->mNotifyer:Lcom/ss/ttm/player/IPlayerNotifyer;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayer;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    sget-object v6, Lcom/ss/ttm/player/TTPlayer;->mAppPath:Ljava/lang/String;

    .line 8
    .line 9
    move-object v1, p0

    .line 10
    move v4, p3

    .line 11
    move v5, p4

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/ss/ttm/player/TTPlayer;->_create(Landroid/content/Context;IIILjava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide p3

    .line 16
    iput-wide p3, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 17
    .line 18
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    const-string p4, "create TTPlayer:%x"

    .line 29
    .line 30
    invoke-static {v0, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    const-string p4, "TTPlayerJava"

    .line 35
    .line 36
    invoke-static {p4, p0, p3}, Lcom/ss/ttm/utils/AVLogger;->InfoTrackLife(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-wide p1, p0, Lcom/ss/ttm/player/TTPlayer;->mId:J

    .line 40
    .line 41
    iget-wide p1, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 42
    .line 43
    const-wide/16 p3, 0x0

    .line 44
    .line 45
    cmp-long p1, p1, p3

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 51
    .line 52
    const-string p2, "create native player is fail."

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method private static detectAudioFormat()V
    .locals 2

    .line 1
    sget v0, Lcom/ss/ttm/player/TTPlayer;->mSupportSampleRateNB:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/ss/ttm/player/AudioFormats;->getDefaultSampleRatesNB()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    sput-object v0, Lcom/ss/ttm/player/TTPlayer;->mSupportSampleRates:[I

    .line 12
    .line 13
    invoke-static {v0}, Lcom/ss/ttm/player/AudioFormats;->getMaxSupportedSampleRates([I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Lcom/ss/ttm/player/TTPlayer;->mSupportSampleRateNB:I

    .line 18
    .line 19
    sget-object v1, Lcom/ss/ttm/player/TTPlayer;->mSupportSampleRates:[I

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/ss/ttm/player/TTPlayer;->_setSupprotSampleRates([II)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static final getAppPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTPlayer;->mAppPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getCachePath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTPlayer;->mCachePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getCrashPath()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTPlayer;->mCrashPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDemuxerFactory(I)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ss/ttm/player/TTPlayer;->_getDemuxerFactory(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static getThreadPoolStackSize()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static getVC2DecPoolSize()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/16 v0, 0x2a

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static getVC2StackSizeValue()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static getVC2ThreadPriorityValue()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/16 v0, 0x23

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static isEnableVC2DecPool()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/16 v0, 0x29

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static isEnableVC2ThreadPriority()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static isEnableVC2ThreadPriorityLite()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static isIPPlayer()Z
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mIsIPCPlayer:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-boolean v1, Lcom/ss/ttm/player/TTPlayer;->mIsIPCPlayer:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "TTPlayerJava"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-boolean v0, Lcom/ss/ttm/player/TTPlayer;->mIsIPCPlayer:Z

    .line 26
    .line 27
    return v0
.end method

.method public static isUseThreadV2()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/16 v0, 0x26

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static isUsedThreadPool()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static isVC2StackSizeOpt()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/16 v0, 0x27

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static registerNativeMdl(J)I
    .locals 0
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttm/player/TTPlayer;->_registerNativeMdl(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static registerPlayerInfo()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/ttm/player/TTPlayer;->_registerPlayerInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final setCachePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttm/player/TTPlayer;->mCachePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final setCrashPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttm/player/TTPlayer;->mCrashPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final setGlobalIntOptionForKey(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttm/player/TTPlayer;->_setGlobalIntForKey(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setIsIPPlayer(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ss/ttm/player/TTPlayer;->mIsIPCPlayer:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final setTempFileDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttm/player/TTPlayer;->mAppPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public close()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayer;->_close(J)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public didReceivePacket(IJJLjava/util/Map;)V
    .locals 7
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayer;->mFrameMetadataListener:Lcom/ss/ttm/player/FrameMetadataListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    move-wide v4, p4

    .line 8
    move-object v6, p6

    .line 9
    invoke-interface/range {v0 .. v6}, Lcom/ss/ttm/player/FrameMetadataListener;->didReceivePacket(IJJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    return-void
.end method

.method public frameDTSNotify(IJJ)V
    .locals 6
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayer;->mFrameMetadataListener:Lcom/ss/ttm/player/FrameMetadataListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move v1, p1

    .line 6
    move-wide v2, p4

    .line 7
    move-wide v4, p2

    .line 8
    invoke-interface/range {v0 .. v5}, Lcom/ss/ttm/player/FrameMetadataListener;->frameDTSNotify(IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayer;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDoubleOption(ID)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2, p3}, Lcom/ss/ttm/player/TTPlayer;->_getDoubleValue(JID)D

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getFloatOption(IF)F
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_getFloatValue(JIF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getHandle()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getIntOption(II)I
    .locals 2

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x33

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 13
    .line 14
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_getIntValue(JII)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :pswitch_0
    iget-wide p1, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 20
    .line 21
    invoke-static {p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_isPlaying(J)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :pswitch_1
    iget-wide p1, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_isLooping(J)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :pswitch_2
    iget-wide p1, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_getVideoHeight(J)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    :pswitch_3
    iget-wide p1, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_getVideoWidth(J)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :pswitch_4
    iget-wide p1, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 48
    .line 49
    invoke-static {p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_getCurrentPosition(J)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :pswitch_5
    iget-wide p1, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_getDuration(J)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    :cond_0
    iget p1, p0, Lcom/ss/ttm/player/TTPlayer;->mTracker:I

    .line 62
    .line 63
    return p1

    .line 64
    :cond_1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 65
    .line 66
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_getIntValue(JII)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLongOption(IJ)J
    .locals 2

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-wide p1, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 6
    .line 7
    return-wide p1

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 9
    .line 10
    invoke-static {v0, v1, p1, p2, p3}, Lcom/ss/ttm/player/TTPlayer;->_getLongValue(JIJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    return-wide p1
.end method

.method public getNativePlayer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getObjectValue(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_getJObjectValue(JI)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getStrategyParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-string v0, "none"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayer;->mStrategyParamsTransport:Lcom/ss/ttm/player/StrategyParamsTransport;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, p1}, Lcom/ss/ttm/player/StrategyParamsTransport;->getStrategyParams(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getStreamInfo()[Lcom/ss/ttm/player/StreamInfo;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayer;->_getStreamInfo(J)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/ss/ttm/player/StreamInfo;

    .line 8
    .line 9
    return-object v0
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x447

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/ss/ttm/player/TTPlayer;->playerLibName:Ljava/lang/String;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_getStringValue(JI)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getSubtitleContent(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_getSubtitleContent(JI)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayer;->_getStreamInfo(J)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/ss/ttm/player/StreamInfo;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    array-length v1, v0

    .line 16
    new-array v2, v1, [Lcom/ss/ttm/player/MediaPlayer$TrackInfo;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v1, :cond_1

    .line 20
    .line 21
    aget-object v4, v0, v3

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/ss/ttm/player/StreamInfo;->convertToTrackInfo()Lcom/ss/ttm/player/MediaPlayer$TrackInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    aput-object v4, v2, v3

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object v2

    .line 33
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method public mouseEvent(III)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2, p3}, Lcom/ss/ttm/player/TTPlayer;->_mouseEvent(JIII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAbrDecisionInfo(JLjava/lang/String;)V
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayer;->mFrameMetadataListener:Lcom/ss/ttm/player/FrameMetadataListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttm/player/FrameMetadataListener;->onAbrDecisionInfo(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public onFrameAboutToBeRendered(IJJLjava/util/Map;)V
    .locals 7
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayer;->mFrameMetadataListener:Lcom/ss/ttm/player/FrameMetadataListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    move-wide v4, p4

    .line 8
    move-object v6, p6

    .line 9
    invoke-interface/range {v0 .. v6}, Lcom/ss/ttm/player/FrameMetadataListener;->onFrameAboutToBeRendered(IJJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    return-void
.end method

.method public final onLogInfo(IILjava/lang/String;)V
    .locals 8
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "type:"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " code:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "TTPlayerJava"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayer;->mNotifyer:Lcom/ss/ttm/player/IPlayerNotifyer;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    :try_start_0
    iget-wide v3, p0, Lcom/ss/ttm/player/TTPlayer;->mId:J

    .line 40
    .line 41
    move v5, p1

    .line 42
    move v6, p2

    .line 43
    move-object v7, p3

    .line 44
    invoke-interface/range {v2 .. v7}, Lcom/ss/ttm/player/IPlayerNotifyer;->handleErrorNotify(JIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :catchall_0
    :cond_0
    return-void
.end method

.method public onNotify(IIILjava/lang/String;)V
    .locals 7
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayer;->mNotifyer:Lcom/ss/ttm/player/IPlayerNotifyer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/ss/ttm/player/TTPlayer;->mId:J

    .line 6
    .line 7
    move v3, p1

    .line 8
    move v4, p2

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-interface/range {v0 .. v6}, Lcom/ss/ttm/player/IPlayerNotifyer;->handlePlayerNotify(JIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method protected pause()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayer;->_pause(J)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected prepare()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayer;->_prepare(J)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public prevClose()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Lcom/ss/ttm/player/TTPlayer;->_setVideoSurface(JLandroid/view/Surface;)I

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public receiveBinarySei(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayer;->mFrameMetadataListener:Lcom/ss/ttm/player/FrameMetadataListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttm/player/FrameMetadataListener;->receiveBinarySei(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "release TTPlayer:%x"

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "TTPlayerJava"

    .line 20
    .line 21
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->InfoTrackLife(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long v4, v0, v2

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayer;->_release(J)V

    .line 33
    .line 34
    .line 35
    iput-wide v2, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 36
    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/ss/ttm/player/TTPlayer;->mNotifyer:Lcom/ss/ttm/player/IPlayerNotifyer;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/ss/ttm/player/TTPlayer;->mScreenshotListener:Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;

    .line 41
    .line 42
    return-void
.end method

.method protected reset()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayer;->_reset(J)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public rotateCamera(FF)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_rotateCamera(JFF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_seek(JI)I

    return-void
.end method

.method public seekTo(II)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_seek2(JII)I

    return-void
.end method

.method public setABRStrategy(Lcom/ss/ttm/player/ABRStrategy;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_setABRStrategy(JLcom/ss/ttm/player/ABRStrategy;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setAIBarrageInfo(Lcom/ss/ttm/player/MaskInfo;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_setAIBarrageInfo(JLcom/ss/ttm/player/MaskInfo;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setAudioProcessor(Lcom/ss/ttm/player/AudioProcessor;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_setAudioProcessor(JLcom/ss/ttm/player/AudioProcessor;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_setDataSource(JLcom/ss/ttm/player/IMediaDataSource;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "TTPlayerJava"

    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_setDataSource(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDataSourceFd(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_setDataSourceFd(JI)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setDoubleOption(ID)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2, p3}, Lcom/ss/ttm/player/TTPlayer;->_setDoubleValue(JID)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setFloatOption(IF)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_setFloatValue(JIF)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setFloatOptionArray([I[F)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_setFloatValueArray(J[I[F)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setFrameMetadataListener(Lcom/ss/ttm/player/FrameMetadataListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayer;->mFrameMetadataListener:Lcom/ss/ttm/player/FrameMetadataListener;

    .line 2
    .line 3
    return-void
.end method

.method public setIntOption(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x6f

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    sget-object p1, Lcom/ss/ttm/player/TTPlayerKeys;->SupportSampleRates:[I

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    array-length p1, p1

    .line 9
    new-array p1, p1, [I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v2, v0, :cond_1

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    shl-int/2addr v4, v2

    .line 18
    and-int/2addr v4, p2

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    sget-object v4, Lcom/ss/ttm/player/TTPlayerKeys;->SupportSampleRates:[I

    .line 22
    .line 23
    aget v4, v4, v2

    .line 24
    .line 25
    aput v4, p1, v3

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p1, v3}, Lcom/ss/ttm/player/TTPlayer;->_setSupprotSampleRates([II)V

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 37
    .line 38
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_setIntValue(JII)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public setIntOptionArray([I[I)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_setIntValueArray(J[I[I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setLoadControl(Lcom/ss/ttm/player/LoadControl;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_setLoadControl(JLcom/ss/ttm/player/LoadControl;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setLongOption(IJ)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2, p3}, Lcom/ss/ttm/player/TTPlayer;->_setLongValue(JIJ)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setLongOptionArray([I[J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_setLongValueArray(J[I[J)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setLooping(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_setLooping(JI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaskInfo(Lcom/ss/ttm/player/MaskInfo;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_setMaskInfo(JLcom/ss/ttm/player/MaskInfo;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setMediaTransport(Lcom/ss/ttm/player/MediaTransport;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_setMediaTransport(JLcom/ss/ttm/player/MediaTransport;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setNotifyer(Lcom/ss/ttm/player/IPlayerNotifyer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayer;->mNotifyer:Lcom/ss/ttm/player/IPlayerNotifyer;

    .line 2
    .line 3
    return-void
.end method

.method public setNotifyerState(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const/16 v2, 0x10

    .line 4
    .line 5
    long-to-int p1, p1

    .line 6
    invoke-static {v0, v1, v2, p1}, Lcom/ss/ttm/player/TTPlayer;->_setIntValue(JII)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/AJProducerManager;->setOnImageAvailableListener(JLandroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnScreenshotListener(Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayer;->mScreenshotListener:Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;

    .line 2
    .line 3
    return-void
.end method

.method public setStrategyParamsTransport(Lcom/ss/ttm/player/StrategyParamsTransport;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayer;->mStrategyParamsTransport:Lcom/ss/ttm/player/StrategyParamsTransport;

    .line 2
    .line 3
    return-void
.end method

.method public setStringOption(ILjava/lang/String;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_setStringValue(JILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setStringOptionArray([I[Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_setStringValueArray(J[I[Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setSubInfo(Lcom/ss/ttm/player/SubInfo;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_setSubInfo(JLcom/ss/ttm/player/SubInfo;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setSurfaceValue(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_setSurfaceValue(JJ)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setTraitObject(ILcom/ss/ttm/player/TraitObject;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/ss/ttm/player/TraitObject;->version()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, -0x1

    .line 17
    :goto_0
    iget-wide v1, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 18
    .line 19
    invoke-static {v1, v2, p1, v0, p2}, Lcom/ss/ttm/player/TTPlayer;->_setTraitObject(JIILcom/ss/ttm/player/TraitObject;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method protected setVideoSurface(Landroid/view/Surface;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/ss/ttm/player/TTPlayer;->_setVideoSurface(JLandroid/view/Surface;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    :goto_0
    return p1
.end method

.method protected setVideoSurfaceTimeOut(Landroid/view/Surface;I)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_setVideoSurfaceTimeout(JLandroid/view/Surface;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    :goto_0
    return p1
.end method

.method public setVolume(FF)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_setVolume(JFF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setupMediaCodec()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayer;->_setupMediaCodec(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected start()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayer;->_start(J)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected stop()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayer;->_stop(J)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, -0x1

    .line 15
    return v0
.end method

.method public switchStream(II)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->_switchStream(JII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public takeScreenshot()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TTPlayer;->mHandle:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayer;->_takeScreenshot(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final takeScreenshotComplete(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayer;->mScreenshotListener:Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;->onTakeScreenShotCompletion(Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public updateFrameTerminatedDTS(IJJ)V
    .locals 6
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayer;->mFrameMetadataListener:Lcom/ss/ttm/player/FrameMetadataListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    move-wide v4, p4

    .line 8
    invoke-interface/range {v0 .. v5}, Lcom/ss/ttm/player/FrameMetadataListener;->updateFrameTerminatedDTS(IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    return-void
.end method

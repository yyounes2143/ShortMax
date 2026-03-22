.class public Lcom/ss/ttm/player/TTPlayerClient;
.super Lcom/ss/ttm/player/MediaPlayerClient;
.source "TTPlayerClient.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/ss/ttm/player/ISurfaceListener;


# annotations
.annotation build Lcom/ss/ttm/player/Keep;
.end annotation


# static fields
.field public static final KEY_IS_CONFIG_PARAMS_OPTION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TTPlayerClient"


# instance fields
.field private mBufferingInfo:Ljava/lang/String;

.field private mCallback:Lcom/ss/ttm/player/TTSurfaceCallback;

.field private mCodecAndSurfaceReuse:I

.field private mConfigParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedCpu:Z

.field private mContext:Landroid/content/Context;

.field private mCrashType:I

.field private mCrashedInfo:Ljava/lang/StringBuilder;

.field private mDisablePlayerStayAwake:I

.field private mErrorCode:I

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerLocker:Ljava/lang/Object;

.field private mIgnoreSurfaceCreated:I

.field private mLogInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogListener:Lcom/ss/ttm/player/MediaPlayer$OnLogListener;

.field private mMediaCodecStopTimeOutMs:I

.field private mOnBufferingUpdateListener:Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;

.field private mOnExternInfoListener:Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;

.field private mOnInfoListener:Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;

.field private mOnSARChangedListener:Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;

.field private mOnSeekCompleteListener:Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;

.field private mPlayLifeId:I

.field private mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

.field private final mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final mReadWritedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private volatile mRealsedSurface:Z

.field private final mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mReentrantLockInRtc:Ljava/util/concurrent/locks/ReentrantLock;

.field private mRtcPlay:I

.field private mScreenOnWhilePlaying:Z

.field private mSeekComplete:Z

.field private mStayAwake:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUri:Ljava/lang/String;

.field private mVoiceInfo:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWrapper:Lcom/ss/ttm/player/MediaPlayer;

.field private final mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/ttm/player/TTVersion;->saveVersionInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/MediaPlayerClient;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSeekComplete:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/LinkedList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mRealsedSurface:Z

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayLifeId:I

    .line 19
    .line 20
    new-instance v2, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mHandlerLocker:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    .line 34
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLockInRtc:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    .line 41
    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadWritedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput-object v3, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iput-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 59
    .line 60
    iput v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mErrorCode:I

    .line 61
    .line 62
    iput v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mRtcPlay:I

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const/16 v3, 0x400

    .line 67
    .line 68
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCrashedInfo:Ljava/lang/StringBuilder;

    .line 72
    .line 73
    iput v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCrashType:I

    .line 74
    .line 75
    iput v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mDisablePlayerStayAwake:I

    .line 76
    .line 77
    iput v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mMediaCodecStopTimeOutMs:I

    .line 78
    .line 79
    iput v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCodecAndSurfaceReuse:I

    .line 80
    .line 81
    iput v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mIgnoreSurfaceCreated:I

    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mConnectedCpu:Z

    .line 84
    .line 85
    iput-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mConfigParams:Ljava/util/HashMap;

    .line 86
    .line 87
    iput-boolean v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mRealsedSurface:Z

    .line 88
    .line 89
    new-instance p2, Lcom/ss/ttm/player/TTSurfaceCallback;

    .line 90
    .line 91
    invoke-direct {p2, p0}, Lcom/ss/ttm/player/TTSurfaceCallback;-><init>(Lcom/ss/ttm/player/ISurfaceListener;)V

    .line 92
    .line 93
    .line 94
    iput-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCallback:Lcom/ss/ttm/player/TTSurfaceCallback;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_0

    .line 103
    .line 104
    new-instance p1, Landroid/os/Handler;

    .line 105
    .line 106
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 113
    .line 114
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    .line 122
    .line 123
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttm/player/TTPlayerClient;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttm/player/TTPlayerClient;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$200(Lcom/ss/ttm/player/TTPlayerClient;)Lcom/ss/ttm/player/ITTPlayerRef;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static declared-synchronized create(Lcom/ss/ttm/player/MediaPlayer;Landroid/content/Context;)Lcom/ss/ttm/player/TTPlayerClient;
    .locals 2
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    const-class v0, Lcom/ss/ttm/player/TTPlayerClient;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/ss/ttm/player/TTPlayerClient;->create(Lcom/ss/ttm/player/MediaPlayer;Landroid/content/Context;Ljava/util/HashMap;)Lcom/ss/ttm/player/TTPlayerClient;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized create(Lcom/ss/ttm/player/MediaPlayer;Landroid/content/Context;Ljava/util/HashMap;)Lcom/ss/ttm/player/TTPlayerClient;
    .locals 2
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttm/player/MediaPlayer;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/ss/ttm/player/TTPlayerClient;"
        }
    .end annotation

    const-class v0, Lcom/ss/ttm/player/TTPlayerClient;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/ss/ttm/player/TTVersion;->saveVersionInfo()V

    .line 3
    new-instance v1, Lcom/ss/ttm/player/TTPlayerClient;

    invoke-direct {v1, p1, p2}, Lcom/ss/ttm/player/TTPlayerClient;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 4
    invoke-static {p1, v1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->create(Landroid/content/Context;Lcom/ss/ttm/player/TTPlayerClient;Ljava/util/HashMap;)Lcom/ss/ttm/player/ITTPlayerRef;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 5
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    :try_start_1
    iput-object p1, v1, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 7
    iput-object p0, v1, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getDemuxerFactory(I)J
    .locals 2
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/ss/ttm/player/TTPlayer;->getDemuxerFactory(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private getPlayerCrashedInfo()Ljava/lang/String;
    .locals 9

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Lcom/ss/ttm/player/TTPlayerClient;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v3}, Lcom/ss/ttm/player/ITTPlayerRef;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    :goto_0
    if-nez v3, :cond_1

    .line 25
    .line 26
    const-string v0, "context is null"

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    const-string v4, "<TTPlayerIPClient,getCrashedInfo>find breakpad file"

    .line 30
    .line 31
    const/4 v5, 0x5

    .line 32
    const/4 v6, 0x0

    .line 33
    if-le v0, v1, :cond_4

    .line 34
    .line 35
    invoke-static {v3}, Lcom/ss/ttm/player/TTCrashUtil;->existsCrashFilePath(Landroid/content/Context;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    if-eqz v7, :cond_3

    .line 40
    .line 41
    invoke-static {v3, v7, v2}, Lcom/ss/ttm/player/TTCrashUtil;->getCrashFileContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    if-eqz v8, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v0, v7}, Lcom/ss/ttm/player/TTCrashUtil;->deleteCrashFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCrashType:I

    .line 53
    .line 54
    invoke-static {v5, v6}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v0, v4}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-object v8

    .line 66
    :cond_3
    invoke-static {v3, v2}, Lcom/ss/ttm/utils/AVErrorInfo;->setupPhoneInfo(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    const/16 v3, 0x13

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    invoke-static {v3, v7}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eqz v3, :cond_6

    .line 77
    .line 78
    iget-object v7, p0, Lcom/ss/ttm/player/TTPlayerClient;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {v7, v3, v2}, Lcom/ss/ttm/player/TTCrashUtil;->getCrashFileContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    if-eqz v7, :cond_6

    .line 85
    .line 86
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {v0, v3}, Lcom/ss/ttm/player/TTCrashUtil;->deleteCrashFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iput v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCrashType:I

    .line 92
    .line 93
    invoke-static {v5, v6}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v0, v4}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    return-object v7

    .line 105
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v4, "\ncreate time:"

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/ss/ttm/utils/AVTime;->getFormatNow()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v3, "\nport version:"

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v3, "\nstart service info:"

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const/16 v3, 0x10

    .line 143
    .line 144
    const-string v4, "not find service start info"

    .line 145
    .line 146
    invoke-static {v3, v4}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v3, "\nstop service info:"

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const/16 v3, 0xc

    .line 159
    .line 160
    const-string v4, "not find service stop info"

    .line 161
    .line 162
    invoke-static {v3, v4}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v3, "\ncrash:"

    .line 170
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const/4 v3, 0x7

    .line 175
    invoke-static {v3, v6}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v3, "\nsdk info:"

    .line 183
    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const/16 v3, 0xf

    .line 188
    .line 189
    const-string v4, "not find sdk info"

    .line 190
    .line 191
    invoke-static {v3, v4}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v3, "\ntimeout count:"

    .line 199
    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const/16 v3, 0xa

    .line 204
    .line 205
    const/4 v4, -0x1

    .line 206
    invoke-static {v3, v4}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v3, "\nforeground:"

    .line 214
    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const/16 v3, 0x15

    .line 219
    .line 220
    invoke-static {v3, v4}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v3, "\non screen:"

    .line 228
    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const/16 v3, 0x16

    .line 233
    .line 234
    invoke-static {v3, v4}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v3, "\n battery info:"

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const/16 v3, 0x17

    .line 247
    .line 248
    const-string v4, "not find"

    .line 249
    .line 250
    invoke-static {v3, v4}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v3, "\nurl:"

    .line 258
    .line 259
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget-object v3, p0, Lcom/ss/ttm/player/TTPlayerClient;->mUri:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v3, "\ncrash:\r\n"

    .line 268
    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-object v3, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCrashedInfo:Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iput v6, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCrashType:I

    .line 278
    .line 279
    if-le v0, v1, :cond_8

    .line 280
    .line 281
    invoke-static {v5, v6}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_7

    .line 286
    .line 287
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 288
    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    const-string v3, "<TTPlayerIPClient,getCrashedInfo>"

    .line 295
    .line 296
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-static {v0}, Lcom/ss/ttm/player/TTCrashUtil;->getBase64SampleCrash(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    return-object v0

    .line 322
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    return-object v0
.end method

.method private getPlayerErrorInfo()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-gtz v2, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mBufferingInfo:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mVoiceInfo:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    :cond_1
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string v3, "error"

    .line 28
    .line 29
    const-string v4, "play error"

    .line 30
    .line 31
    iget-object v5, p0, Lcom/ss/ttm/player/TTPlayerClient;->mUri:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2, v1, v3, v4, v5}, Lcom/ss/ttm/utils/AVErrorInfo;->setupErrorInfo(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const-string v4, "\n"

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mBufferingInfo:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mBufferingInfo:Ljava/lang/String;

    .line 74
    .line 75
    :cond_3
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mVoiceInfo:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mVoiceInfo:Ljava/lang/String;

    .line 86
    .line 87
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :catch_0
    return-object v0
.end method

.method private isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/ITTPlayerRef;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method private notifyInfo(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnInfoListener:Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x4

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-eq p1, v0, :cond_8

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    if-eq p1, v0, :cond_7

    .line 13
    .line 14
    const/16 v0, 0x29

    .line 15
    .line 16
    if-eq p1, v0, :cond_6

    .line 17
    .line 18
    const/16 v0, 0x2a

    .line 19
    .line 20
    if-eq p1, v0, :cond_5

    .line 21
    .line 22
    const/16 v0, 0x39

    .line 23
    .line 24
    if-eq p1, v0, :cond_4

    .line 25
    .line 26
    const/16 v0, 0x3a

    .line 27
    .line 28
    if-eq p1, v0, :cond_3

    .line 29
    .line 30
    const/16 v0, 0x3d

    .line 31
    .line 32
    if-eq p1, v0, :cond_2

    .line 33
    .line 34
    const/16 v0, 0x3e

    .line 35
    .line 36
    if-eq p1, v0, :cond_1

    .line 37
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 42
    .line 43
    .line 44
    packed-switch p1, :pswitch_data_1

    .line 45
    .line 46
    .line 47
    packed-switch p1, :pswitch_data_2

    .line 48
    .line 49
    .line 50
    packed-switch p1, :pswitch_data_3

    .line 51
    .line 52
    .line 53
    packed-switch p1, :pswitch_data_4

    .line 54
    .line 55
    .line 56
    const/4 p1, -0x1

    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :pswitch_0
    const p1, -0xfffffb9

    .line 60
    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :pswitch_1
    const p1, -0xfffffba

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :pswitch_2
    const p1, -0xfffffbb

    .line 70
    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :pswitch_3
    const p1, -0xfffffbc

    .line 75
    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :pswitch_4
    const p1, -0xfffffbd

    .line 80
    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :pswitch_5
    const p1, -0xfffffea

    .line 85
    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :pswitch_6
    const p1, -0xfffffeb

    .line 90
    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :pswitch_7
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v3, "handleNotify --------------->>>>>>decoder start:what:"

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const p1, -0xfffffcc

    .line 120
    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :pswitch_8
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v3, "handleNotify --------------->>>>>>formater start:what:"

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const p1, -0xfffffcd

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :pswitch_9
    const p1, -0xfffffce

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :pswitch_a
    const p1, -0xfffffcf

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :pswitch_b
    const p1, -0xfffffbf

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :pswitch_c
    const p1, -0xfffffc0

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :pswitch_d
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 175
    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v3, "handleNotify --------------->>>>>>info audio pts back:what:"

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const p1, -0xfffffed

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :pswitch_e
    const p1, -0xfffffee

    .line 205
    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :pswitch_f
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 210
    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v3, "handleNotify --------------->>>>>>info audio decode stall:what:"

    .line 217
    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const p1, -0xfffffef

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :pswitch_10
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 240
    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    const-string v3, "handleNotify --------------->>>>>>info video decode stall:what:"

    .line 247
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const p1, -0xffffff0

    .line 265
    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :pswitch_11
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 270
    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v3, "handleNotify --------------->>>>>>info audio demuxer stall:what:"

    .line 277
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const p1, -0xffffff1

    .line 295
    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :pswitch_12
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 300
    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    const-string v3, "handleNotify --------------->>>>>>info video demuxer stall:what:"

    .line 307
    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const p1, -0xffffff2

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :sswitch_0
    const p1, 0x1000001

    .line 330
    .line 331
    .line 332
    goto/16 :goto_0

    .line 333
    .line 334
    :sswitch_1
    const p1, -0xfffffb7

    .line 335
    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :sswitch_2
    const p1, -0xfffffb8

    .line 340
    .line 341
    .line 342
    goto/16 :goto_0

    .line 343
    .line 344
    :sswitch_3
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 345
    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    const-string v3, "handleNotify --------------->>>>>>info preBuffering  start:what:"

    .line 352
    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    const p1, -0xfffffd0

    .line 370
    .line 371
    .line 372
    goto/16 :goto_0

    .line 373
    .line 374
    :sswitch_4
    const p1, 0xf00000d

    .line 375
    .line 376
    .line 377
    goto/16 :goto_0

    .line 378
    .line 379
    :sswitch_5
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 380
    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    const-string v3, "handleNotify --------------->>>>>>info ready for display:what:"

    .line 387
    .line 388
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    const p1, -0xfffffbe

    .line 405
    .line 406
    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :sswitch_6
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 410
    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .line 415
    .line 416
    const-string v3, "handleNotify --------------->>>>>>info audio rendering start:what:"

    .line 417
    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    const p1, 0xf00000c

    .line 435
    .line 436
    .line 437
    goto/16 :goto_0

    .line 438
    .line 439
    :sswitch_7
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 440
    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .line 445
    .line 446
    const-string v3, "handleNotify --------------->>>>>>info audio render stall:what:"

    .line 447
    .line 448
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    const p1, 0xf00000b

    .line 465
    .line 466
    .line 467
    goto/16 :goto_0

    .line 468
    .line 469
    :sswitch_8
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 470
    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    const-string v3, "handleNotify --------------->>>>>>info video render stall:what:"

    .line 477
    .line 478
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    const p1, 0xf00000a

    .line 495
    .line 496
    .line 497
    goto/16 :goto_0

    .line 498
    .line 499
    :sswitch_9
    const p1, 0xf000009

    .line 500
    .line 501
    .line 502
    goto/16 :goto_0

    .line 503
    .line 504
    :sswitch_a
    const p1, 0xf000008

    .line 505
    .line 506
    .line 507
    goto/16 :goto_0

    .line 508
    .line 509
    :sswitch_b
    const p1, 0xf000007

    .line 510
    .line 511
    .line 512
    goto/16 :goto_0

    .line 513
    .line 514
    :sswitch_c
    const p1, 0xf000006

    .line 515
    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :sswitch_d
    const p1, 0xf000005

    .line 520
    .line 521
    .line 522
    goto/16 :goto_0

    .line 523
    .line 524
    :sswitch_e
    const p1, 0xf000004

    .line 525
    .line 526
    .line 527
    goto/16 :goto_0

    .line 528
    .line 529
    :sswitch_f
    const p1, 0xf000003

    .line 530
    .line 531
    .line 532
    goto/16 :goto_0

    .line 533
    .line 534
    :pswitch_13
    const/16 p1, 0x385

    .line 535
    .line 536
    goto/16 :goto_0

    .line 537
    .line 538
    :pswitch_14
    const/16 p1, 0x322

    .line 539
    .line 540
    goto/16 :goto_0

    .line 541
    .line 542
    :pswitch_15
    const/16 p1, 0x321

    .line 543
    .line 544
    goto/16 :goto_0

    .line 545
    .line 546
    :pswitch_16
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 547
    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    const-string v3, "handleNotify --------------->>>>>>info rendering start:what:"

    .line 554
    .line 555
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    const/4 p1, 0x3

    .line 572
    goto/16 :goto_0

    .line 573
    .line 574
    :cond_1
    const p1, -0xfffffec

    .line 575
    .line 576
    .line 577
    goto/16 :goto_0

    .line 578
    .line 579
    :cond_2
    const p1, -0xfffffc9

    .line 580
    .line 581
    .line 582
    goto/16 :goto_0

    .line 583
    .line 584
    :cond_3
    const p1, -0xfffffca

    .line 585
    .line 586
    .line 587
    goto/16 :goto_0

    .line 588
    .line 589
    :cond_4
    const p1, -0xfffffcb

    .line 590
    .line 591
    .line 592
    goto :goto_0

    .line 593
    :cond_5
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 594
    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    .line 599
    .line 600
    const-string v3, "handleNotify --------------->>>>>>info rtc audio decode stall:what:"

    .line 601
    .line 602
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    const p1, -0xfffffdf

    .line 619
    .line 620
    .line 621
    goto :goto_0

    .line 622
    :cond_6
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 623
    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .line 628
    .line 629
    const-string v3, "handleNotify --------------->>>>>>info rtc video decode stall:what:"

    .line 630
    .line 631
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object p1

    .line 644
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    const p1, -0xfffffe0

    .line 648
    .line 649
    .line 650
    goto :goto_0

    .line 651
    :cond_7
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 652
    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .line 657
    .line 658
    const-string v3, "handleNotify --------------->>>>>>info buffering  end:what:"

    .line 659
    .line 660
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    const/16 p1, 0x2be

    .line 677
    .line 678
    goto :goto_0

    .line 679
    :cond_8
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 680
    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    .line 682
    .line 683
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .line 685
    .line 686
    const-string v3, "handleNotify --------------->>>>>>info buffering  start:what:"

    .line 687
    .line 688
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object p1

    .line 701
    invoke-static {v0, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    const/16 p1, 0x2bd

    .line 705
    .line 706
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnInfoListener:Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;

    .line 707
    .line 708
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 709
    .line 710
    invoke-interface {v0, v1, p1, p2}, Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;->onInfo(Lcom/ss/ttm/player/MediaPlayer;II)Z

    .line 711
    .line 712
    .line 713
    return-void

    .line 714
    nop

    .line 715
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_f
        0x15 -> :sswitch_e
        0x16 -> :sswitch_d
        0x17 -> :sswitch_c
        0x18 -> :sswitch_b
        0x19 -> :sswitch_a
        0x1a -> :sswitch_9
        0x1b -> :sswitch_8
        0x1c -> :sswitch_7
        0x1d -> :sswitch_6
        0x1e -> :sswitch_5
        0x20 -> :sswitch_4
        0x2f -> :sswitch_3
        0x52 -> :sswitch_2
        0x54 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch

    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    :pswitch_data_4
    .packed-switch 0x46
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onExternInfo(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mRtcPlay:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLockInRtc:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnExternInfoListener:Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 17
    .line 18
    invoke-interface {v0, v1, p1, p3}, Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;->onExternInfo(Lcom/ss/ttm/player/MediaPlayer;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnExternInfoListener:Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 24
    .line 25
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;->onExternInfo2(Lcom/ss/ttm/player/MediaPlayer;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLockInRtc:Ljava/util/concurrent/locks/ReentrantLock;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLockInRtc:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnExternInfoListener:Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 50
    .line 51
    invoke-interface {v0, v1, p1, p3}, Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;->onExternInfo(Lcom/ss/ttm/player/MediaPlayer;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnExternInfoListener:Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 57
    .line 58
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;->onExternInfo2(Lcom/ss/ttm/player/MediaPlayer;IILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_2
    return-void
.end method

.method private sendCompletioned(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnCompletionListener:Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayLifeId:I

    .line 11
    .line 12
    if-lt p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;->onCompletion(Lcom/ss/ttm/player/MediaPlayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 47
    .line 48
    .line 49
    :cond_2
    throw p1
.end method

.method private sendErrorInfo(II)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnErrorListener:Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayLifeId:I

    .line 11
    .line 12
    if-lt p2, v1, :cond_2

    .line 13
    .line 14
    iget p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mErrorCode:I

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const p1, -0xfffff

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move p1, p2

    .line 26
    :goto_0
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-interface {v0, p2, p1, v1}, Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;->onError(Lcom/ss/ttm/player/MediaPlayer;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void

    .line 49
    :goto_2
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_4

    .line 56
    .line 57
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 60
    .line 61
    .line 62
    :cond_4
    throw p1
.end method

.method private sendSeekCompleted(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSeekComplete:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnSeekCompleteListener:Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSeekComplete:Z

    .line 11
    .line 12
    iget v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayLifeId:I

    .line 13
    .line 14
    if-lt p1, v1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/ss/ttm/player/MediaPlayer;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static setGlobalIntOptionForKey(II)V
    .locals 0
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setGlobalIntOptionForKey(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private stayAwake(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mStayAwake:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/ss/ttm/player/TTPlayerClient;->updateSurfaceScreenOn()V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "close start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mRealsedSurface:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/ss/ttm/player/ITTPlayerRef;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    .line 34
    .line 35
    const-string v1, "close end"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public deselectTrack(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x105

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setIntOption(II)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    shl-int/lit8 p1, p1, 0x8

    .line 22
    .line 23
    const/16 v1, 0x41

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setIntOption(II)I

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->getIntOption(II)I

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDuration()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->getIntOption(II)I

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public getFloatOption(IF)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->getFloatOption(IF)F

    .line 15
    .line 16
    .line 17
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 24
    .line 25
    .line 26
    return p2

    .line 27
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public getIntOption(II)I
    .locals 1

    .line 1
    const/16 v0, 0x1388

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mErrorCode:I

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    const/16 v0, 0x1a

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iget p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCrashType:I

    .line 13
    .line 14
    return p1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->getIntOption(II)I

    .line 29
    .line 30
    .line 31
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 38
    .line 39
    .line 40
    return p2

    .line 41
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public getLongOption(IJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/ITTPlayerRef;->getLongOption(IJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 24
    .line 25
    .line 26
    return-wide p2

    .line 27
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public getObjectOption(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->getObjectOption(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public getSelectedTrack(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    if-ne p1, v0, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_1
    const/4 v0, 0x4

    .line 11
    if-ne p1, v0, :cond_2

    .line 12
    .line 13
    return v1

    .line 14
    :cond_2
    const/4 p1, -0x1

    .line 15
    return p1
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x1389

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->getPlayerCrashedInfo()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/16 v0, 0x138a

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-ne p1, v0, :cond_3

    .line 14
    .line 15
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->getPlayerErrorInfo()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_2
    :goto_0
    return-object v1

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->getStringOption(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :goto_2
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public getSubtitleContent(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->getSubtitleContent(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/ss/ttm/player/ITTPlayerRef;->getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public getType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/ss/ttm/player/ITTPlayerRef;->getType()I

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return v0

    .line 28
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public getVideoHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->getIntOption(II)I

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public getVideoType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 14
    .line 15
    const/16 v2, 0xb

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->getIntOption(II)I

    .line 18
    .line 19
    .line 20
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public getVideoWidth()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->getIntOption(II)I

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "handleMessage send message prev.thread id:"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 37
    .line 38
    iget v2, p1, Landroid/os/Message;->what:I

    .line 39
    .line 40
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 41
    .line 42
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    .line 44
    instance-of v5, v4, Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    check-cast v4, Ljava/lang/String;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v4, 0x0

    .line 52
    :goto_0
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/ss/ttm/player/TTPlayerClient;->handleNotify(IIILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget p1, p1, Landroid/os/Message;->what:I

    .line 56
    .line 57
    if-eq p1, v1, :cond_2

    .line 58
    .line 59
    sget-object p1, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "handleMessage send message after.thread id:"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    const/4 p1, 0x1

    .line 90
    return p1
.end method

.method public handleNotify(IIILjava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, ",plifeId:"

    .line 2
    .line 3
    const-string v1, "life:"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x64

    .line 7
    .line 8
    const-string v4, ",parameter:"

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz p2, :cond_8

    .line 12
    .line 13
    const/16 v6, 0xc

    .line 14
    .line 15
    if-eq p2, v6, :cond_7

    .line 16
    .line 17
    const/16 v6, 0xd

    .line 18
    .line 19
    const-string v7, "handleNotify -------------->>>>>>>Completed:what:"

    .line 20
    .line 21
    if-eq p2, v6, :cond_6

    .line 22
    .line 23
    const/16 v6, 0x54

    .line 24
    .line 25
    if-eq p2, v6, :cond_5

    .line 26
    .line 27
    const/16 v6, 0x55

    .line 28
    .line 29
    if-eq p2, v6, :cond_4

    .line 30
    .line 31
    sparse-switch p2, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    const p1, 0xffff

    .line 35
    .line 36
    .line 37
    packed-switch p2, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    packed-switch p2, :pswitch_data_1

    .line 41
    .line 42
    .line 43
    packed-switch p2, :pswitch_data_2

    .line 44
    .line 45
    .line 46
    packed-switch p2, :pswitch_data_3

    .line 47
    .line 48
    .line 49
    packed-switch p2, :pswitch_data_4

    .line 50
    .line 51
    .line 52
    packed-switch p2, :pswitch_data_5

    .line 53
    .line 54
    .line 55
    packed-switch p2, :pswitch_data_6

    .line 56
    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :pswitch_0
    iput-boolean v5, p0, Lcom/ss/ttm/player/TTPlayerClient;->mConnectedCpu:Z

    .line 61
    .line 62
    invoke-direct {p0, p2, p3}, Lcom/ss/ttm/player/TTPlayerClient;->notifyInfo(II)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :pswitch_1
    sget-object p4, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v1, "handleNotify --------------->>>>>>IsSARChange:what:"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p2, ",num:"

    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    and-int/2addr p1, p3

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p2, ",den:"

    .line 92
    .line 93
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    shr-int/lit8 p2, p3, 0x10

    .line 97
    .line 98
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-static {p4, p3}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p3, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnSARChangedListener:Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;

    .line 109
    .line 110
    if-eqz p3, :cond_b

    .line 111
    .line 112
    iget-object p4, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 113
    .line 114
    invoke-interface {p3, p4, p1, p2}, Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;->onSARChanged(Lcom/ss/ttm/player/MediaPlayer;II)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_3

    .line 118
    .line 119
    :pswitch_2
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnVideoSizeChangedListener:Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;

    .line 120
    .line 121
    if-eqz p2, :cond_b

    .line 122
    .line 123
    iget-object p4, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 124
    .line 125
    and-int/2addr p1, p3

    .line 126
    shr-int/lit8 p3, p3, 0x10

    .line 127
    .line 128
    invoke-interface {p2, p4, p1, p3}, Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/ss/ttm/player/MediaPlayer;II)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :pswitch_3
    if-ne p3, v3, :cond_0

    .line 134
    .line 135
    sget-object p1, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 136
    .line 137
    new-instance p4, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v0, "handleNotify -------------->>>>>>>update buffer:what:"

    .line 143
    .line 144
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-static {p1, p2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnBufferingUpdateListener:Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;

    .line 164
    .line 165
    if-eqz p1, :cond_b

    .line 166
    .line 167
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 168
    .line 169
    invoke-interface {p1, p2, p3}, Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/ss/ttm/player/MediaPlayer;I)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_3

    .line 173
    .line 174
    :pswitch_4
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnPreparedListener:Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;

    .line 175
    .line 176
    if-eqz p1, :cond_b

    .line 177
    .line 178
    sget-object p1, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 179
    .line 180
    new-instance p4, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v0, "handleNotify --------------->>>>>>Prepared:what:"

    .line 186
    .line 187
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-static {p1, p2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnPreparedListener:Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;

    .line 207
    .line 208
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 209
    .line 210
    invoke-interface {p1, p2}, Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;->onPrepared(Lcom/ss/ttm/player/MediaPlayer;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_3

    .line 214
    .line 215
    :sswitch_0
    sget-object p4, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 216
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-static {p4, p2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mErrorCode:I

    .line 242
    .line 243
    const p4, -0x7f7f7f7f

    .line 244
    .line 245
    .line 246
    if-ne p2, p4, :cond_1

    .line 247
    .line 248
    return-void

    .line 249
    :cond_1
    iput p4, p0, Lcom/ss/ttm/player/TTPlayerClient;->mErrorCode:I

    .line 250
    .line 251
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 252
    .line 253
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 254
    .line 255
    .line 256
    :try_start_0
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 257
    .line 258
    if-eqz p2, :cond_3

    .line 259
    .line 260
    const/4 p4, 0x0

    .line 261
    iput-object p4, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 262
    .line 263
    invoke-virtual {p2}, Lcom/ss/ttm/player/ITTPlayerRef;->invalid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .line 265
    .line 266
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 267
    .line 268
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 269
    .line 270
    .line 271
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mConfigParams:Ljava/util/HashMap;

    .line 272
    .line 273
    const/4 p4, 0x7

    .line 274
    if-eqz p2, :cond_2

    .line 275
    .line 276
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    check-cast p2, Ljava/lang/Integer;

    .line 285
    .line 286
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 287
    .line 288
    .line 289
    move-result p2

    .line 290
    if-ne p2, v5, :cond_2

    .line 291
    .line 292
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mConfigParams:Ljava/util/HashMap;

    .line 293
    .line 294
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object p4

    .line 298
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {p2, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    goto :goto_0

    .line 306
    :cond_2
    invoke-static {p4, v5}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 307
    .line 308
    .line 309
    :goto_0
    invoke-direct {p0, v2}, Lcom/ss/ttm/player/TTPlayerClient;->stayAwake(Z)V

    .line 310
    .line 311
    .line 312
    invoke-direct {p0, p1}, Lcom/ss/ttm/player/TTPlayerClient;->sendSeekCompleted(I)V

    .line 313
    .line 314
    .line 315
    invoke-direct {p0, p3, p1}, Lcom/ss/ttm/player/TTPlayerClient;->sendErrorInfo(II)V

    .line 316
    .line 317
    .line 318
    invoke-direct {p0, p1}, Lcom/ss/ttm/player/TTPlayerClient;->sendCompletioned(I)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_3

    .line 322
    .line 323
    :catchall_0
    move-exception p1

    .line 324
    goto :goto_1

    .line 325
    :cond_3
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 332
    .line 333
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 334
    .line 335
    .line 336
    throw p1

    .line 337
    :cond_4
    :pswitch_5
    :sswitch_1
    invoke-direct {p0, p2, p3, p4}, Lcom/ss/ttm/player/TTPlayerClient;->onExternInfo(IILjava/lang/String;)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_3

    .line 341
    .line 342
    :cond_5
    :pswitch_6
    :sswitch_2
    invoke-direct {p0, p2, p3}, Lcom/ss/ttm/player/TTPlayerClient;->notifyInfo(II)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_3

    .line 346
    .line 347
    :cond_6
    sget-object p4, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 348
    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    invoke-static {p4, p2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-direct {p0, v2}, Lcom/ss/ttm/player/TTPlayerClient;->stayAwake(Z)V

    .line 374
    .line 375
    .line 376
    new-instance p2, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    iget p3, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayLifeId:I

    .line 391
    .line 392
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p2

    .line 399
    invoke-static {p4, p2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-direct {p0, p1}, Lcom/ss/ttm/player/TTPlayerClient;->sendSeekCompleted(I)V

    .line 403
    .line 404
    .line 405
    invoke-direct {p0, p1}, Lcom/ss/ttm/player/TTPlayerClient;->sendCompletioned(I)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_3

    .line 409
    .line 410
    :cond_7
    sget-object p4, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 411
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .line 416
    .line 417
    const-string v1, "handleNotify -------------->>>>>>>update seek complete:what:"

    .line 418
    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p2

    .line 435
    invoke-static {p4, p2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-direct {p0, p1}, Lcom/ss/ttm/player/TTPlayerClient;->sendSeekCompleted(I)V

    .line 439
    .line 440
    .line 441
    goto :goto_3

    .line 442
    :cond_8
    :sswitch_3
    sget-object p4, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 443
    .line 444
    new-instance v6, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    const-string v7, "handleNotify -------------->>>>>>>Error:what:"

    .line 450
    .line 451
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object p2

    .line 467
    invoke-static {p4, p2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-direct {p0, v2}, Lcom/ss/ttm/player/TTPlayerClient;->stayAwake(Z)V

    .line 471
    .line 472
    .line 473
    const p2, -0x7a115

    .line 474
    .line 475
    .line 476
    if-ne p3, p2, :cond_a

    .line 477
    .line 478
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mConfigParams:Ljava/util/HashMap;

    .line 479
    .line 480
    const/16 v2, 0x8

    .line 481
    .line 482
    if-eqz p2, :cond_9

    .line 483
    .line 484
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object p2

    .line 492
    check-cast p2, Ljava/lang/Integer;

    .line 493
    .line 494
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 495
    .line 496
    .line 497
    move-result p2

    .line 498
    if-ne p2, v5, :cond_9

    .line 499
    .line 500
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mConfigParams:Ljava/util/HashMap;

    .line 501
    .line 502
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    goto :goto_2

    .line 514
    :cond_9
    invoke-static {v2, v5}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 515
    .line 516
    .line 517
    :cond_a
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    iget v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayLifeId:I

    .line 532
    .line 533
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object p2

    .line 540
    invoke-static {p4, p2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-direct {p0, p1}, Lcom/ss/ttm/player/TTPlayerClient;->sendSeekCompleted(I)V

    .line 544
    .line 545
    .line 546
    invoke-direct {p0, p3, p1}, Lcom/ss/ttm/player/TTPlayerClient;->sendErrorInfo(II)V

    .line 547
    .line 548
    .line 549
    :cond_b
    :goto_3
    return-void

    .line 550
    nop

    .line 551
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x20 -> :sswitch_2
        0x21 -> :sswitch_1
        0x22 -> :sswitch_2
        0x23 -> :sswitch_2
        0x24 -> :sswitch_2
        0x25 -> :sswitch_2
        0x26 -> :sswitch_2
        0x27 -> :sswitch_2
        0x28 -> :sswitch_1
        0x29 -> :sswitch_2
        0x2a -> :sswitch_2
        0x2b -> :sswitch_1
        0x2c -> :sswitch_1
        0x2d -> :sswitch_3
        0x2f -> :sswitch_2
        0x31 -> :sswitch_2
        0x52 -> :sswitch_2
        0x3e8 -> :sswitch_2
        0x4e20 -> :sswitch_0
    .end sparse-switch

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    :pswitch_data_3
    .packed-switch 0x39
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    :pswitch_data_4
    .packed-switch 0x3d
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    :pswitch_data_5
    .packed-switch 0x41
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    :pswitch_data_6
    .packed-switch 0x46
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public isLooping()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->getIntOption(II)I

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public isMute()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 14
    .line 15
    const/16 v2, 0xc

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->getIntOption(II)I

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    move v1, v2

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->getIntOption(II)I

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public mouseEvent(III)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x3

    .line 12
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 24
    .line 25
    invoke-virtual {p1, v0, p2, p3}, Lcom/ss/ttm/player/ITTPlayerRef;->mouseEvent(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :goto_2
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method protected onCrashedInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCrashedInfo:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x400

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCrashedInfo:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, "\n"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method protected onPlayLogInfo(IILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_2

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    iput-object p3, p0, Lcom/ss/ttm/player/TTPlayerClient;->mVoiceInfo:Ljava/lang/String;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    iput-object p3, p0, Lcom/ss/ttm/player/TTPlayerClient;->mBufferingInfo:Ljava/lang/String;

    .line 13
    .line 14
    :cond_1
    :goto_0
    return-void

    .line 15
    :cond_2
    if-nez p1, :cond_3

    .line 16
    .line 17
    iput p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mErrorCode:I

    .line 18
    .line 19
    :cond_3
    if-eqz p3, :cond_5

    .line 20
    .line 21
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/16 p2, 0x28

    .line 28
    .line 29
    if-le p1, p2, :cond_4

    .line 30
    .line 31
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_4
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    .line 37
    .line 38
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    filled-new-array {p3, v0}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    const-string v0, "%s&&time:%d"

    .line 53
    .line 54
    invoke-static {p2, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_5
    return-void
.end method

.method public onPlayerNotify(IIILjava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    sget-object v1, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v3, "onPlayerNotify send message start .thread id:"

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mHandlerLocker:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    sget-object p1, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string p3, "onPlayerNotify send message play is null:thread id"

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    .line 58
    .line 59
    .line 60
    move-result-wide p3

    .line 61
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {p1, p2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/16 v2, 0x28

    .line 76
    .line 77
    if-ne p2, v2, :cond_2

    .line 78
    .line 79
    if-eqz p4, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/ttm/player/TTPlayerClient;->handleNotify(IIILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 86
    :cond_2
    if-eq p2, v0, :cond_3

    .line 87
    .line 88
    sget-object v2, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v4, "onPlayerNotify send message prev.thread id:"

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v2, v3}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    .line 119
    .line 120
    invoke-virtual {v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 127
    .line 128
    .line 129
    if-eq p2, v0, :cond_4

    .line 130
    .line 131
    sget-object p1, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string p3, "onPlayerNotify send message after.thread id:"

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    .line 148
    .line 149
    .line 150
    move-result-wide p3

    .line 151
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-static {p1, p2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    monitor-exit v1

    .line 162
    return-void

    .line 163
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    throw p1
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v0, "surface is change"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onSurfaceCreated"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mRealsedSurface:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mIgnoreSurfaceCreated:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 33
    .line 34
    if-eq p1, v0, :cond_3

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCallback:Lcom/ss/ttm/player/TTSurfaceCallback;

    .line 39
    .line 40
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCallback:Lcom/ss/ttm/player/TTSurfaceCallback;

    .line 51
    .line 52
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 56
    .line 57
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setSurfaceTimeOut(Landroid/view/Surface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :cond_4
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v0, "surface is destory"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mRealsedSurface:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "TTIPMediaPlayer player is will release"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mMediaCodecStopTimeOutMs:I

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    new-instance p1, Lcom/ss/ttm/player/TTPlayerClient$2;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/ss/ttm/player/TTPlayerClient$2;-><init>(Lcom/ss/ttm/player/TTPlayerClient;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/ss/ttm/player/AVThreadPool;->addTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :try_start_0
    iget v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mMediaCodecStopTimeOutMs:I

    .line 33
    .line 34
    int-to-long v0, v0

    .line 35
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    .line 37
    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    sget-object p1, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "set surface time out"

    .line 47
    .line 48
    invoke-static {p1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 55
    .line 56
    .line 57
    :try_start_1
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttm/player/ITTPlayerRef;->setSurfaceTimeOut(Landroid/view/Surface;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 76
    .line 77
    .line 78
    const-string v0, "TTIPMediaPlayer player set surface"

    .line 79
    .line 80
    invoke-static {p1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_2
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/ss/ttm/player/ITTPlayerRef;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/ss/ttm/player/TTPlayerClient;->stayAwake(Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public prepare()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttm/player/TTPlayerClient;->prepareAsync()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public prepareAsync()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mErrorCode:I

    .line 14
    .line 15
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mRealsedSurface:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 27
    .line 28
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2, v0}, Lcom/ss/ttm/player/ITTPlayerRef;->setSurfaceTimeOut(Landroid/view/Surface;I)V

    .line 33
    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mRealsedSurface:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/ss/ttm/player/ITTPlayerRef;->prepare()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/ss/ttm/player/TTPlayerClient;->updateLifeId()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public prevClose()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "prev close start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mRealsedSurface:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCallback:Lcom/ss/ttm/player/TTSurfaceCallback;

    .line 16
    .line 17
    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/ss/ttm/player/ITTPlayerRef;->prevClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 42
    .line 43
    .line 44
    const-string v1, "prev close end"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public release()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/ss/ttm/player/TTPlayerClient;->stayAwake(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/ss/ttm/player/TTPlayerClient;->updateSurfaceScreenOn()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    iput v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayLifeId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 24
    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/ss/ttm/player/ITTPlayerRef;->release()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCallback:Lcom/ss/ttm/player/TTSurfaceCallback;

    .line 36
    .line 37
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mRealsedSurface:Z

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mHandlerLocker:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_1
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mLogListener:Lcom/ss/ttm/player/MediaPlayer$OnLogListener;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->getPlayerErrorInfo()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-lez v2, :cond_3

    .line 76
    .line 77
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mLogListener:Lcom/ss/ttm/player/MediaPlayer$OnLogListener;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 80
    .line 81
    invoke-interface {v2, v3, v0}, Lcom/ss/ttm/player/MediaPlayer$OnLogListener;->onLogInfo(Lcom/ss/ttm/player/MediaPlayer;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    iput-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 87
    .line 88
    const-string v1, "release end"

    .line 89
    .line 90
    invoke-static {v0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    throw v1

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 100
    .line 101
    .line 102
    throw v0
.end method

.method public releaseAsync()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "prev close start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mRealsedSurface:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCallback:Lcom/ss/ttm/player/TTSurfaceCallback;

    .line 16
    .line 17
    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/ss/ttm/player/ITTPlayerRef;->prevClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 42
    .line 43
    .line 44
    const-string v1, "prev close end"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/lang/Thread;

    .line 50
    .line 51
    new-instance v1, Lcom/ss/ttm/player/TTPlayerClient$1;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/ss/ttm/player/TTPlayerClient$1;-><init>(Lcom/ss/ttm/player/TTPlayerClient;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/ss/ttm/player/ITTPlayerRef;->reset()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCodecAndSurfaceReuse:I

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 27
    .line 28
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v2, v0, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setSurfaceTimeOut(Landroid/view/Surface;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mErrorCode:I

    .line 45
    .line 46
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/ss/ttm/player/TTPlayerClient;->updateLifeId()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public rotateCamera(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->rotateCamera(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public seekTo(I)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSeekComplete:Z

    .line 9
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public seekTo(II)V
    .locals 1
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSeekComplete:Z

    .line 4
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->seekTo(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public selectTrack(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x105

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setIntOption(II)I

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setABRStrategy(Lcom/ss/ttm/player/ABRStrategy;)V
    .locals 1
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setABRStrategy(Lcom/ss/ttm/player/ABRStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setAIBarrageInfo(Lcom/ss/ttm/player/MaskInfo;)V
    .locals 1
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setAIBarrageInfo(Lcom/ss/ttm/player/MaskInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setAudioProcessor(Lcom/ss/ttm/player/AudioProcessor;)V
    .locals 1
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setAudioProcessor(Lcom/ss/ttm/player/AudioProcessor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setCacheFile(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->setCacheFile(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 11
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "settings"

    .line 12
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result p2

    .line 14
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Can\'t resolve default ringtone"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 17
    const-string v1, "r"

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    return-void

    .line 19
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/TTPlayerClient;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_5
    throw p1

    :catch_0
    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_2

    :catch_1
    if-eqz v0, :cond_6

    goto :goto_1

    .line 21
    :cond_6
    :goto_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/TTPlayerClient;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ss/ttm/player/TTPlayerClient;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    if-eqz p3, :cond_4

    .line 2
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\r\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x14

    invoke-virtual {p2, p3, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setStringOption(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_2
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1

    :cond_4
    :goto_3
    return-void
.end method

.method public setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 41
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null mediadatasource pointer."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setDataSourceFd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_1
    return-void

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_2
    throw v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/TTPlayerClient;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 27
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 28
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    const/16 v0, 0x87

    invoke-virtual {p1, v0, p2, p3}, Lcom/ss/ttm/player/ITTPlayerRef;->setLongOption(IJ)I

    .line 30
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    const/16 p2, 0x88

    invoke-virtual {p1, p2, p4, p5}, Lcom/ss/ttm/player/ITTPlayerRef;->setLongOption(IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mUri:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mUri:Ljava/lang/String;

    .line 36
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 37
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 38
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ss/ttm/player/ITTPlayerRef;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 39
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_2
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCodecAndSurfaceReuse:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v0, "surfaceholder already setted"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCallback:Lcom/ss/ttm/player/TTSurfaceCallback;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCallback:Lcom/ss/ttm/player/TTSurfaceCallback;

    .line 34
    .line 35
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 39
    .line 40
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p1, 0x0

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setSurfaceTimeOut(Landroid/view/Surface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/ss/ttm/player/TTPlayerClient;->updateSurfaceScreenOn()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_2
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method public setFloatOption(IF)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->setFloatOption(IF)I

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    :goto_0
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return p1

    .line 28
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public setFloatOptionArray([I[F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->setFloatOptionArray([I[F)I

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    :goto_0
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return p1

    .line 28
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public setFrameMetadataListener(Lcom/ss/ttm/player/FrameMetadataListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setFrameMetadataListener(Lcom/ss/ttm/player/FrameMetadataListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setIntOption(II)I
    .locals 2

    .line 1
    const/16 v0, 0x515

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    :goto_0
    return v1

    .line 32
    :cond_1
    const/16 v0, 0x29

    .line 33
    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    sput p2, Lcom/ss/ttm/net/AVResolver;->HOST_MAX_CACHE_TIME:I

    .line 37
    .line 38
    return v1

    .line 39
    :cond_2
    const/16 v0, 0x138b

    .line 40
    .line 41
    if-ne p1, v0, :cond_3

    .line 42
    .line 43
    iput p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mDisablePlayerStayAwake:I

    .line 44
    .line 45
    return v1

    .line 46
    :cond_3
    const/16 v0, 0x3b8

    .line 47
    .line 48
    if-ne p1, v0, :cond_4

    .line 49
    .line 50
    iput p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mMediaCodecStopTimeOutMs:I

    .line 51
    .line 52
    return v1

    .line 53
    :cond_4
    const/16 v0, 0x3ef

    .line 54
    .line 55
    if-ne p1, v0, :cond_5

    .line 56
    .line 57
    iput p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCodecAndSurfaceReuse:I

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    const/16 v0, 0x40c

    .line 61
    .line 62
    if-ne p1, v0, :cond_6

    .line 63
    .line 64
    iput p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mIgnoreSurfaceCreated:I

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_6
    const/16 v0, 0x3d8

    .line 68
    .line 69
    if-ne p1, v0, :cond_e

    .line 70
    .line 71
    if-nez p2, :cond_7

    .line 72
    .line 73
    :goto_1
    move p2, v1

    .line 74
    goto :goto_2

    .line 75
    :cond_7
    const/4 v0, 0x1

    .line 76
    if-ne p2, v0, :cond_8

    .line 77
    .line 78
    const/high16 p2, 0x1000000

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_8
    const/4 v0, 0x2

    .line 82
    if-ne p2, v0, :cond_9

    .line 83
    .line 84
    const/high16 p2, 0x2000000

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_9
    const/4 v0, 0x3

    .line 88
    const/high16 v1, 0x2100000

    .line 89
    .line 90
    if-ne p2, v0, :cond_a

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_a
    const/4 v0, 0x4

    .line 94
    if-ne p2, v0, :cond_b

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_b
    const/4 v0, 0x5

    .line 98
    if-ne p2, v0, :cond_c

    .line 99
    .line 100
    const/high16 p2, 0x3000000

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_c
    const/4 v0, 0x6

    .line 104
    if-ne p2, v0, :cond_d

    .line 105
    .line 106
    const/high16 p2, 0x4000000

    .line 107
    .line 108
    :cond_d
    :goto_2
    invoke-static {p2}, Lcom/ss/ttm/utils/AVLogger;->setLogLevel(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_e
    const/16 v0, 0x5dd

    .line 113
    .line 114
    if-ne p1, v0, :cond_f

    .line 115
    .line 116
    invoke-static {p2}, Lcom/ss/ttm/utils/AVLogger;->setLogLevel(I)V

    .line 117
    .line 118
    .line 119
    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 122
    .line 123
    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_10

    .line 129
    .line 130
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 131
    .line 132
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->setIntOption(II)I

    .line 133
    .line 134
    .line 135
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    goto :goto_4

    .line 137
    :catchall_0
    move-exception p1

    .line 138
    goto :goto_5

    .line 139
    :cond_10
    const/4 p1, -0x1

    .line 140
    :goto_4
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 143
    .line 144
    .line 145
    return p1

    .line 146
    :goto_5
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 149
    .line 150
    .line 151
    throw p1
.end method

.method public setIntOptionArray([I[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->setIntOptionArray([I[I)I

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    :goto_0
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return p1

    .line 28
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public setIsMute(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    const/16 v1, 0xc

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setIntOption(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public setLoadControl(Lcom/ss/ttm/player/LoadControl;)V
    .locals 1
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setLoadControl(Lcom/ss/ttm/player/LoadControl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setLongOption(IJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/ITTPlayerRef;->setLongOption(IJ)I

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    :goto_0
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return p1

    .line 28
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public setLongOptionArray([I[J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->setLongOptionArray([I[J)I

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    :goto_0
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return p1

    .line 28
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public setLooping(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setLooping(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setMaskInfo(Lcom/ss/ttm/player/MaskInfo;)V
    .locals 1
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setMaskInfo(Lcom/ss/ttm/player/MaskInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setMediaTransport(Lcom/ss/ttm/player/MediaTransport;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setMediaTransport(Lcom/ss/ttm/player/MediaTransport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setOnBufferingUpdateListener(Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnBufferingUpdateListener:Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 15
    .line 16
    const-wide/16 v0, 0x3

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public setOnCompletionListener(Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnCompletionListener:Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 15
    .line 16
    const-wide/16 v0, 0xd

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public setOnErrorListener(Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnErrorListener:Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    new-array v0, p1, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, p1, :cond_0

    .line 22
    .line 23
    aget-wide v2, v0, v1

    .line 24
    .line 25
    iget-object v4, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 26
    .line 27
    invoke-virtual {v4, v2, v3}, Lcom/ss/ttm/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :array_0
    .array-data 8
        0x0
        0x2d
    .end array-data
.end method

.method public setOnExternInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnExternInfoListener:Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;

    .line 2
    .line 3
    const/16 p1, 0x9

    .line 4
    .line 5
    new-array v0, p1, [J

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, p1, :cond_0

    .line 23
    .line 24
    aget-wide v2, v0, v1

    .line 25
    .line 26
    iget-object v4, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 27
    .line 28
    invoke-virtual {v4, v2, v3}, Lcom/ss/ttm/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x3f
        0x3b
        0x13
        0x21
        0x28
        0x2b
        0x2c
        0x44
        0x55
    .end array-data
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setOnInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnInfoListener:Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;

    .line 2
    .line 3
    const/16 p1, 0x2e

    .line 4
    .line 5
    new-array v0, p1, [J

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, p1, :cond_0

    .line 23
    .line 24
    aget-wide v2, v0, v1

    .line 25
    .line 26
    iget-object v4, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 27
    .line 28
    invoke-virtual {v4, v2, v3}, Lcom/ss/ttm/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x1
        0x4
        0x5
        0x7
        0x8
        0x9
        0xa
        0x15
        0x16
        0x14
        0x18
        0x19
        0x1a
        0x1c
        0x1b
        0x1d
        0x20
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
        0x32
        0x31
        0x2f
        0x33
        0x34
        0x35
        0x36
        0x1e
        0x39
        0x3a
        0x3d
        0x3e
        0x41
        0x42
        0x43
        0x46
        0x47
        0x48
        0x49
        0x52
        0x54
    .end array-data
.end method

.method public setOnLogListener(Lcom/ss/ttm/player/MediaPlayer$OnLogListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mLogListener:Lcom/ss/ttm/player/MediaPlayer$OnLogListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnPreparedListener(Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnPreparedListener:Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 15
    .line 16
    const-wide/16 v0, 0x2

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public setOnSARChangedListener(Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnSARChangedListener:Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 15
    .line 16
    const-wide/16 v0, 0x17

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public setOnSeekCompleteListener(Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnSeekCompleteListener:Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 15
    .line 16
    const-wide/16 v0, 0xc

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public setOnVideoSizeChangedListener(Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mOnVideoSizeChangedListener:Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 15
    .line 16
    const-wide/16 v0, 0x6

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public setPanoVideoControlModel(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    const/16 v1, 0xb

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setIntOption(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/ss/ttm/player/PlaybackParams;->getSpeed()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/high16 v1, -0x40800000    # -1.0f

    .line 19
    .line 20
    cmpl-float v0, v0, v1

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/ss/ttm/player/PlaybackParams;->getSpeed()F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/16 v1, 0x3c

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setFloatOption(IF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mScreenOnWhilePlaying:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-boolean p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mScreenOnWhilePlaying:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/ss/ttm/player/TTPlayerClient;->updateSurfaceScreenOn()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public setStrategyParamsTransport(Lcom/ss/ttm/player/StrategyParamsTransport;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setStrategyParamsTransport(Lcom/ss/ttm/player/StrategyParamsTransport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setStringOption(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->setStringOption(ILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    :goto_0
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return p1

    .line 28
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public setStringOptionArray([I[Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->setStringOptionArray([I[Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    :goto_0
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return p1

    .line 28
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public setSubInfo(Lcom/ss/ttm/player/SubInfo;)V
    .locals 1
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setSubInfo(Lcom/ss/ttm/player/SubInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setSurfaceTimeOut(Landroid/view/Surface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public setSurfaceTimeOut(Landroid/view/Surface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->setSurfaceTimeOut(Landroid/view/Surface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setTraitObject(ILcom/ss/ttm/player/TraitObject;)V
    .locals 1
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->setTraitObject(ILcom/ss/ttm/player/TraitObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setVolume(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    const/4 v2, 0x0

    .line 21
    iput-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, v1

    .line 25
    :goto_1
    const-string v2, "power"

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/os/PowerManager;

    .line 32
    .line 33
    const/high16 v2, 0x20000000

    .line 34
    .line 35
    or-int/2addr p2, v2

    .line 36
    const-class v2, Lcom/ss/ttm/player/TTPlayerClient;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 51
    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public setupMediaCodec()V
    .locals 2
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/ss/ttm/player/ITTPlayerRef;->setupMediaCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/ss/ttm/player/ITTPlayerRef;->start()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/ss/ttm/player/TTPlayerClient;->updateLifeId()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 21
    .line 22
    const/16 v1, 0x320

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttm/player/ITTPlayerRef;->getIntOption(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mRtcPlay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, v0}, Lcom/ss/ttm/player/TTPlayerClient;->stayAwake(Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mConnectedCpu:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCodecAndSurfaceReuse:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mCallback:Lcom/ss/ttm/player/TTSurfaceCallback;

    .line 27
    .line 28
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 35
    .line 36
    invoke-virtual {v2, v0, v1}, Lcom/ss/ttm/player/ITTPlayerRef;->setSurfaceTimeOut(Landroid/view/Surface;I)V

    .line 37
    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mConnectedCpu:Z

    .line 40
    .line 41
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v3, "testlog: mConnected Cpu "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-boolean v3, p0, Lcom/ss/ttm/player/TTPlayerClient;->mConnectedCpu:Z

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v0, p0, v2}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/ss/ttm/player/ITTPlayerRef;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v1}, Lcom/ss/ttm/player/TTPlayerClient;->stayAwake(Z)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 86
    .line 87
    .line 88
    throw v0
.end method

.method public switchStream(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/ITTPlayerRef;->switchStream(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :goto_1
    iget-object p2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    :goto_2
    return-void
.end method

.method public takeScreenshot(Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/TTPlayerClient;->isValid()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 19
    .line 20
    const-wide/16 v1, 0xf

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttm/player/ITTPlayerRef;->setNotifyState(J)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/ITTPlayerRef;->setOnScreenshotListener(Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/ss/ttm/player/ITTPlayerRef;->takeScreenshot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :goto_1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    :goto_2
    return-void
.end method

.method protected updateLifeId()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayer:Lcom/ss/ttm/player/ITTPlayerRef;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/ss/ttm/player/ITTPlayerRef;->getLifeId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayLifeId:I

    .line 13
    .line 14
    sget-object v0, Lcom/ss/ttm/player/TTPlayerClient;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "reset.mPlayLifeId"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/ss/ttm/player/TTPlayerClient;->mPlayLifeId:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 64
    .line 65
    .line 66
    :cond_1
    throw v0
.end method

.method public updateSurfaceScreenOn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mDisablePlayerStayAwake:I

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mScreenOnWhilePlaying:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/ss/ttm/player/TTPlayerClient;->mStayAwake:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

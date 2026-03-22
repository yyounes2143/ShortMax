.class public Lcom/mbridge/msdk/playercommon/VideoNativePlayer;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;


# static fields
.field public static final INTERVAL_TIME_PLAY_TIME_CD_THREAD:I = 0x3e8

.field public static final INTERVAL_TIME_PLAY_TIME_PROGRESS:I = 0x64

.field public static final TAG:Ljava/lang/String; = "VideoNativePlayer"


# instance fields
.field private exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

.field private mBufferTime:I

.field private mBufferTimeoutTimer:Ljava/util/Timer;

.field private mCurrentPosition:J

.field private final mHandler:Landroid/os/Handler;

.field private mHasChaoDi:Z

.field private mHasPrepare:Z

.field private mInnerVFPLisener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

.field private mIsAllowLoopPlay:Z

.field private mIsBuffering:Z

.field private mIsComplete:Z

.field private mIsFrontDesk:Z

.field private mIsNeedBufferingTimeout:Z

.field private mIsOpenSound:Z

.field private mIsPlaying:Z

.field private mIsStartPlay:Z

.field private mLoadingView:Landroid/view/View;

.field private mNetUrl:Ljava/lang/String;

.field private mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

.field private mPlayUrl:Ljava/lang/String;

.field private mSurfaceHolder:Landroid/view/Surface;

.field private mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

.field private playProgressMSRunnable:Ljava/lang/Runnable;

.field private playProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsStartPlay:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasChaoDi:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    iput v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsOpenSound:Z

    .line 28
    .line 29
    new-instance v0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$1;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$1;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance v0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$2;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressRunnable:Ljava/lang/Runnable;

    .line 46
    .line 47
    new-instance v0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$3;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressMSRunnable:Ljava/lang/Runnable;

    .line 53
    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$1100(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferingStarOnMainThread(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1200(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mLoadingView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mInnerVFPLisener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsStartPlay:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsStartPlay:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayStartOnMainThread(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayProgressOnMainThread(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$502(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$700(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayProgressMSOnMainThread(JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private cancelBufferTimeoutTimer()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTimeoutTimer:Ljava/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "VideoNativePlayer"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method private cancelPlayProgressTimer()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressMSRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "VideoNativePlayer"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private hideLoading()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$6;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$6;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "VideoNativePlayer"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method private postOnBufferinEndOnMainThread()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$10;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$10;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "VideoNativePlayer"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method private postOnBufferingStarOnMainThread(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$9;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "VideoNativePlayer"

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlayCompletedOnMainThread()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$14;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$14;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "VideoNativePlayer"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlayErrorOnMainThread(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$12;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v1, 0x2a

    .line 19
    .line 20
    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/same/report/j;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "VideoNativePlayer"

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_2
    return-void
.end method

.method private postOnPlayProgressMSOnMainThread(JJ)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v7, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;

    .line 6
    .line 7
    move-object v1, v7

    .line 8
    move-object v2, p0

    .line 9
    move-wide v3, p1

    .line 10
    move-wide v5, p3

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$8;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;JJ)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "VideoNativePlayer"

    .line 24
    .line 25
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlayProgressOnMainThread(II)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$7;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "VideoNativePlayer"

    .line 20
    .line 21
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$13;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "VideoNativePlayer"

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method private postOnPlayStartOnMainThread(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$11;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "VideoNativePlayer"

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method private startBufferingTimer(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "VideoNativePlayer"

    .line 6
    .line 7
    const-string/jumbo v0, "\u4e0d\u9700\u8981\u7f13\u51b2\u8d85\u65f6\u529f\u80fd"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelBufferTimeoutTimer()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/util/Timer;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTimeoutTimer:Ljava/util/Timer;

    .line 23
    .line 24
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    .line 30
    .line 31
    mul-int/lit16 p1, p1, 0x3e8

    .line 32
    .line 33
    int-to-long v2, p1

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private startPlayProgressTimer()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressRunnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressMSRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "VideoNativePlayer"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public closeSound()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "VideoNativePlayer"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public exoPlayerIsPlaying()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method public getCurPosition()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    .line 2
    .line 3
    long-to-int v0, v0

    .line 4
    return v0
.end method

.method public hasPrepare()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 2
    .line 3
    return v0
.end method

.method public initBufferIngParam(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    .line 4
    .line 5
    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    .line 7
    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "mIsNeedBufferingTimeout:"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "  mMaxBufferTime:"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "VideoNativePlayer"

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public initParameter(Ljava/lang/String;ZZLandroid/view/View;Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)Z
    .locals 4

    .line 1
    const-string v0, "VideoNativePlayer"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const-string v3, "MediaPlayer init error"

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    :try_start_1
    const-string p1, "netUrl\u4e3a\u7a7a return"

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-nez p4, :cond_1

    .line 24
    .line 25
    const-string p1, "loadingView\u4e3a\u7a7a return"

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsOpenSound:Z

    .line 35
    .line 36
    iput-boolean p3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    .line 37
    .line 38
    iput-object p4, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mLoadingView:Landroid/view/View;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p5, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_1

    .line 46
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    return v1
.end method

.method public isComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPlayIng()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "VideoNativePlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public loadingViewIsVisible()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mLoadingView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "VideoNativePlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public onCompletion()V
    .locals 3

    .line 1
    const-string v0, "VideoNativePlayer"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    iput-wide v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayCompletedOnMainThread()V

    .line 17
    .line 18
    .line 19
    const-string v1, "======onCompletion"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "VideoNativePlayer"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onError what:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " extra:"

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 36
    .line 37
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    .line 38
    .line 39
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    const/4 p1, 0x1

    .line 52
    return p1
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onPlaybackParametersChanged : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget p1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->speed:F

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "VideoNativePlayer"

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onPlayerError(Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget v0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "Play error, because have a UnexpectedException."

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const-string v0, "Play error, because have a RendererException."

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_2
    const-string v0, "Play error, because have a SourceException."

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_3
    :goto_0
    const-string v0, "Play error and ExoPlayer have not message."

    .line 24
    .line 25
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "onPlayerError : "

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "VideoNativePlayer"

    .line 71
    .line 72
    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget p1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    .line 76
    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->onError(ILjava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "onPlaybackStateChanged : "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "VideoNativePlayer"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    if-eq p2, p1, :cond_3

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-eq p2, v1, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x3

    .line 30
    const/4 v1, 0x0

    .line 31
    if-eq p2, p1, :cond_1

    .line 32
    .line 33
    const/4 p1, 0x4

    .line 34
    if-eq p2, p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p1, "onPlaybackStateChanged : Ended : PLAY ENDED"

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->onCompletion()V

    .line 46
    .line 47
    .line 48
    iget-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    .line 49
    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string p1, "onPlaybackStateChanged : READY"

    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferinEndOnMainThread()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->onPrepared()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const-string p2, "onPlaybackStateChanged : Buffering"

    .line 73
    .line 74
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    .line 80
    .line 81
    .line 82
    const-string p1, "play buffering tiemout"

    .line 83
    .line 84
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startBufferingTimer(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    const-string p1, "onPlaybackStateChanged : IDLE"

    .line 89
    .line 90
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_0
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onPositionDiscontinuity : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "VideoNativePlayer"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->onCompletion()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 4

    .line 1
    const-string v0, "VideoNativePlayer"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onPrepared:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferinEndOnMainThread()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "onprepare mCurrentPosition:"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-wide v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    .line 58
    .line 59
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, " mHasPrepare\uff1a"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_1
    const-string v1, "At background, Do not process"

    .line 81
    .line 82
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    .line 1
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTimelineChanged(Lcom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onTracksChanged(Lcom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .line 1
    return-void
.end method

.method public openSound()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "VideoNativePlayer"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    .line 1
    const-string v0, "VideoNativePlayer"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "player pause"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "pause !mHasPrepare retrun"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "pause "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 59
    .line 60
    .line 61
    iput-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_1
    return-void
.end method

.method public play()V
    .locals 2

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 29
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    .line 30
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public play(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "VideoNativePlayer"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8fdb\u6765\u64ad\u653e currentionPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v1, p3

    .line 2
    iput-wide v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    const-string p1, "play url is null"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->setDataSource(Landroid/content/Context;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPlayUrl:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->releasePlayer()V

    .line 13
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 14
    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public play(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .locals 2

    const-string v0, "VideoNativePlayer"

    .line 15
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    const-string p1, "play url is null"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    .line 18
    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    .line 21
    iput-object p3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mSurfaceHolder:Landroid/view/Surface;

    .line 22
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->setDataSource(Landroid/content/Context;)V

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPlayUrl:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 24
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->releasePlayer()V

    .line 26
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 27
    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public releasePlayer()V
    .locals 3

    .line 1
    const-string v0, "VideoNativePlayer"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "releasePlayer"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelBufferTimeoutTimer()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->stop()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->release()V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v0, v2, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public replaySameSource(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->play(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "VideoNativePlayer"

    .line 38
    .line 39
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->releasePlayer()V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 46
    .line 47
    .line 48
    const-string p1, "mediaplayer cannot play"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method

.method public setDataSource(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "VideoNativePlayer"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    const-string/jumbo v2, "setDataSource begin"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->stop()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catch_0
    move-exception v2

    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_1
    :goto_2
    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsOpenSound:Z

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->closeSound()V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_6

    .line 59
    .line 60
    new-instance v2, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;

    .line 61
    .line 62
    invoke-direct {v2, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    new-instance v3, Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;

    .line 66
    .line 67
    invoke-direct {v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v4, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;

    .line 71
    .line 72
    invoke-direct {v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lcom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lcom/mbridge/msdk/playercommon/exoplayer2/LoadControl;)Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    .line 88
    .line 89
    const-string v4, "http"

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    const-string v4, "MBridge_ExoPlayer"

    .line 96
    .line 97
    if-nez v3, :cond_4

    .line 98
    .line 99
    :try_start_3
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    .line 100
    .line 101
    const-string v5, "https"

    .line 102
    .line 103
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_3

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    new-instance v3, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;

    .line 111
    .line 112
    new-instance v5, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;

    .line 113
    .line 114
    invoke-direct {v5, p1, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v3, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_4
    :goto_3
    new-instance v3, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;

    .line 128
    .line 129
    new-instance v5, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    .line 130
    .line 131
    invoke-direct {v5, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v3, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iput-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 142
    .line 143
    :goto_4
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 144
    .line 145
    iget-boolean v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    .line 146
    .line 147
    if-eqz v3, :cond_5

    .line 148
    .line 149
    const/4 v3, 0x2

    .line 150
    goto :goto_5

    .line 151
    :cond_5
    const/4 v3, 0x0

    .line 152
    :goto_5
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 156
    .line 157
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    .line 160
    .line 161
    .line 162
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 163
    .line 164
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 168
    .line 169
    invoke-virtual {v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->addListener(Lcom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mSurfaceHolder:Landroid/view/Surface;

    .line 173
    .line 174
    if-eqz v2, :cond_7

    .line 175
    .line 176
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 177
    .line 178
    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 179
    .line 180
    .line 181
    :cond_7
    const-string v2, "mediaplayer prepare timeout"

    .line 182
    .line 183
    invoke-direct {p0, v2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startBufferingTimer(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string/jumbo v2, "setDataSource done"

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 190
    .line 191
    .line 192
    goto :goto_8

    .line 193
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 201
    .line 202
    .line 203
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    const-string v3, "set data source error"

    .line 210
    .line 211
    const-string v4, "mediaplayer cannot play"

    .line 212
    .line 213
    if-eqz v2, :cond_8

    .line 214
    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string/jumbo v1, "setDataSource error : Is Online source : "

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-direct {p0, v4}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-direct {p0, v3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_8
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-nez v2, :cond_9

    .line 252
    .line 253
    iget-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasChaoDi:Z

    .line 254
    .line 255
    if-nez v2, :cond_9

    .line 256
    .line 257
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasChaoDi:Z

    .line 258
    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string/jumbo v2, "setDataSource error : Will play online source : "

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    .line 283
    .line 284
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->setDataSource(Landroid/content/Context;)V

    .line 290
    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_9
    invoke-direct {p0, v4}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :goto_7
    invoke-direct {p0, v3}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :goto_8
    return-void
.end method

.method public setIsComplete(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIsFrontDesk(Z)V
    .locals 3

    .line 1
    const-string v0, "VideoNativePlayer"

    .line 2
    .line 3
    :try_start_0
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "isFrontDesk: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p1, "frontStage"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const-string p1, "backStage"

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_2
    return-void
.end method

.method public setSelfVideoFeedsPlayerListener(Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mInnerVFPLisener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoFeedsPlayerListener(Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lcom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    .line 2
    .line 3
    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$5;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$5;-><init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "VideoNativePlayer"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->start(Landroid/view/Surface;)V

    return-void
.end method

.method public start(I)V
    .locals 4

    const-string v0, "VideoNativePlayer"

    .line 13
    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v1, :cond_0

    .line 14
    const-string/jumbo p1, "start mHasprepare is false return"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->play()V

    .line 18
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public start(Landroid/view/Surface;)V
    .locals 3

    const-string v0, "VideoNativePlayer"

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v1, :cond_0

    .line 3
    const-string/jumbo p1, "start !mHasPrepare retrun"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    if-eqz p1, :cond_1

    .line 6
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mSurfaceHolder:Landroid/view/Surface;

    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->play()V

    .line 9
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    .line 10
    iput-boolean v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    goto :goto_2

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exoplayer is null : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 12
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const-string v0, "VideoNativePlayer"

    .line 2
    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v1, "stop !mHasPrepare retrun"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->stop()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_1
    return-void
.end method

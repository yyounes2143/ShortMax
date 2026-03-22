.class Lcom/ss/ttm/player/AJMediaCodec;
.super Ljava/lang/Object;
.source "AJMediaCodec.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Lcom/ss/ttm/player/Keep;
.end annotation


# static fields
.field private static final AV_TRC_ARIB_STD_B67:I = 0x12

.field private static final AV_TRC_SMPTE2084:I = 0x10

.field private static final CODEC_ERROR:I = -0x2710

.field private static final CODEC_EXCEPTION_ERROR:I = -0x2711

.field private static final CODEC_ILLEGAL_ARGUMENT:I = -0x2713

.field private static final CODEC_ILLEGAL_STATE:I = -0x2712

.field private static final CODEC_TIME_OUT:I = 0xbb8

.field private static final FIX_VERSION:D = 0.18041

.field private static final INPUT_TIMEOUT_US:J = 0x7530L

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final NO_VALUE:I = -0x1

.field private static final PIXEL_FORMAT_NV12:I = 0x3

.field private static final PIXEL_FORMAT_YUV420P:I = 0x0

.field private static final TAG:Ljava/lang/String; = "JAJMediaCodec"

.field private static final VENDOR_OPPO_PROPERTY:Ljava/lang/String; = "persist.sys.aweme.hdsupport"

.field private static final VERSION_PROPERTY:Ljava/lang/String; = "ro.config.hw_codec_support"

.field private static final mAsyncLock:Ljava/lang/Object;

.field private static final mAudioHWDecoderCodecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mCodecInstanceNums:I

.field private static final mCodecListLock:Ljava/lang/Object;

.field private static mDeviceNeedsSetOutputSurfaceWorkaround:Z

.field private static mEnableMediaCodecSyncClose:I

.field private static mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

.field private static mIsByteVC1Blocklist:Z

.field private static mIsByteVC1BlocklistEnable:I

.field private static mIsInitDetected:Z

.field private static mNeedByteVC1WorkAround:Z

.field private static final mSingleCodecCond:Ljava/util/concurrent/locks/Condition;

.field private static final mSingleCodecLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final mVideoHWDecoderCodecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAJMediaFormat:Lcom/ss/ttm/player/AJMediaFormat;

.field private mAsyncHandler:Landroid/os/Handler;

.field private mAsyncThread:Landroid/os/HandlerThread;

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCodecInfo:Landroid/media/MediaCodecInfo;

.field private mCodecIsClosed:Z

.field private mCodecType:Ljava/lang/String;

.field private mDummySurface:Lcom/ss/ttm/player/DummySurface;

.field private mEnableSingleCodec:I

.field private mExceptionInfo:Ljava/lang/String;

.field private mFixedMemcpyCrash:I

.field private mHandler:J

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mInputBuffersValid:Z

.field private mMcMode:I

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mOutputMediaFormat:Landroid/media/MediaFormat;

.field private mPendingFlushCount:I

.field private mSupportAdaptivePlayBack:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttm/player/AJMediaCodec;->mVideoHWDecoderCodecs:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/ss/ttm/player/AJMediaCodec;->mAudioHWDecoderCodecs:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/ss/ttm/player/AJMediaCodec;->mCodecListLock:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/ss/ttm/player/AJMediaCodec;->mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 24
    .line 25
    sput-boolean v0, Lcom/ss/ttm/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 26
    .line 27
    sput-boolean v0, Lcom/ss/ttm/player/AJMediaCodec;->mIsInitDetected:Z

    .line 28
    .line 29
    sput-boolean v0, Lcom/ss/ttm/player/AJMediaCodec;->mIsByteVC1Blocklist:Z

    .line 30
    .line 31
    sput-boolean v0, Lcom/ss/ttm/player/AJMediaCodec;->mNeedByteVC1WorkAround:Z

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    sput v1, Lcom/ss/ttm/player/AJMediaCodec;->mIsByteVC1BlocklistEnable:I

    .line 35
    .line 36
    sput v0, Lcom/ss/ttm/player/AJMediaCodec;->mEnableMediaCodecSyncClose:I

    .line 37
    .line 38
    new-instance v1, Ljava/lang/Object;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v1, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncLock:Ljava/lang/Object;

    .line 44
    .line 45
    sput v0, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInstanceNums:I

    .line 46
    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecCond:Ljava/util/concurrent/locks/Condition;

    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffersValid:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 9
    .line 10
    new-instance v2, Lcom/ss/ttm/player/AJMediaFormat;

    .line 11
    .line 12
    invoke-direct {v2}, Lcom/ss/ttm/player/AJMediaFormat;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mAJMediaFormat:Lcom/ss/ttm/player/AJMediaFormat;

    .line 16
    .line 17
    iput v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMcMode:I

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mHandler:J

    .line 22
    .line 23
    iput v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mPendingFlushCount:I

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mCodecIsClosed:Z

    .line 26
    .line 27
    iput-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mCodecType:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    iput v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mSupportAdaptivePlayBack:I

    .line 33
    .line 34
    iput v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mFixedMemcpyCrash:I

    .line 35
    .line 36
    iput v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mEnableSingleCodec:I

    .line 37
    .line 38
    sget-boolean v1, Lcom/ss/ttm/player/AJMediaCodec;->mIsInitDetected:Z

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    sget-object v1, Lcom/ss/ttm/utils/Util;->HARDWARE:Ljava/lang/String;

    .line 44
    .line 45
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v3, "mt"

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    sget v1, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 60
    .line 61
    const/16 v3, 0x1a

    .line 62
    .line 63
    if-ge v1, v3, :cond_0

    .line 64
    .line 65
    move v0, v2

    .line 66
    :cond_0
    sput-boolean v0, Lcom/ss/ttm/player/AJMediaCodec;->mNeedByteVC1WorkAround:Z

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/ss/ttm/player/AJMediaCodec;->isHisiByteVC1BlockList()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    invoke-direct {p0}, Lcom/ss/ttm/player/AJMediaCodec;->isMtkByteVC1BlockList()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    :cond_1
    sput-boolean v2, Lcom/ss/ttm/player/AJMediaCodec;->mIsByteVC1Blocklist:Z

    .line 81
    .line 82
    :cond_2
    invoke-static {}, Lcom/ss/ttm/player/AJMediaCodec;->codecNeedsSetOutputSurfaceWorkaround()Z

    .line 83
    .line 84
    .line 85
    sput-boolean v2, Lcom/ss/ttm/player/AJMediaCodec;->mIsInitDetected:Z

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v1, "JAJMediaCodec#^workaround:"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    sget-boolean v1, Lcom/ss/ttm/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "JAJMediaCodec"

    .line 107
    .line 108
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->InfoTrackLife(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private static final native _clearBufferIndex(J)V
.end method

.method private static final native _onEmptyBuffer(JI)V
.end method

.method private static final native _onError(J)V
.end method

.method private static final native _onFilledBuffer(JIIIJI)V
.end method

.method private static final native _onFormatChanged(JIIIIIIIII)V
.end method

.method private static final native _setSurfaceCompleted(J)V
.end method

.method static synthetic access$000(Lcom/ss/ttm/player/AJMediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1000(Lcom/ss/ttm/player/AJMediaCodec;Landroid/media/MediaCodec;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->releaseCodec(Landroid/media/MediaCodec;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1100(Lcom/ss/ttm/player/AJMediaCodec;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->onFlushCompleted(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1200(Lcom/ss/ttm/player/AJMediaCodec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/AJMediaCodec;->onSetSurfaceCompleted()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/ss/ttm/player/AJMediaCodec;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mCodecIsClosed:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/ss/ttm/player/AJMediaCodec;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mHandler:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$400(JI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/ss/ttm/player/AJMediaCodec;->_onEmptyBuffer(JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(JIIIJI)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/ss/ttm/player/AJMediaCodec;->_onFilledBuffer(JIIIJI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->_onError(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$702(Lcom/ss/ttm/player/AJMediaCodec;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mAJMediaFormat:Lcom/ss/ttm/player/AJMediaFormat;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(JIIIIIIIII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Lcom/ss/ttm/player/AJMediaCodec;->_onFormatChanged(JIIIIIIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static ceilDivide(II)I
    .locals 0

    .line 1
    add-int/2addr p0, p1

    .line 2
    add-int/lit8 p0, p0, -0x1

    .line 3
    .line 4
    div-int/2addr p0, p1

    .line 5
    return p0
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string v1, "OMX.SEC.avc.dec"

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    const-string v1, "OMX.SEC.avc.dec.secure"

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    :cond_0
    const/16 v1, 0x13

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    sget-object v0, Lcom/ss/ttm/utils/Util;->MODEL:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "SM-G800"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const-string v0, "OMX.Exynos.avc.dec"

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    const-string v0, "OMX.Exynos.avc.dec.secure"

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 59
    :goto_1
    return p0
.end method

.method private static codecNeedsSetOutputSurfaceWorkaround()Z
    .locals 8

    .line 1
    const-class v0, Lcom/ss/ttm/player/AJMediaCodec;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/ss/ttm/player/AJMediaCodec;->mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 5
    .line 6
    if-nez v1, :cond_b

    .line 7
    .line 8
    sget v1, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x1b

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-gt v1, v2, :cond_0

    .line 14
    .line 15
    const-string v4, "dangal"

    .line 16
    .line 17
    sget-object v5, Lcom/ss/ttm/utils/Util;->DEVICE:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    sput-boolean v3, Lcom/ss/ttm/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_0
    if-lt v1, v2, :cond_1

    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_1
    sget-object v1, Lcom/ss/ttm/utils/Util;->DEVICE:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const v4, 0x18401

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x2

    .line 47
    const/4 v7, -0x1

    .line 48
    if-eq v2, v4, :cond_4

    .line 49
    .line 50
    const v4, 0x332327

    .line 51
    .line 52
    .line 53
    if-eq v2, v4, :cond_3

    .line 54
    .line 55
    const v4, 0x6f373556

    .line 56
    .line 57
    .line 58
    if-eq v2, v4, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const-string v2, "santoni"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    move v1, v6

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const-string v2, "mido"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    move v1, v3

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const-string v2, "deb"

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    move v1, v5

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    :goto_0
    move v1, v7

    .line 92
    :goto_1
    if-eqz v1, :cond_6

    .line 93
    .line 94
    if-eq v1, v3, :cond_6

    .line 95
    .line 96
    if-eq v1, v6, :cond_6

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    sput-boolean v3, Lcom/ss/ttm/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 100
    .line 101
    :goto_2
    sget-object v1, Lcom/ss/ttm/utils/Util;->MODEL:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const v4, 0x1e9d52

    .line 108
    .line 109
    .line 110
    if-eq v2, v4, :cond_8

    .line 111
    .line 112
    const v4, 0x1e9d5f

    .line 113
    .line 114
    .line 115
    if-eq v2, v4, :cond_7

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_7
    const-string v2, "AFTN"

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_9

    .line 125
    .line 126
    move v5, v3

    .line 127
    goto :goto_4

    .line 128
    :cond_8
    const-string v2, "AFTA"

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_9

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_9
    :goto_3
    move v5, v7

    .line 138
    :goto_4
    if-eqz v5, :cond_a

    .line 139
    .line 140
    if-eq v5, v3, :cond_a

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_a
    sput-boolean v3, Lcom/ss/ttm/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 144
    .line 145
    :goto_5
    sput-boolean v3, Lcom/ss/ttm/player/AJMediaCodec;->mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 146
    .line 147
    :cond_b
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    sget-boolean v0, Lcom/ss/ttm/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 149
    .line 150
    return v0

    .line 151
    :goto_6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    throw v1
.end method

.method private createDummySurface()V
    .locals 2

    .line 1
    const-string v0, "JAJMediaCodec"

    .line 2
    .line 3
    const-string v1, "create dummy surface"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lcom/ss/ttm/player/DummySurface;->newInstanceV17(Z)Lcom/ss/ttm/player/DummySurface;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    .line 14
    .line 15
    return-void
.end method

.method private static getMaxInputSize(Ljava/lang/String;II)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_8

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    goto :goto_4

    .line 7
    :cond_0
    const-string/jumbo v1, "video/3gpp"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x2

    .line 15
    if-nez v1, :cond_4

    .line 16
    .line 17
    const-string/jumbo v1, "video/mp4v-es"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-string/jumbo v1, "video/avc"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    const-string p0, "BRAVIA 4K 2015"

    .line 37
    .line 38
    sget-object v1, Lcom/ss/ttm/utils/Util;->MODEL:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    return v0

    .line 47
    :cond_2
    const/16 p0, 0x10

    .line 48
    .line 49
    invoke-static {p1, p0}, Lcom/ss/ttm/player/AJMediaCodec;->ceilDivide(II)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p2, p0}, Lcom/ss/ttm/player/AJMediaCodec;->ceilDivide(II)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    mul-int/2addr p1, p0

    .line 58
    mul-int/lit16 p1, p1, 0x100

    .line 59
    .line 60
    :goto_0
    move p0, v2

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    :cond_4
    :goto_1
    mul-int/2addr p1, p2

    .line 72
    goto :goto_0

    .line 73
    :cond_5
    const-string/jumbo v1, "video/hevc"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_7

    .line 81
    .line 82
    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_6

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    return v0

    .line 93
    :cond_7
    :goto_2
    mul-int/2addr p1, p2

    .line 94
    const/4 p0, 0x4

    .line 95
    :goto_3
    mul-int/lit8 p1, p1, 0x3

    .line 96
    .line 97
    mul-int/2addr p0, v2

    .line 98
    div-int/2addr p1, p0

    .line 99
    return p1

    .line 100
    :cond_8
    :goto_4
    return v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "get"

    .line 10
    .line 11
    filled-new-array {v0, v0}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    :catchall_0
    return-object p1
.end method

.method private isAdaptivePlaybackV19()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mCodecType:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, "adaptive-playback"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return v0

    .line 21
    :catch_0
    :cond_0
    return v1
.end method

.method private isHisiByteVC1BlockList()Z
    .locals 4

    .line 1
    const-string v0, "ro.board.platform"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttm/player/AJMediaCodec;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget v1, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x1a

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v1, "kirin960"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const-string v1, "hi3660"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    :cond_0
    const-string v0, "ro.config.hw_codec_support"

    .line 33
    .line 34
    const-string v1, "0.0"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/ss/ttm/player/AJMediaCodec;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 41
    .line 42
    .line 43
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    const-string v0, "JAJMediaCodec"

    .line 46
    .line 47
    const-string/jumbo v1, "vendor property abnormal"

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    :goto_0
    const-wide v2, 0x3fc717acc4ef88b9L    # 0.18041

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmpg-double v0, v0, v2

    .line 61
    .line 62
    if-gez v0, :cond_1

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    return v0

    .line 66
    :cond_1
    const/4 v0, 0x0

    .line 67
    return v0
.end method

.method private isLowLatencyDecode()I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mCodecType:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "low-latency"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return v0

    .line 27
    :catch_0
    :cond_0
    return v2
.end method

.method private isMtkByteVC1BlockList()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttm/utils/Util;->HARDWARE:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "mt6763"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string v1, "mt6757"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string v1, "mt6739"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    const-string v1, "mt6750"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 45
    :goto_1
    return v0
.end method

.method private static maybeSetCsdBuffers(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "csd-"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method private onFlushCompleted(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mCodecIsClosed:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mPendingFlushCount:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    iput v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mPendingFlushCount:I

    .line 17
    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :cond_1
    if-gez v1, :cond_2

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :cond_2
    iget-wide v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mHandler:J

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/ss/ttm/player/AJMediaCodec;->_clearBufferIndex(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    :try_start_2
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-wide v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mHandler:J

    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/ss/ttm/player/AJMediaCodec;->_onError(J)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const-string v1, "JAJMediaCodec"

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v1, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    throw p1
.end method

.method private onSetSurfaceCompleted()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mCodecIsClosed:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "JAJMediaCodec"

    .line 13
    .line 14
    const-string/jumbo v2, "ttmn setSurfaceCompleted"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, p0, v2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mHandler:J

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/ss/ttm/player/AJMediaCodec;->_setSurfaceCompleted(J)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v1
.end method

.method private releaseCodec(Landroid/media/MediaCodec;)V
    .locals 5

    .line 1
    const-string v0, "codec release end"

    .line 2
    .line 3
    const-string v1, "JAJMediaCodec"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/ss/ttm/player/DummySurface;->release()V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    .line 21
    .line 22
    :cond_1
    iget p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mEnableSingleCodec:I

    .line 23
    .line 24
    if-ne p1, v3, :cond_2

    .line 25
    .line 26
    :try_start_1
    sget-object p1, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 29
    .line 30
    .line 31
    sget v2, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInstanceNums:I

    .line 32
    .line 33
    sub-int/2addr v2, v3

    .line 34
    sput v2, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInstanceNums:I

    .line 35
    .line 36
    sget-object v2, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecCond:Ljava/util/concurrent/locks/Condition;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    sget-object v0, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :catch_0
    sget-object p1, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    :goto_1
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_4

    .line 59
    :catchall_1
    move-exception p1

    .line 60
    iget-object v4, p0, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    iget-object v4, p0, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/ss/ttm/player/DummySurface;->release()V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    .line 70
    .line 71
    :cond_3
    iget v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mEnableSingleCodec:I

    .line 72
    .line 73
    if-ne v2, v3, :cond_4

    .line 74
    .line 75
    :try_start_2
    sget-object v2, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 78
    .line 79
    .line 80
    sget v4, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInstanceNums:I

    .line 81
    .line 82
    sub-int/2addr v4, v3

    .line 83
    sput v4, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInstanceNums:I

    .line 84
    .line 85
    sget-object v3, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecCond:Ljava/util/concurrent/locks/Condition;

    .line 86
    .line 87
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 88
    .line 89
    .line 90
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :catchall_2
    move-exception p1

    .line 95
    sget-object v0, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :catch_1
    sget-object v2, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    :goto_3
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :catch_2
    iget-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    .line 109
    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    iget-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/ss/ttm/player/DummySurface;->release()V

    .line 115
    .line 116
    .line 117
    iput-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    .line 118
    .line 119
    :cond_5
    iget p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mEnableSingleCodec:I

    .line 120
    .line 121
    if-ne p1, v3, :cond_2

    .line 122
    .line 123
    :try_start_3
    sget-object p1, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 126
    .line 127
    .line 128
    sget v2, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInstanceNums:I

    .line 129
    .line 130
    sub-int/2addr v2, v3

    .line 131
    sput v2, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInstanceNums:I

    .line 132
    .line 133
    sget-object v2, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecCond:Ljava/util/concurrent/locks/Condition;

    .line 134
    .line 135
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catchall_3
    move-exception p1

    .line 140
    sget-object v0, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :catch_3
    sget-object p1, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :goto_4
    return-void
.end method

.method private renderOutputBufferV21(IJ)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :catch_0
    const/16 p1, -0x2710

    .line 9
    .line 10
    return p1
.end method

.method private setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    .line 3
    .line 4
    .line 5
    iget p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMcMode:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mFixedMemcpyCrash:I

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    iget-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncHandler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v2, Lcom/ss/ttm/player/AJMediaCodec$4;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/ss/ttm/player/AJMediaCodec$4;-><init>(Lcom/ss/ttm/player/AJMediaCodec;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    monitor-exit p1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :goto_1
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    .line 36
    .line 37
    .line 38
    const-string v1, "JAJMediaCodec"

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v3, "setoutputsurface failed = "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v1, p0, v2}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    if-ne p2, v1, :cond_1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    const/4 v0, 0x2

    .line 69
    :goto_2
    invoke-virtual {v1, v0}, Lcom/ss/ttm/player/DummySurface;->addEvent(I)V

    .line 70
    .line 71
    .line 72
    :cond_2
    instance-of p1, p1, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    const/16 p1, -0x2713

    .line 77
    .line 78
    return p1

    .line 79
    :cond_3
    const/4 p1, -0x1

    .line 80
    return p1
.end method

.method private supportSetSurface()Z
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ss/ttm/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method


# virtual methods
.method public MTKByteVC1NeedWorkAround()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/ttm/player/AJMediaCodec;->mNeedByteVC1WorkAround:Z

    .line 2
    .line 3
    return v0
.end method

.method public close()V
    .locals 6
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-string v0, "JAJMediaCodec"

    .line 2
    .line 3
    const-string/jumbo v1, "~JAJMediaCodec#{"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/ss/ttm/player/AJMediaCodec;->stop()I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    iget v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMcMode:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    sget v2, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 29
    .line 30
    const/16 v4, 0x17

    .line 31
    .line 32
    if-lt v2, v4, :cond_1

    .line 33
    .line 34
    sget-object v2, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v4, p0, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncThread:Landroid/os/HandlerThread;

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/os/HandlerThread;->quit()Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/ss/ttm/player/AJMediaCodec;->mHandler:J

    .line 48
    .line 49
    invoke-static {v4, v5}, Lcom/ss/ttm/player/AJMediaCodec;->_clearBufferIndex(J)V

    .line 50
    .line 51
    .line 52
    iput-boolean v3, p0, Lcom/ss/ttm/player/AJMediaCodec;->mCodecIsClosed:Z

    .line 53
    .line 54
    iput-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 55
    .line 56
    monitor-exit v2

    .line 57
    goto :goto_2

    .line 58
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw v0

    .line 60
    :cond_1
    iput-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 61
    .line 62
    :goto_2
    sget v1, Lcom/ss/ttm/player/AJMediaCodec;->mEnableMediaCodecSyncClose:I

    .line 63
    .line 64
    if-lez v1, :cond_2

    .line 65
    .line 66
    const-string v1, "JAJMediaCodec"

    .line 67
    .line 68
    const-string/jumbo v2, "sync releaseCodec"

    .line 69
    .line 70
    .line 71
    invoke-static {v1, p0, v2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v0}, Lcom/ss/ttm/player/AJMediaCodec;->releaseCodec(Landroid/media/MediaCodec;)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_2
    :try_start_1
    new-instance v1, Lcom/ss/ttm/player/AJMediaCodec$2;

    .line 79
    .line 80
    invoke-direct {v1, p0, v0}, Lcom/ss/ttm/player/AJMediaCodec$2;-><init>(Lcom/ss/ttm/player/AJMediaCodec;Landroid/media/MediaCodec;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lcom/ss/ttm/player/AVThreadPool;->addTask(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :catchall_1
    const-string v1, "JAJMediaCodec"

    .line 88
    .line 89
    const-string v2, "new thread failed"

    .line 90
    .line 91
    invoke-static {v1, p0, v2}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v0}, Lcom/ss/ttm/player/AJMediaCodec;->releaseCodec(Landroid/media/MediaCodec;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_3
    const-string v0, "JAJMediaCodec"

    .line 98
    .line 99
    const-string/jumbo v1, "~JAJMediaCodec#}"

    .line 100
    .line 101
    .line 102
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->InfoTrackLife(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public configure(IIIIILjava/lang/String;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/view/Surface;ZZIIZIZZIII)I
    .locals 14
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    move-object v1, p0

    move v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move/from16 v5, p11

    move/from16 v6, p13

    move/from16 v7, p14

    .line 1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ttmn: configure ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", surfaceConfigure ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "JAJMediaCodec"

    invoke-static {v9, p0, v8}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v8, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    const/4 v10, -0x1

    const/16 v11, 0x15

    if-lt v8, v11, :cond_0

    .line 3
    iget v12, v1, Lcom/ss/ttm/player/AJMediaCodec;->mMcMode:I

    invoke-virtual {p0, v12}, Lcom/ss/ttm/player/AJMediaCodec;->setCallback(I)I

    move-result v12

    if-ne v12, v10, :cond_0

    return v10

    .line 4
    :cond_0
    new-instance v12, Landroid/media/MediaFormat;

    invoke-direct {v12}, Landroid/media/MediaFormat;-><init>()V

    .line 5
    const-string v13, "mime"

    invoke-virtual {v12, v13, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string/jumbo v13, "width"

    invoke-static {v12, v13, p1}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 7
    const-string v13, "height"

    invoke-static {v12, v13, v2}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    if-eq v6, v10, :cond_3

    if-eq v7, v10, :cond_3

    if-le v6, v0, :cond_1

    goto :goto_0

    :cond_1
    move v6, v0

    .line 8
    :goto_0
    const-string v13, "max-width"

    invoke-static {v12, v13, v6}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    if-le v7, v2, :cond_2

    goto :goto_1

    :cond_2
    move v7, v2

    .line 9
    :goto_1
    const-string v6, "max-height"

    invoke-static {v12, v6, v7}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 10
    :cond_3
    const-string v6, "sample-rate"

    move/from16 v7, p4

    invoke-static {v12, v6, v7}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 11
    const-string v6, "channel-count"

    move/from16 v7, p5

    invoke-static {v12, v6, v7}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "format  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, p0, v6}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v3, p1, v2}, Lcom/ss/ttm/player/AJMediaCodec;->getMaxInputSize(Ljava/lang/String;II)I

    move-result v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max input = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, p0, v2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const-string v2, "max-input-size"

    invoke-static {v12, v2, v0}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/4 v0, 0x0

    move-object/from16 v2, p7

    .line 16
    invoke-static {v12, v2, v0}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetCsdBuffers(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;I)V

    const/4 v2, 0x1

    move-object/from16 v3, p8

    .line 17
    invoke-static {v12, v3, v2}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetCsdBuffers(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;I)V

    const/4 v3, 0x2

    move-object/from16 v6, p9

    .line 18
    invoke-static {v12, v6, v3}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetCsdBuffers(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;I)V

    const/16 v3, -0x2713

    const/16 v6, 0x17

    if-eqz v5, :cond_7

    if-lt v8, v11, :cond_4

    .line 19
    const-string v5, "rotation-degrees"

    move/from16 v7, p3

    invoke-static {v12, v5, v7}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_4
    if-eqz v4, :cond_5

    .line 20
    invoke-virtual/range {p10 .. p10}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    iget-object v5, v1, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    if-nez v5, :cond_6

    if-lt v8, v6, :cond_6

    sget-boolean v5, Lcom/ss/ttm/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v5, :cond_6

    .line 21
    const-string v4, "create dummy surface"

    invoke-static {v9, p0, v4}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/ss/ttm/player/AJMediaCodec;->createDummySurface()V

    .line 23
    iget-object v4, v1, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    :cond_6
    if-nez v4, :cond_7

    .line 24
    const-string v0, "Error: configure with null surface"

    iput-object v0, v1, Lcom/ss/ttm/player/AJMediaCodec;->mExceptionInfo:Ljava/lang/String;

    return v3

    :cond_7
    if-lt v8, v6, :cond_8

    if-eqz p12, :cond_8

    .line 25
    const-string v5, "priority"

    invoke-virtual {v12, v5, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_8
    if-eqz p15, :cond_9

    move/from16 v5, p16

    .line 26
    invoke-static {v12, v5}, Lcom/ss/ttm/player/VendorQTI;->setupVpp(Landroid/media/MediaFormat;I)V

    :cond_9
    if-eqz p17, :cond_a

    .line 27
    invoke-static {v12}, Lcom/ss/ttm/player/VendorQTI;->debugEffect(Landroid/media/MediaFormat;)V

    :cond_a
    if-eqz p18, :cond_b

    .line 28
    invoke-static {v12}, Lcom/ss/ttm/player/VendorQTI;->enableLowLatency(Landroid/media/MediaFormat;)V

    :cond_b
    if-lez p21, :cond_c

    .line 29
    invoke-direct {p0}, Lcom/ss/ttm/player/AJMediaCodec;->isLowLatencyDecode()I

    move-result v5

    if-lez v5, :cond_c

    .line 30
    const-string v5, "low latency works."

    invoke-static {v9, p0, v5}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-string v5, "low-latency"

    invoke-static {v12, v5, v2}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_c
    const/4 v2, 0x0

    if-lez p20, :cond_e

    if-ltz p19, :cond_e

    .line 32
    invoke-static/range {p19 .. p20}, Lcom/ss/ttm/player/MediaCodecUtil;->getDolbyCodecs(II)Ljava/lang/String;

    move-result-object v5

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dv codecs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, p0, v6}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_d

    .line 34
    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_d
    move-object v6, v2

    .line 35
    :goto_2
    invoke-static {v5, v6}, Lcom/ss/ttm/player/MediaCodecUtil;->getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dv profile & level  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/util/Pair;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, p0, v6}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "profile"

    invoke-static {v12, v6, v5}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 38
    :cond_e
    :try_start_0
    iget-object v5, v1, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v12, v4, v2, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/ss/ttm/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configure failed = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", ex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, p0, v2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    instance-of v0, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_f

    return v3

    :cond_f
    return v10
.end method

.method public createByCodecName(Ljava/lang/String;)I
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
    const-string v1, "createByCodecName = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "JAJMediaCodec"

    .line 19
    .line 20
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    :try_start_0
    iget v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mEnableSingleCodec:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-ne v2, v3, :cond_2

    .line 28
    .line 29
    :try_start_1
    sget-object v2, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 32
    .line 33
    .line 34
    sget v4, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInstanceNums:I

    .line 35
    .line 36
    if-lez v4, :cond_0

    .line 37
    .line 38
    sget-object v4, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecCond:Ljava/util/concurrent/locks/Condition;

    .line 39
    .line 40
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    const-wide/16 v6, 0xbb8

    .line 43
    .line 44
    invoke-interface {v4, v6, v7, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    sget v4, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInstanceNums:I

    .line 51
    .line 52
    if-lez v4, :cond_1

    .line 53
    .line 54
    const-string p1, "already create a media codec"

    .line 55
    .line 56
    invoke-static {v1, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    .line 61
    .line 62
    return v0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    goto :goto_3

    .line 65
    :cond_1
    :try_start_3
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 70
    .line 71
    sget p1, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInstanceNums:I

    .line 72
    .line 73
    add-int/2addr p1, v3

    .line 74
    sput p1, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInstanceNums:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .line 76
    :try_start_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_1
    sget-object v2, Lcom/ss/ttm/player/AJMediaCodec;->mSingleCodecLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_2
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 91
    .line 92
    :goto_2
    const/4 p1, 0x0

    .line 93
    return p1

    .line 94
    :goto_3
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    .line 95
    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v3, "createByCodecName fail = "

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {v1, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return v0
.end method

.method public decodeFRC(I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffersValid:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x17

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "frc level = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "JAJMediaCodec"

    .line 33
    .line 34
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v2, "vivo.video-dec.dynamic-frc"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v2, "setParameters failed ret = "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v1, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    :goto_0
    return-void
.end method

.method public dequeueInputBuffer(J)I
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "dequeueInputBuffer failed, exception: "

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v0, "JAJMediaCodec"

    .line 27
    .line 28
    invoke-static {v0, p0, p2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public flush()I
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-string v0, "JAJMediaCodec"

    .line 2
    .line 3
    const-string v1, "flush"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMcMode:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :try_start_1
    iget v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mPendingFlushCount:I

    .line 22
    .line 23
    add-int/2addr v2, v1

    .line 24
    iput v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mPendingFlushCount:I

    .line 25
    .line 26
    iget-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncHandler:Landroid/os/Handler;

    .line 27
    .line 28
    new-instance v2, Lcom/ss/ttm/player/AJMediaCodec$3;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lcom/ss/ttm/player/AJMediaCodec$3;-><init>(Lcom/ss/ttm/player/AJMediaCodec;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    :cond_0
    :goto_0
    const-string v0, "JAJMediaCodec"

    .line 42
    .line 43
    const-string v1, "flush done"

    .line 44
    .line 45
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    return v0

    .line 50
    :catch_0
    const/4 v0, -0x1

    .line 51
    return v0
.end method

.method public getBestCodecName(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    sget v2, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    const-string v0, "JAJMediaCodec"

    .line 13
    .line 14
    const-string v2, "API < 16"

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v4

    .line 20
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    return-object v4

    .line 27
    :cond_1
    const-string/jumbo v2, "video/hevc"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    sget-boolean v2, Lcom/ss/ttm/player/AJMediaCodec;->mIsByteVC1Blocklist:Z

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    sget v2, Lcom/ss/ttm/player/AJMediaCodec;->mIsByteVC1BlocklistEnable:I

    .line 41
    .line 42
    if-lez v2, :cond_2

    .line 43
    .line 44
    const-string v0, "JAJMediaCodec"

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v3, "the device is hw decoder blocklist,"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    sget-object v3, Lcom/ss/ttm/utils/Util;->HARDWARE:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v0, v1, v2}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v4

    .line 70
    :cond_2
    const-string v2, "JAJMediaCodec"

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v5, "detect hardware codec by codecType = "

    .line 78
    .line 79
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v2, v1, v3}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v2, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v3, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    sget-object v5, Lcom/ss/ttm/player/AJMediaCodec;->mCodecListLock:Ljava/lang/Object;

    .line 103
    .line 104
    monitor-enter v5

    .line 105
    :try_start_0
    const-string/jumbo v6, "video/"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_3

    .line 113
    .line 114
    sget-object v6, Lcom/ss/ttm/player/AJMediaCodec;->mVideoHWDecoderCodecs:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-nez v7, :cond_3

    .line 121
    .line 122
    move-object v3, v6

    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    goto/16 :goto_9

    .line 126
    .line 127
    :cond_3
    :goto_0
    const-string v6, "audio/"

    .line 128
    .line 129
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_4

    .line 134
    .line 135
    sget-object v6, Lcom/ss/ttm/player/AJMediaCodec;->mAudioHWDecoderCodecs:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    if-nez v7, :cond_4

    .line 142
    .line 143
    move-object v3, v6

    .line 144
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-nez v6, :cond_5

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    goto :goto_1

    .line 155
    :cond_5
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    .line 156
    .line 157
    .line 158
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :goto_1
    const/4 v8, 0x0

    .line 160
    :goto_2
    if-ge v8, v6, :cond_19

    .line 161
    .line 162
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-nez v9, :cond_6

    .line 167
    .line 168
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    check-cast v9, Landroid/media/MediaCodecInfo;

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    invoke-static {v8}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    :goto_3
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    const-string v11, "JAJMediaCodec"

    .line 184
    .line 185
    new-instance v12, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v13, "found codec name : "

    .line 191
    .line 192
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    invoke-static {v11, v1, v12}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    if-eqz v11, :cond_7

    .line 210
    .line 211
    goto/16 :goto_7

    .line 212
    .line 213
    :cond_7
    const-string v11, "OMX.google"

    .line 214
    .line 215
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    if-nez v11, :cond_9

    .line 220
    .line 221
    const-string v11, "c2.android"

    .line 222
    .line 223
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    if-eqz v11, :cond_8

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_8
    const-string v11, "audio/"

    .line 231
    .line 232
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v11

    .line 236
    if-eqz v11, :cond_a

    .line 237
    .line 238
    goto/16 :goto_7

    .line 239
    .line 240
    :cond_9
    :goto_4
    const-string/jumbo v11, "video/"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    if-eqz v11, :cond_a

    .line 248
    .line 249
    goto/16 :goto_7

    .line 250
    .line 251
    :cond_a
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    if-nez v11, :cond_b

    .line 256
    .line 257
    goto/16 :goto_7

    .line 258
    .line 259
    :cond_b
    array-length v12, v11

    .line 260
    const/4 v13, 0x0

    .line 261
    :goto_5
    if-ge v13, v12, :cond_18

    .line 262
    .line 263
    aget-object v14, v11, v13

    .line 264
    .line 265
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v15

    .line 269
    if-eqz v15, :cond_c

    .line 270
    .line 271
    goto/16 :goto_6

    .line 272
    .line 273
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 274
    .line 275
    .line 276
    move-result v15

    .line 277
    if-eqz v15, :cond_d

    .line 278
    .line 279
    const-string/jumbo v15, "video/"

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v15

    .line 286
    if-eqz v15, :cond_d

    .line 287
    .line 288
    const-string/jumbo v15, "video/"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v15

    .line 295
    if-eqz v15, :cond_d

    .line 296
    .line 297
    sget-object v15, Lcom/ss/ttm/player/AJMediaCodec;->mVideoHWDecoderCodecs:Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 303
    .line 304
    .line 305
    move-result v15

    .line 306
    if-eqz v15, :cond_e

    .line 307
    .line 308
    const-string v15, "audio/"

    .line 309
    .line 310
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v15

    .line 314
    if-eqz v15, :cond_e

    .line 315
    .line 316
    const-string v15, "audio/"

    .line 317
    .line 318
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result v15

    .line 322
    if-eqz v15, :cond_e

    .line 323
    .line 324
    sget-object v15, Lcom/ss/ttm/player/AJMediaCodec;->mAudioHWDecoderCodecs:Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    :cond_e
    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 330
    .line 331
    .line 332
    move-result v15

    .line 333
    if-nez v15, :cond_f

    .line 334
    .line 335
    goto/16 :goto_6

    .line 336
    .line 337
    :cond_f
    const-string v15, "JAJMediaCodec"

    .line 338
    .line 339
    new-instance v7, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    const-string v4, "codec type : "

    .line 345
    .line 346
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    invoke-static {v15, v1, v4}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    const-string v4, "OMX."

    .line 360
    .line 361
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    if-nez v4, :cond_10

    .line 366
    .line 367
    const-string v4, "c2."

    .line 368
    .line 369
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    if-eqz v4, :cond_17

    .line 374
    .line 375
    :cond_10
    const-string v4, "OMX.pv"

    .line 376
    .line 377
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-nez v4, :cond_17

    .line 382
    .line 383
    const-string v4, "OMX.ittiam"

    .line 384
    .line 385
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    if-nez v4, :cond_17

    .line 390
    .line 391
    const-string v4, "ffmpeg"

    .line 392
    .line 393
    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-nez v4, :cond_17

    .line 398
    .line 399
    const-string v4, "avcodec"

    .line 400
    .line 401
    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    if-nez v4, :cond_17

    .line 406
    .line 407
    const-string v4, "secure"

    .line 408
    .line 409
    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    if-eqz v4, :cond_11

    .line 414
    .line 415
    goto :goto_6

    .line 416
    :cond_11
    const-string v4, "OMX.MTK."

    .line 417
    .line 418
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    if-eqz v4, :cond_12

    .line 423
    .line 424
    sget v4, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 425
    .line 426
    const/16 v7, 0x12

    .line 427
    .line 428
    if-ge v4, v7, :cond_12

    .line 429
    .line 430
    goto :goto_6

    .line 431
    :cond_12
    invoke-static {v10}, Lcom/ss/ttm/player/AJMediaCodec;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    if-eqz v4, :cond_13

    .line 436
    .line 437
    goto :goto_6

    .line 438
    :cond_13
    invoke-static {v9, v0}, Lcom/ss/ttm/player/AJMediaCodecRank;->setupRank(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lcom/ss/ttm/player/AJMediaCodecRank;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    if-nez v4, :cond_14

    .line 443
    .line 444
    goto :goto_6

    .line 445
    :cond_14
    const-string v7, "JAJMediaCodec"

    .line 446
    .line 447
    new-instance v14, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    .line 452
    const-string v15, "codec : "

    .line 453
    .line 454
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    iget-object v15, v4, Lcom/ss/ttm/player/AJMediaCodecRank;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    .line 458
    .line 459
    invoke-virtual {v15}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v15

    .line 463
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v15, ",  rank : "

    .line 467
    .line 468
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    iget v15, v4, Lcom/ss/ttm/player/AJMediaCodecRank;->mRank:I

    .line 472
    .line 473
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v14

    .line 480
    invoke-static {v7, v1, v14}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    iget v7, v4, Lcom/ss/ttm/player/AJMediaCodecRank;->mRank:I

    .line 484
    .line 485
    const/16 v14, 0x28

    .line 486
    .line 487
    if-ne v7, v14, :cond_15

    .line 488
    .line 489
    sget v14, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 490
    .line 491
    const/16 v15, 0x15

    .line 492
    .line 493
    if-ge v14, v15, :cond_15

    .line 494
    .line 495
    const-string v4, "JAJMediaCodec"

    .line 496
    .line 497
    const-string/jumbo v7, "skip vendor mediacodec api impl ambiguous"

    .line 498
    .line 499
    .line 500
    invoke-static {v4, v1, v7}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    goto :goto_6

    .line 504
    :cond_15
    const/16 v14, 0x14

    .line 505
    .line 506
    if-ne v7, v14, :cond_16

    .line 507
    .line 508
    const-string v4, "JAJMediaCodec"

    .line 509
    .line 510
    const-string/jumbo v7, "skip vendor software codec"

    .line 511
    .line 512
    .line 513
    invoke-static {v4, v1, v7}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    goto :goto_6

    .line 517
    :cond_16
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    :cond_17
    :goto_6
    add-int/lit8 v13, v13, 0x1

    .line 521
    .line 522
    const/4 v4, 0x0

    .line 523
    goto/16 :goto_5

    .line 524
    .line 525
    :cond_18
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 526
    .line 527
    const/4 v4, 0x0

    .line 528
    goto/16 :goto_2

    .line 529
    .line 530
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    if-eqz v0, :cond_1a

    .line 535
    .line 536
    monitor-exit v5

    .line 537
    const/4 v0, 0x0

    .line 538
    return-object v0

    .line 539
    :cond_1a
    const/4 v0, 0x0

    .line 540
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    check-cast v0, Lcom/ss/ttm/player/AJMediaCodecRank;

    .line 545
    .line 546
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    :cond_1b
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    if-eqz v3, :cond_1c

    .line 555
    .line 556
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    check-cast v3, Lcom/ss/ttm/player/AJMediaCodecRank;

    .line 561
    .line 562
    iget v4, v3, Lcom/ss/ttm/player/AJMediaCodecRank;->mRank:I

    .line 563
    .line 564
    iget v6, v0, Lcom/ss/ttm/player/AJMediaCodecRank;->mRank:I

    .line 565
    .line 566
    if-le v4, v6, :cond_1b

    .line 567
    .line 568
    move-object v0, v3

    .line 569
    goto :goto_8

    .line 570
    :cond_1c
    iget-object v2, v0, Lcom/ss/ttm/player/AJMediaCodecRank;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    .line 571
    .line 572
    iput-object v2, v1, Lcom/ss/ttm/player/AJMediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 573
    .line 574
    iget-object v0, v0, Lcom/ss/ttm/player/AJMediaCodecRank;->mCodecType:Ljava/lang/String;

    .line 575
    .line 576
    iput-object v0, v1, Lcom/ss/ttm/player/AJMediaCodec;->mCodecType:Ljava/lang/String;

    .line 577
    .line 578
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    monitor-exit v5

    .line 583
    return-object v0

    .line 584
    :catch_0
    const-string v0, "JAJMediaCodec"

    .line 585
    .line 586
    const-string v2, "mediaserver died"

    .line 587
    .line 588
    invoke-static {v0, v1, v2}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    monitor-exit v5

    .line 592
    const/4 v0, 0x0

    .line 593
    return-object v0

    .line 594
    :goto_9
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 595
    throw v0
.end method

.method public getChannelCount()I
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-string v2, "channel-count"

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return v0

    .line 13
    :catch_0
    :cond_0
    return v1
.end method

.method public getColorFormat()I
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    :try_start_0
    const-string v2, "color-format"

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const/16 v2, 0x15

    .line 13
    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    const v2, 0x7f000100

    .line 17
    .line 18
    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    const v2, 0x7fa30c00

    .line 22
    .line 23
    .line 24
    if-eq v0, v2, :cond_0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    const/4 v0, 0x3

    .line 28
    return v0

    .line 29
    :catch_0
    :cond_1
    return v1
.end method

.method public getColorTransfer()I
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    :try_start_0
    const-string v2, "color-transfer"

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const/4 v2, 0x6

    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x7

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    const/16 v0, 0x12

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    const/16 v0, 0x10

    .line 23
    .line 24
    return v0

    .line 25
    :catch_0
    :cond_2
    return v1
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mExceptionInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormatHeight()I
    .locals 5
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-string v0, "crop-top"

    .line 2
    .line 3
    const-string v1, "crop-bottom"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    :try_start_0
    const-string v4, "crop-right"

    .line 11
    .line 12
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 19
    .line 20
    const-string v4, "crop-left"

    .line 21
    .line 22
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sub-int/2addr v1, v0

    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 61
    .line 62
    const-string v1, "height"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return v1

    .line 69
    :catch_0
    :cond_1
    return v3
.end method

.method public getFormatWidth()I
    .locals 5
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-string v0, "crop-left"

    .line 2
    .line 3
    const-string v1, "crop-right"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 25
    .line 26
    const-string v4, "crop-bottom"

    .line 27
    .line 28
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 35
    .line 36
    const-string v4, "crop-top"

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sub-int/2addr v1, v0

    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 61
    .line 62
    const-string/jumbo v1, "width"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return v1

    .line 70
    :catch_0
    :cond_1
    return v3
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffersValid:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p1

    .line 13
    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "getInputBuffer failed, exception: "

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "JAJMediaCodec"

    .line 32
    .line 33
    invoke-static {v0, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object v1
.end method

.method public getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffersValid:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public getOSVerion()I
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    sget v0, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 2
    .line 3
    return v0
.end method

.method public getSampleRate()I
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-string v2, "sample-rate"

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return v0

    .line 13
    :catch_0
    :cond_0
    return v1
.end method

.method public getSliceHeight()I
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-string/jumbo v2, "slice-height"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    :cond_0
    return v1
.end method

.method public getStride()I
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-string/jumbo v2, "stride"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    :cond_0
    return v1
.end method

.method public handleCodecException(Ljava/lang/Exception;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mExceptionInfo:Ljava/lang/String;

    .line 6
    .line 7
    sget v0, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x15

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->handleCodecExceptionV21(Ljava/lang/Exception;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    instance-of p1, p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/16 p1, -0x2712

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    const/16 p1, -0x2710

    .line 26
    .line 27
    return p1
.end method

.method public handleCodecExceptionV21(Ljava/lang/Exception;)I
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/media/MediaCodec$CodecException;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/media/MediaCodec$CodecException;

    .line 7
    .line 8
    sget v1, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x17

    .line 11
    .line 12
    const/16 v3, -0x2711

    .line 13
    .line 14
    const-string v4, "exception codecExc isRecoverable: "

    .line 15
    .line 16
    const-string v5, "JAJMediaCodec"

    .line 17
    .line 18
    if-lt v1, v2, :cond_0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ", errorcode: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v5, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/16 v2, 0x44c

    .line 65
    .line 66
    if-eq v1, v2, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/16 v1, 0x44d

    .line 73
    .line 74
    if-eq v0, v1, :cond_1

    .line 75
    .line 76
    return v3

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v5, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_1

    .line 104
    .line 105
    return v3

    .line 106
    :cond_1
    instance-of p1, p1, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    const/16 p1, -0x2712

    .line 111
    .line 112
    return p1

    .line 113
    :cond_2
    const/16 p1, -0x2710

    .line 114
    .line 115
    return p1
.end method

.method public isAdaptivePlayback()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mSupportAdaptivePlayBack:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttm/player/AJMediaCodec;->isAdaptivePlaybackV19()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mSupportAdaptivePlayBack:I

    .line 12
    .line 13
    const-string v0, "Q7-G1"

    .line 14
    .line 15
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v0, "kunlun"

    .line 24
    .line 25
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string v0, "GK6323V100C"

    .line 34
    .line 35
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    iget v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mSupportAdaptivePlayBack:I

    .line 41
    .line 42
    return v0
.end method

.method public open(IIILjava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/view/Surface;)I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "open, rotation = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "; codecName = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "; codecType ="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "JAJMediaCodec"

    .line 35
    .line 36
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    :try_start_0
    invoke-static {p4}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    iput-object p4, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    .line 46
    const-string p4, "configure mediacodec"

    .line 47
    .line 48
    invoke-static {v1, p0, p4}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance p4, Landroid/media/MediaFormat;

    .line 52
    .line 53
    invoke-direct {p4}, Landroid/media/MediaFormat;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "mime"

    .line 57
    .line 58
    invoke-virtual {p4, v2, p5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo p5, "width"

    .line 62
    .line 63
    .line 64
    invoke-static {p4, p5, p1}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    const-string p5, "height"

    .line 68
    .line 69
    invoke-static {p4, p5, p2}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    if-eqz p6, :cond_0

    .line 73
    .line 74
    const-string p5, "csd-0"

    .line 75
    .line 76
    invoke-virtual {p4, p5, p6}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    if-eqz p7, :cond_1

    .line 80
    .line 81
    sget p5, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 82
    .line 83
    const/16 p6, 0x15

    .line 84
    .line 85
    if-lt p5, p6, :cond_1

    .line 86
    .line 87
    const-string p5, "rotation-degrees"

    .line 88
    .line 89
    invoke-static {p4, p5, p3}, Lcom/ss/ttm/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    :cond_1
    :try_start_1
    iget-object p3, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 93
    .line 94
    const/4 p5, 0x0

    .line 95
    const/4 p6, 0x0

    .line 96
    invoke-virtual {p3, p4, p7, p5, p6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .line 98
    .line 99
    const-string p3, "mediacodec start"

    .line 100
    .line 101
    invoke-static {v1, p0, p3}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :try_start_2
    iget-object p3, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 105
    .line 106
    invoke-virtual {p3}, Landroid/media/MediaCodec;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 107
    .line 108
    .line 109
    iget-object p3, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 110
    .line 111
    invoke-virtual {p3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    iput-object p3, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    const/4 p3, 0x1

    .line 118
    iput-boolean p3, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffersValid:Z

    .line 119
    .line 120
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 121
    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string p2, "open() input params. width:%d,height:%d"

    .line 135
    .line 136
    invoke-static {p3, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {v1, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return p6

    .line 144
    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {v1, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return v0

    .line 153
    :catch_1
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {v1, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return v0

    .line 162
    :catch_2
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v1, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return v0
.end method

.method public queueInputBuffer(IIIJI)I
    .locals 7
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    move v6, p6

    .line 8
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p3, "queueInputBuffer failed, exception: "

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string p3, "JAJMediaCodec"

    .line 32
    .line 33
    invoke-static {p3, p0, p2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public read(Lcom/ss/ttm/player/AJMediaCodecFrame;J)I
    .locals 4
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-string v0, "JAJMediaCodec"

    .line 2
    .line 3
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 6
    .line 7
    invoke-virtual {v1, v2, p2, p3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 11
    if-ltz v1, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    aget-object p2, p2, v1

    .line 16
    .line 17
    iput-object p2, p1, Lcom/ss/ttm/player/AJMediaCodecFrame;->data:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 20
    .line 21
    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 22
    .line 23
    iput-wide v2, p1, Lcom/ss/ttm/player/AJMediaCodecFrame;->pts:J

    .line 24
    .line 25
    iput v1, p1, Lcom/ss/ttm/player/AJMediaCodecFrame;->index:I

    .line 26
    .line 27
    iget p3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 28
    .line 29
    iput p3, p1, Lcom/ss/ttm/player/AJMediaCodecFrame;->size:I

    .line 30
    .line 31
    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 32
    .line 33
    iput p2, p1, Lcom/ss/ttm/player/AJMediaCodecFrame;->flags:I

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    :cond_0
    const/4 v2, -0x3

    .line 38
    const-string v3, "getOutputBuffers e = "

    .line 39
    .line 40
    if-ne v1, v2, :cond_1

    .line 41
    .line 42
    const-string v1, "INFO_OUTPUT_BUFFERS_CHANGED"

    .line 43
    .line 44
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :try_start_1
    iget-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {v0, p0, p2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    return p1

    .line 80
    :cond_1
    const/4 p1, -0x2

    .line 81
    if-ne v1, p1, :cond_3

    .line 82
    .line 83
    const-string p1, "INFO_OUTPUT_FORMAT_CHANGED"

    .line 84
    .line 85
    invoke-static {v0, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :try_start_2
    iget-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 95
    .line 96
    iget-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 97
    .line 98
    if-nez p1, :cond_2

    .line 99
    .line 100
    :try_start_3
    iget-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catch_1
    move-exception p1

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-static {v0, p0, p2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    return p1

    .line 133
    :cond_2
    :goto_1
    return v1

    .line 134
    :catch_2
    move-exception p1

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string p3, "getOutputFormat e ="

    .line 141
    .line 142
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {v0, p0, p2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    return p1

    .line 160
    :cond_3
    const/4 p1, -0x1

    .line 161
    if-ne v1, p1, :cond_4

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string p3, "error, idx = "

    .line 170
    .line 171
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-static {v0, p0, p2}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :goto_2
    return p1

    .line 185
    :catch_3
    move-exception p1

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string p3, "dequeueOutputBuffer e :"

    .line 192
    .line 193
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-static {v0, p0, p2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    return p1
.end method

.method public releaseBuffer(IZJ)I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    sget v0, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, p3, p4}, Lcom/ss/ttm/player/AJMediaCodec;->renderOutputBufferV21(IJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 15
    .line 16
    invoke-virtual {p3, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public setCallback(I)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    const-string/jumbo v0, "ttmn: set callback func."

    .line 2
    .line 3
    .line 4
    const-string v1, "JAJMediaCodec"

    .line 5
    .line 6
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_0
    new-instance p1, Lcom/ss/ttm/player/AJMediaCodec$1;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/ss/ttm/player/AJMediaCodec$1;-><init>(Lcom/ss/ttm/player/AJMediaCodec;)V

    .line 15
    .line 16
    .line 17
    sget v0, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 18
    .line 19
    const/16 v2, 0x17

    .line 20
    .line 21
    if-ge v0, v2, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Landroid/os/Handler;

    .line 29
    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncHandler:Landroid/os/Handler;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string/jumbo v0, "ttmn"

    .line 41
    .line 42
    .line 43
    const-string v2, "create async thread"

    .line 44
    .line 45
    invoke-static {v0, v2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    .line 49
    .line 50
    const-string v2, "mc_async"

    .line 51
    .line 52
    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncThread:Landroid/os/HandlerThread;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    .line 59
    .line 60
    new-instance v0, Landroid/os/Handler;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncThread:Landroid/os/HandlerThread;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mAsyncHandler:Landroid/os/Handler;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 74
    .line 75
    invoke-virtual {v2, p1, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    const-string/jumbo p1, "ttmn: success to set callback func."

    .line 79
    .line 80
    .line 81
    invoke-static {v1, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :goto_1
    const/4 p1, 0x0

    .line 85
    return p1

    .line 86
    :catch_0
    const-string/jumbo p1, "ttmn: failed to set callback"

    .line 87
    .line 88
    .line 89
    invoke-static {v1, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 p1, -0x1

    .line 93
    return p1
.end method

.method public setEnableMediaCodecSyncClose(I)V
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    sput p1, Lcom/ss/ttm/player/AJMediaCodec;->mEnableMediaCodecSyncClose:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnableVC1BlockList(I)V
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    sput p1, Lcom/ss/ttm/player/AJMediaCodec;->mIsByteVC1BlocklistEnable:I

    .line 2
    .line 3
    return-void
.end method

.method public setHandler(J)V
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
    const-string/jumbo v1, "ttmn: setHandler "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "JAJMediaCodec"

    .line 20
    .line 21
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-wide p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mHandler:J

    .line 25
    .line 26
    return-void
.end method

.method public setMode(II)V
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
    const-string/jumbo v1, "ttmn: mode "

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
    const-string v1, ", memcpyCrash "

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "JAJMediaCodec"

    .line 28
    .line 29
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMcMode:I

    .line 33
    .line 34
    iput p2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mFixedMemcpyCrash:I

    .line 35
    .line 36
    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)I
    .locals 3
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
    const-string/jumbo v1, "setoutput surface = "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "JAJMediaCodec"

    .line 20
    .line 21
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-boolean v0, Lcom/ss/ttm/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffersValid:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/ss/ttm/player/AJMediaCodec;->createDummySurface()V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mDummySurface:Lcom/ss/ttm/player/DummySurface;

    .line 42
    .line 43
    const-string/jumbo v0, "use dummy surface"

    .line 44
    .line 45
    .line 46
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v2, "setoutputSurface = "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 71
    .line 72
    invoke-direct {p0, v0, p1}, Lcom/ss/ttm/player/AJMediaCodec;->setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    return p1

    .line 77
    :cond_2
    const/4 p1, -0x1

    .line 78
    return p1
.end method

.method public setSingleCodec(I)V
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
    const-string/jumbo v1, "ttmn: EnableSingleCodec "

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "JAJMediaCodec"

    .line 20
    .line 21
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mEnableSingleCodec:I

    .line 25
    .line 26
    return-void
.end method

.method public speedEnhance(F)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffersValid:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x17

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    const/high16 v0, 0x41f00000    # 30.0f

    .line 16
    .line 17
    cmpl-float v0, p1, v0

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "rate "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "JAJMediaCodec"

    .line 39
    .line 40
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "operating-rate"

    .line 49
    .line 50
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 51
    .line 52
    .line 53
    :try_start_0
    iget-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v2, "setParameters failed ret = "

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {v1, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    :goto_0
    return-void
.end method

.method public start()I
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-string/jumbo v0, "start"

    .line 2
    .line 3
    .line 4
    const-string v1, "JAJMediaCodec"

    .line 5
    .line 6
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMcMode:I

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    sget v0, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 27
    .line 28
    const/16 v2, 0x15

    .line 29
    .line 30
    if-lt v0, v2, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffersValid:Z

    .line 50
    .line 51
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    const-string/jumbo v0, "start end"

    .line 59
    .line 60
    .line 61
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    return v0

    .line 66
    :goto_1
    invoke-virtual {p0, v0}, Lcom/ss/ttm/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    .line 67
    .line 68
    .line 69
    const/4 v0, -0x1

    .line 70
    return v0
.end method

.method public stop()I
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffersValid:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string/jumbo v0, "stop"

    .line 7
    .line 8
    .line 9
    const-string v2, "JAJMediaCodec"

    .line 10
    .line 11
    invoke-static {v2, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iput-boolean v1, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffersValid:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const-string v0, "mediacodec stop exception"

    .line 23
    .line 24
    invoke-static {v2, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    return v0

    .line 29
    :cond_0
    :goto_0
    return v1
.end method

.method public vendorOppoHWEnable()I
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/ttm/utils/Util;->BARND:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "OPPO"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "persist.sys.aweme.hdsupport"

    .line 12
    .line 13
    const-string v1, "1"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/ss/ttm/player/AJMediaCodec;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "oppo property = "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "JAJMediaCodec"

    .line 37
    .line 38
    invoke-static {v2, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    const-string/jumbo v0, "vendor oppo property abnormal"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0
.end method

.method public write(Lcom/ss/ttm/player/AJMediaCodecFrame;)I
    .locals 12
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-string v0, "JAJMediaCodec"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    iget-object v2, p1, Lcom/ss/ttm/player/AJMediaCodecFrame;->data:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 12
    .line 13
    const-wide/16 v3, 0x7530

    .line 14
    .line 15
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-ltz v6, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/ss/ttm/player/AJMediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    aget-object v2, v2, v6

    .line 24
    .line 25
    iget-object v3, p1, Lcom/ss/ttm/player/AJMediaCodecFrame;->data:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    iget-object v5, p0, Lcom/ss/ttm/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    .line 31
    .line 32
    iget v8, p1, Lcom/ss/ttm/player/AJMediaCodecFrame;->size:I

    .line 33
    .line 34
    iget-wide v9, p1, Lcom/ss/ttm/player/AJMediaCodecFrame;->pts:J

    .line 35
    .line 36
    const/4 v11, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    return p1

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-ne v6, v1, :cond_2

    .line 46
    .line 47
    const/4 p1, 0x4

    .line 48
    return p1

    .line 49
    :cond_2
    return v1

    .line 50
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v3, "write meet exception ="

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v0, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return v1

    .line 72
    :cond_3
    :goto_1
    const-string p1, "buffer is nullpoint"

    .line 73
    .line 74
    invoke-static {v0, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return v1
.end method

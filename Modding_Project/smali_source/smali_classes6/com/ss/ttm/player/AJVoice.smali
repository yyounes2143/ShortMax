.class public Lcom/ss/ttm/player/AJVoice;
.super Ljava/lang/Object;
.source "AJVoice.java"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation build Lcom/ss/ttm/player/Keep;
.end annotation


# static fields
.field private static final DISCONTINGUNITY_MS:I = 0xc8

.field private static final ERROR_FORMAT_ILLEGAL:I = -0xc

.field private static final ERROR_NULL_BUFFER:I = -0xa

.field private static final ERROR_SIZE_ILLEGAL:I = -0xb

.field private static final FORCE_RESET_WORKAROUND_TIMEOUT_MS:J = 0xc8L

.field private static final MAX_LATENCY_MS:I = 0x1388

.field private static final MAX_PCM_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MIN_LATENCY_CHECK_MS:I = 0x1f4

.field private static final MIN_PCM_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MS_UNIT:I = 0x3e8

.field private static final PCM_BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field private static final RELEASE_WORKAROUND_TIME_MS:J = 0x50L

.field private static final SDK_INT:I

.field private static final START_NO_SET:I = -0x1

.field private static final S_FAIL:I = -0x1

.field private static final S_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "JAJVoice"

.field private static final TIME_UNSET:J = -0x7fffffffffffffffL

.field private static final kNoSettingVolume:I = -0x1

.field private static mDeviceName:Ljava/lang/String; = null

.field private static mNeedReleaseWorkAround:Z = false


# instance fields
.field private audioTrackPositionTracker:Lcom/ss/ttm/player/AudioTrackPositionTracker;

.field private forceResetWorkaroundTimeMs:J

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private lastRawPlaybackHeadPosition:J

.field private mAudioFormat:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAudioTrackPool:Lcom/ss/ttm/player/AudioTrackPool;

.field private mBlockSize:I

.field private mBufferSizeError:Z

.field private mBufferSizeMs:I

.field private mCalibrationType:I

.field private mChannels:I

.field private mChannelsLayout:I

.field private mContentType:I

.field private mEnableAudioTrackPool:Z

.field private mEnableAudioTrackSmoothClock:I

.field private mForceReleaseAudioTrackByPool:Z

.field private mFrameSamples:I

.field private mLastGetLatencyMs:J

.field private mLatencyMs:I

.field private mLeftVolume:F

.field private mMaxVolume:I

.field private mMinBytes:[B

.field private mNativeObject:J
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field private mOutputPcmFrameSize:I

.field private mPCMFrameBuffer:Ljava/nio/ByteBuffer;

.field private mPlayer:Lcom/ss/ttm/player/TTPlayer;

.field private mRawPlaybackHeadWrapCount:J

.field private mReleasingConditionVariable:Landroid/os/ConditionVariable;

.field private mSampleBytes:I

.field private mSampleFormat:I

.field private mSampleRate:I

.field private mSerial:I

.field private mSessionId:I

.field private mStartMediaTimeMs:I

.field private mStartTime:J

.field private volatile mStoped:Z

.field private mStreamType:I

.field private mTrackBufferSize:I

.field private mUseDirectBuffer:Z

.field private mWrittenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    sput v0, Lcom/ss/ttm/player/AJVoice;->SDK_INT:I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 8
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 8
    .line 9
    const/16 v1, 0x800

    .line 10
    .line 11
    iput v1, p0, Lcom/ss/ttm/player/AJVoice;->mBlockSize:I

    .line 12
    .line 13
    const v1, 0xac44

    .line 14
    .line 15
    .line 16
    iput v1, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    iput v1, p0, Lcom/ss/ttm/player/AJVoice;->mChannels:I

    .line 20
    .line 21
    iput v1, p0, Lcom/ss/ttm/player/AJVoice;->mSampleBytes:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput v2, p0, Lcom/ss/ttm/player/AJVoice;->mSampleFormat:I

    .line 25
    .line 26
    iput v2, p0, Lcom/ss/ttm/player/AJVoice;->mFrameSamples:I

    .line 27
    .line 28
    iput-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioManager:Landroid/media/AudioManager;

    .line 29
    .line 30
    iput v2, p0, Lcom/ss/ttm/player/AJVoice;->mChannelsLayout:I

    .line 31
    .line 32
    iput v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 33
    .line 34
    const/high16 v1, -0x40800000    # -1.0f

    .line 35
    .line 36
    iput v1, p0, Lcom/ss/ttm/player/AJVoice;->mLeftVolume:F

    .line 37
    .line 38
    iput v2, p0, Lcom/ss/ttm/player/AJVoice;->mMaxVolume:I

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lcom/ss/ttm/player/AJVoice;->mStoped:Z

    .line 42
    .line 43
    const/4 v3, -0x1

    .line 44
    iput v3, p0, Lcom/ss/ttm/player/AJVoice;->mSerial:I

    .line 45
    .line 46
    iput-object v0, p0, Lcom/ss/ttm/player/AJVoice;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 47
    .line 48
    iput v2, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 49
    .line 50
    iput v2, p0, Lcom/ss/ttm/player/AJVoice;->mLatencyMs:I

    .line 51
    .line 52
    iput v2, p0, Lcom/ss/ttm/player/AJVoice;->mBufferSizeMs:I

    .line 53
    .line 54
    const-wide/16 v4, 0x0

    .line 55
    .line 56
    iput-wide v4, p0, Lcom/ss/ttm/player/AJVoice;->mLastGetLatencyMs:J

    .line 57
    .line 58
    iput-wide v4, p0, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    .line 59
    .line 60
    iput-wide v4, p0, Lcom/ss/ttm/player/AJVoice;->lastRawPlaybackHeadPosition:J

    .line 61
    .line 62
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    iput-wide v6, p0, Lcom/ss/ttm/player/AJVoice;->forceResetWorkaroundTimeMs:J

    .line 68
    .line 69
    iput-wide v4, p0, Lcom/ss/ttm/player/AJVoice;->mStartTime:J

    .line 70
    .line 71
    const/4 v6, 0x3

    .line 72
    iput v6, p0, Lcom/ss/ttm/player/AJVoice;->mStreamType:I

    .line 73
    .line 74
    iput v2, p0, Lcom/ss/ttm/player/AJVoice;->mEnableAudioTrackSmoothClock:I

    .line 75
    .line 76
    iput v3, p0, Lcom/ss/ttm/player/AJVoice;->mSessionId:I

    .line 77
    .line 78
    iput v3, p0, Lcom/ss/ttm/player/AJVoice;->mContentType:I

    .line 79
    .line 80
    iput-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mPCMFrameBuffer:Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    iput-boolean v2, p0, Lcom/ss/ttm/player/AJVoice;->mUseDirectBuffer:Z

    .line 83
    .line 84
    iput v2, p0, Lcom/ss/ttm/player/AJVoice;->mCalibrationType:I

    .line 85
    .line 86
    iput-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrackPool:Lcom/ss/ttm/player/AudioTrackPool;

    .line 87
    .line 88
    iput-boolean v2, p0, Lcom/ss/ttm/player/AJVoice;->mEnableAudioTrackPool:Z

    .line 89
    .line 90
    iput-boolean v2, p0, Lcom/ss/ttm/player/AJVoice;->mForceReleaseAudioTrackByPool:Z

    .line 91
    .line 92
    iput-boolean v2, p0, Lcom/ss/ttm/player/AJVoice;->mBufferSizeError:Z

    .line 93
    .line 94
    iput-wide v4, p0, Lcom/ss/ttm/player/AJVoice;->mNativeObject:J

    .line 95
    .line 96
    const-string v0, "JAJVoice#^"

    .line 97
    .line 98
    const-string v2, "JAJVoice"

    .line 99
    .line 100
    invoke-static {v2, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->InfoTrackLife(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iput v3, p0, Lcom/ss/ttm/player/AJVoice;->mStartMediaTimeMs:I

    .line 104
    .line 105
    sget-object v0, Lcom/ss/ttm/player/AJVoice;->mDeviceName:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v0, :cond_0

    .line 108
    .line 109
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 110
    .line 111
    sput-object v0, Lcom/ss/ttm/player/AJVoice;->mDeviceName:Ljava/lang/String;

    .line 112
    .line 113
    const-string v3, "OnePlus6T"

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    .line 121
    const-string v0, "device need workaround"

    .line 122
    .line 123
    invoke-static {v2, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    sput-boolean v1, Lcom/ss/ttm/player/AJVoice;->mNeedReleaseWorkAround:Z

    .line 127
    .line 128
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttm/player/AJVoice;)Landroid/os/ConditionVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttm/player/AJVoice;->mReleasingConditionVariable:Landroid/os/ConditionVariable;

    .line 2
    .line 3
    return-object p0
.end method

.method private calTrackBufferSize(I)I
    .locals 9

    .line 1
    mul-int/lit8 v0, p1, 0x4

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 4
    .line 5
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mChannels:I

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/ss/ttm/player/AJVoice;->getPcmFrameSize(II)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-wide/32 v2, 0x3d090

    .line 12
    .line 13
    .line 14
    iget v4, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 15
    .line 16
    invoke-static {v2, v3, v4, v1}, Lcom/ss/ttm/player/AJVoice;->durationUsToBytes(JII)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    const-wide/32 v4, 0xb71b0

    .line 21
    .line 22
    .line 23
    iget v6, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 24
    .line 25
    invoke-static {v4, v5, v6, v1}, Lcom/ss/ttm/player/AJVoice;->durationUsToBytes(JII)J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    int-to-long v6, v0

    .line 30
    cmp-long v8, v6, v2

    .line 31
    .line 32
    if-gez v8, :cond_0

    .line 33
    .line 34
    long-to-int v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    cmp-long v2, v6, v4

    .line 37
    .line 38
    if-lez v2, :cond_1

    .line 39
    .line 40
    long-to-int v0, v4

    .line 41
    :cond_1
    :goto_0
    if-ge v0, p1, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move p1, v0

    .line 45
    :goto_1
    add-int/2addr p1, v1

    .line 46
    add-int/lit8 p1, p1, -0x1

    .line 47
    .line 48
    div-int/2addr p1, v1

    .line 49
    mul-int/2addr p1, v1

    .line 50
    return p1
.end method

.method private createAudioTrack()Landroid/media/AudioTrack;
    .locals 3

    .line 1
    sget v0, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/ss/ttm/player/AJVoice;->mCalibrationType:I

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->createAudioTrackV26()Landroid/media/AudioTrack;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    const/16 v1, 0x15

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mContentType:I

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->createAudioTrackV21()Landroid/media/AudioTrack;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->createAudioTrackV9()Landroid/media/AudioTrack;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method private createAudioTrackV21()Landroid/media/AudioTrack;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/ss/ttm/player/AJVoice;->mStreamType:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/ss/ttm/player/AJVoice;->mContentType:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v1, Landroid/media/AudioTrack;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    new-instance v0, Landroid/media/AudioFormat$Builder;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mChannelsLayout:I

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    iget v6, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 53
    .line 54
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mSessionId:I

    .line 55
    .line 56
    if-eq v0, v2, :cond_1

    .line 57
    .line 58
    :goto_0
    move v8, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    goto :goto_0

    .line 62
    :goto_1
    const/4 v7, 0x1

    .line 63
    move-object v3, v1

    .line 64
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 65
    .line 66
    .line 67
    return-object v1
.end method

.method private createAudioTrackV26()Landroid/media/AudioTrack;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    new-instance v0, Landroid/media/AudioTrack$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mContentType:I

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    if-eq v2, v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x3

    .line 23
    :goto_0
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mStreamType:I

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Landroid/media/AudioFormat$Builder;

    .line 42
    .line 43
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mChannelsLayout:I

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v1, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method

.method private createAudioTrackV9()Landroid/media/AudioTrack;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/ss/ttm/player/AJVoice;->mSessionId:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/media/AudioTrack;

    .line 9
    .line 10
    iget v4, v0, Lcom/ss/ttm/player/AJVoice;->mStreamType:I

    .line 11
    .line 12
    iget v5, v0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 13
    .line 14
    iget v6, v0, Lcom/ss/ttm/player/AJVoice;->mChannelsLayout:I

    .line 15
    .line 16
    iget v7, v0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 17
    .line 18
    iget v8, v0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 19
    .line 20
    const/4 v9, 0x1

    .line 21
    move-object v3, v1

    .line 22
    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    new-instance v1, Landroid/media/AudioTrack;

    .line 27
    .line 28
    iget v11, v0, Lcom/ss/ttm/player/AJVoice;->mStreamType:I

    .line 29
    .line 30
    iget v12, v0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 31
    .line 32
    iget v13, v0, Lcom/ss/ttm/player/AJVoice;->mChannelsLayout:I

    .line 33
    .line 34
    iget v14, v0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 35
    .line 36
    iget v15, v0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 37
    .line 38
    const/16 v16, 0x1

    .line 39
    .line 40
    iget v2, v0, Lcom/ss/ttm/player/AJVoice;->mSessionId:I

    .line 41
    .line 42
    move-object v10, v1

    .line 43
    move/from16 v17, v2

    .line 44
    .line 45
    invoke-direct/range {v10 .. v17}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 46
    .line 47
    .line 48
    return-object v1
.end method

.method protected static durationUsToBytes(JII)J
    .locals 2

    .line 1
    int-to-long v0, p2

    .line 2
    mul-long/2addr p0, v0

    .line 3
    int-to-long p2, p3

    .line 4
    mul-long/2addr p0, p2

    .line 5
    const-wide/32 p2, 0xf4240

    .line 6
    .line 7
    .line 8
    div-long/2addr p0, p2

    .line 9
    return-wide p0
.end method

.method public static getAudioTrackChannelConfig(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :pswitch_0
    const/16 p0, 0x18fc

    .line 7
    .line 8
    return p0

    .line 9
    :pswitch_1
    const/16 p0, 0x4fc

    .line 10
    .line 11
    return p0

    .line 12
    :pswitch_2
    const/16 p0, 0xfc

    .line 13
    .line 14
    return p0

    .line 15
    :pswitch_3
    const/16 p0, 0xdc

    .line 16
    .line 17
    return p0

    .line 18
    :pswitch_4
    const/16 p0, 0xcc

    .line 19
    .line 20
    return p0

    .line 21
    :pswitch_5
    const/16 p0, 0x1c

    .line 22
    .line 23
    return p0

    .line 24
    :pswitch_6
    const/16 p0, 0xc

    .line 25
    .line 26
    return p0

    .line 27
    :pswitch_7
    const/4 p0, 0x4

    .line 28
    return p0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPcmFrameSize(II)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p0

    .line 14
    :cond_1
    mul-int/2addr p1, v0

    .line 15
    return p1
.end method

.method private getPlaybackBytes()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->getPlaybackHeadPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 6
    .line 7
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mChannels:I

    .line 8
    .line 9
    invoke-static {v2, v3}, Lcom/ss/ttm/player/AJVoice;->getPcmFrameSize(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    int-to-long v2, v2

    .line 14
    mul-long/2addr v0, v2

    .line 15
    return-wide v0
.end method

.method private getPlaybackHeadPosition()J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return-wide v2

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-long v4, v1

    .line 20
    const-wide v6, 0xffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr v4, v6

    .line 26
    cmp-long v1, v4, v2

    .line 27
    .line 28
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    iget-wide v8, p0, Lcom/ss/ttm/player/AJVoice;->lastRawPlaybackHeadPosition:J

    .line 36
    .line 37
    cmp-long v1, v8, v2

    .line 38
    .line 39
    if-lez v1, :cond_2

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    iget-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->forceResetWorkaroundTimeMs:J

    .line 45
    .line 46
    cmp-long v0, v0, v6

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    iput-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->forceResetWorkaroundTimeMs:J

    .line 55
    .line 56
    :cond_1
    iget-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->lastRawPlaybackHeadPosition:J

    .line 57
    .line 58
    return-wide v0

    .line 59
    :cond_2
    iput-wide v6, p0, Lcom/ss/ttm/player/AJVoice;->forceResetWorkaroundTimeMs:J

    .line 60
    .line 61
    iput-wide v4, p0, Lcom/ss/ttm/player/AJVoice;->lastRawPlaybackHeadPosition:J

    .line 62
    .line 63
    return-wide v4
.end method

.method private getPlaybackHeadPositionV2()J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return-wide v2

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-long v4, v1

    .line 20
    const-wide v6, 0xffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr v4, v6

    .line 26
    sget v1, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 27
    .line 28
    const/16 v6, 0x1d

    .line 29
    .line 30
    if-gt v1, v6, :cond_3

    .line 31
    .line 32
    cmp-long v1, v4, v2

    .line 33
    .line 34
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    iget-wide v8, p0, Lcom/ss/ttm/player/AJVoice;->lastRawPlaybackHeadPosition:J

    .line 42
    .line 43
    cmp-long v1, v8, v2

    .line 44
    .line 45
    if-lez v1, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x3

    .line 48
    if-ne v0, v1, :cond_2

    .line 49
    .line 50
    iget-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->forceResetWorkaroundTimeMs:J

    .line 51
    .line 52
    cmp-long v0, v0, v6

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    iput-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->forceResetWorkaroundTimeMs:J

    .line 61
    .line 62
    :cond_1
    iget-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->lastRawPlaybackHeadPosition:J

    .line 63
    .line 64
    return-wide v0

    .line 65
    :cond_2
    iput-wide v6, p0, Lcom/ss/ttm/player/AJVoice;->forceResetWorkaroundTimeMs:J

    .line 66
    .line 67
    :cond_3
    iget-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->lastRawPlaybackHeadPosition:J

    .line 68
    .line 69
    cmp-long v0, v0, v4

    .line 70
    .line 71
    if-lez v0, :cond_4

    .line 72
    .line 73
    iget-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->mRawPlaybackHeadWrapCount:J

    .line 74
    .line 75
    const-wide/16 v2, 0x1

    .line 76
    .line 77
    add-long/2addr v0, v2

    .line 78
    iput-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->mRawPlaybackHeadWrapCount:J

    .line 79
    .line 80
    :cond_4
    iput-wide v4, p0, Lcom/ss/ttm/player/AJVoice;->lastRawPlaybackHeadPosition:J

    .line 81
    .line 82
    iget-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->mRawPlaybackHeadWrapCount:J

    .line 83
    .line 84
    const/16 v2, 0x20

    .line 85
    .line 86
    shl-long/2addr v0, v2

    .line 87
    add-long/2addr v4, v0

    .line 88
    return-wide v4
.end method

.method private getPlaybackPositionMs()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->getPlaybackHeadPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    mul-long/2addr v0, v2

    .line 8
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    div-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method private getWrittenDurationMs()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    .line 2
    .line 3
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 4
    .line 5
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mChannels:I

    .line 6
    .line 7
    invoke-static {v2, v3}, Lcom/ss/ttm/player/AJVoice;->getPcmFrameSize(II)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    int-to-long v2, v2

    .line 12
    div-long/2addr v0, v2

    .line 13
    const-wide/16 v2, 0x3e8

    .line 14
    .line 15
    mul-long/2addr v0, v2

    .line 16
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 17
    .line 18
    int-to-long v2, v2

    .line 19
    div-long/2addr v0, v2

    .line 20
    return-wide v0
.end method

.method private initAudioTrack()I
    .locals 11

    .line 1
    const-string v0, "create audiotrack but failed to initialize"

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/ss/ttm/player/AJVoice;->mEnableAudioTrackPool:Z

    .line 4
    .line 5
    const-string v2, "JAJVoice"

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v3, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrackPool:Lcom/ss/ttm/player/AudioTrackPool;

    .line 10
    .line 11
    iget v4, p0, Lcom/ss/ttm/player/AJVoice;->mStreamType:I

    .line 12
    .line 13
    iget v5, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 14
    .line 15
    iget v6, p0, Lcom/ss/ttm/player/AJVoice;->mChannelsLayout:I

    .line 16
    .line 17
    iget v7, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 18
    .line 19
    iget v8, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 20
    .line 21
    iget v9, p0, Lcom/ss/ttm/player/AJVoice;->mSessionId:I

    .line 22
    .line 23
    iget v10, p0, Lcom/ss/ttm/player/AJVoice;->mContentType:I

    .line 24
    .line 25
    invoke-virtual/range {v3 .. v10}, Lcom/ss/ttm/player/AudioTrackPool;->getReuseAudioTrack(IIIIIII)Landroid/media/AudioTrack;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iput-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 32
    .line 33
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "AudioTrackPool log: initAudioTrack, try get reuse AudioTrack: "

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v2, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->createAudioTrack()Landroid/media/AudioTrack;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    iget-boolean v1, p0, Lcom/ss/ttm/player/AJVoice;->mEnableAudioTrackPool:Z

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v3, "AudioTrackPool log: create new AudioTrack:"

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v2, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v3, "create audio track failed ,detail = "

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v2, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const/4 v0, -0x1

    .line 114
    return v0

    .line 115
    :cond_2
    :goto_0
    iget v1, p0, Lcom/ss/ttm/player/AJVoice;->mCalibrationType:I

    .line 116
    .line 117
    const/4 v3, 0x1

    .line 118
    if-le v1, v3, :cond_3

    .line 119
    .line 120
    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    iget v4, p0, Lcom/ss/ttm/player/AJVoice;->mOutputPcmFrameSize:I

    .line 127
    .line 128
    mul-int/2addr v1, v4

    .line 129
    iget v4, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 130
    .line 131
    if-eq v1, v4, :cond_3

    .line 132
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string/jumbo v5, "trackBufferSize error, mTrackBufferSize:"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget v5, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v5, ", actualBufferSize:"

    .line 150
    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v2, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_3
    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eq v1, v3, :cond_4

    .line 171
    .line 172
    const/4 v1, -0x3

    .line 173
    const/4 v3, 0x0

    .line 174
    :try_start_1
    iget-object v4, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 175
    .line 176
    invoke-virtual {v4}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    .line 178
    .line 179
    :catch_0
    :catchall_1
    iput-object v3, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 180
    .line 181
    invoke-static {v2, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return v1

    .line 185
    :cond_4
    const/4 v0, 0x0

    .line 186
    return v0
.end method

.method private needsReset()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->forceResetWorkaroundTimeMs:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-wide v2, p0, Lcom/ss/ttm/player/AJVoice;->forceResetWorkaroundTimeMs:J

    .line 25
    .line 26
    sub-long/2addr v0, v2

    .line 27
    const-wide/16 v2, 0xc8

    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-ltz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method private reconfigure()I
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttm/player/TTPlayer;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "audio"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/media/AudioManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioManager:Landroid/media/AudioManager;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget v1, p0, Lcom/ss/ttm/player/AJVoice;->mStreamType:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/ss/ttm/player/AJVoice;->mMaxVolume:I

    .line 26
    .line 27
    :cond_0
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mChannels:I

    .line 28
    .line 29
    invoke-static {v0}, Lcom/ss/ttm/player/AJVoice;->getAudioTrackChannelConfig(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/ss/ttm/player/AJVoice;->mChannelsLayout:I

    .line 34
    .line 35
    const-string v1, "JAJVoice"

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 40
    .line 41
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mChannels:I

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "not supoort channel:%d"

    .line 52
    .line 53
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v0, -0x1

    .line 61
    return v0

    .line 62
    :cond_1
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mSampleBytes:I

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    if-ne v2, v3, :cond_2

    .line 66
    .line 67
    const/4 v2, 0x3

    .line 68
    iput v2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v4, 0x2

    .line 72
    if-ne v2, v4, :cond_8

    .line 73
    .line 74
    iput v4, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 75
    .line 76
    :goto_0
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 77
    .line 78
    iget v4, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 79
    .line 80
    invoke-static {v2, v0, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-gtz v0, :cond_3

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "getMinBufferSize failed, trace: sampleRate = "

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v3, ", mChannelsLayout = "

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mChannelsLayout:I

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v3, ", mAudioFormat = "

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v1, p0, v2}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return v0

    .line 129
    :cond_3
    iput v0, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 130
    .line 131
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mCalibrationType:I

    .line 132
    .line 133
    if-le v2, v3, :cond_4

    .line 134
    .line 135
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mBlockSize:I

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    move v2, v0

    .line 139
    :goto_1
    iget-boolean v3, p0, Lcom/ss/ttm/player/AJVoice;->mUseDirectBuffer:Z

    .line 140
    .line 141
    const/16 v4, -0xa

    .line 142
    .line 143
    const-string v5, "out of memory error when new audio buffer for audiotrack"

    .line 144
    .line 145
    if-eqz v3, :cond_5

    .line 146
    .line 147
    sget v6, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    .line 148
    .line 149
    const/16 v7, 0x15

    .line 150
    .line 151
    if-ge v6, v7, :cond_6

    .line 152
    .line 153
    :cond_5
    :try_start_0
    new-array v6, v2, [B

    .line 154
    .line 155
    iput-object v6, p0, Lcom/ss/ttm/player/AJVoice;->mMinBytes:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    .line 157
    :cond_6
    if-eqz v3, :cond_7

    .line 158
    .line 159
    iget-object v3, p0, Lcom/ss/ttm/player/AJVoice;->mPCMFrameBuffer:Ljava/nio/ByteBuffer;

    .line 160
    .line 161
    if-nez v3, :cond_7

    .line 162
    .line 163
    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    iput-object v2, p0, Lcom/ss/ttm/player/AJVoice;->mPCMFrameBuffer:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catch_0
    invoke-static {v1, p0, v5}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return v4

    .line 174
    :cond_7
    :goto_2
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 175
    .line 176
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mChannels:I

    .line 177
    .line 178
    invoke-static {v2, v3}, Lcom/ss/ttm/player/AJVoice;->getPcmFrameSize(II)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    iput v2, p0, Lcom/ss/ttm/player/AJVoice;->mOutputPcmFrameSize:I

    .line 183
    .line 184
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 185
    .line 186
    div-int/2addr v3, v2

    .line 187
    mul-int/lit16 v3, v3, 0x3e8

    .line 188
    .line 189
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 190
    .line 191
    div-int/2addr v3, v2

    .line 192
    iput v3, p0, Lcom/ss/ttm/player/AJVoice;->mBufferSizeMs:I

    .line 193
    .line 194
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 195
    .line 196
    iget-wide v3, p0, Lcom/ss/ttm/player/AJVoice;->mNativeObject:J

    .line 197
    .line 198
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mBlockSize:I

    .line 203
    .line 204
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 209
    .line 210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mChannelsLayout:I

    .line 215
    .line 216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mSampleBytes:I

    .line 221
    .line 222
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mFrameSamples:I

    .line 231
    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 237
    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const-string v3, "mNativeObject:%d,mBlockSize:%d,mSampleRate:%d,mChannels:%d,mSampBit:%d,minBufSize:%d,mFrameSamples:%d,format:%d"

    .line 247
    .line 248
    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const-wide/16 v0, 0x0

    .line 256
    .line 257
    iput-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->mRawPlaybackHeadWrapCount:J

    .line 258
    .line 259
    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/ss/ttm/player/AJVoice;->mBufferSizeError:Z

    .line 261
    .line 262
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->initAudioTrack()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    return v0

    .line 267
    :catch_1
    invoke-static {v1, p0, v5}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    return v4

    .line 271
    :cond_8
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 272
    .line 273
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    const-string v3, "not supoort format:%d"

    .line 282
    .line 283
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    const/16 v0, -0xc

    .line 291
    .line 292
    return v0
.end method

.method private reset()I
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/ss/ttm/player/AJVoice;->mLatencyMs:I

    .line 7
    .line 8
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v2, p0, Lcom/ss/ttm/player/AJVoice;->forceResetWorkaroundTimeMs:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->mLastGetLatencyMs:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->lastRawPlaybackHeadPosition:J

    .line 18
    .line 19
    const/high16 v0, -0x40800000    # -1.0f

    .line 20
    .line 21
    iput v0, p0, Lcom/ss/ttm/player/AJVoice;->mLeftVolume:F

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/ss/ttm/player/AJVoice;->mEnableAudioTrackPool:Z

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "AudioTrackPool log: reset try pushback AudioTrack: "

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v2, "JAJVoice"

    .line 48
    .line 49
    invoke-static {v2, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrackPool:Lcom/ss/ttm/player/AudioTrackPool;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 60
    .line 61
    iget-boolean v4, p0, Lcom/ss/ttm/player/AJVoice;->mForceReleaseAudioTrackByPool:Z

    .line 62
    .line 63
    iget v5, p0, Lcom/ss/ttm/player/AJVoice;->mStreamType:I

    .line 64
    .line 65
    iget v6, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 66
    .line 67
    iget v7, p0, Lcom/ss/ttm/player/AJVoice;->mChannelsLayout:I

    .line 68
    .line 69
    iget v8, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 70
    .line 71
    iget v9, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 72
    .line 73
    iget v10, p0, Lcom/ss/ttm/player/AJVoice;->mSessionId:I

    .line 74
    .line 75
    iget v11, p0, Lcom/ss/ttm/player/AJVoice;->mContentType:I

    .line 76
    .line 77
    invoke-virtual/range {v2 .. v11}, Lcom/ss/ttm/player/AudioTrackPool;->pushAudioTrackBack(Landroid/media/AudioTrack;ZIIIIIII)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 84
    .line 85
    iput-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 86
    .line 87
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    :catch_0
    :goto_0
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->reconfigure()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    return v0
.end method


# virtual methods
.method public close()V
    .locals 12
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttm/player/AJVoice;->mEnableAudioTrackPool:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrackPool:Lcom/ss/ttm/player/AudioTrackPool;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 9
    .line 10
    iget-boolean v4, p0, Lcom/ss/ttm/player/AJVoice;->mForceReleaseAudioTrackByPool:Z

    .line 11
    .line 12
    iget v5, p0, Lcom/ss/ttm/player/AJVoice;->mStreamType:I

    .line 13
    .line 14
    iget v6, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 15
    .line 16
    iget v7, p0, Lcom/ss/ttm/player/AJVoice;->mChannelsLayout:I

    .line 17
    .line 18
    iget v8, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 19
    .line 20
    iget v9, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 21
    .line 22
    iget v10, p0, Lcom/ss/ttm/player/AJVoice;->mSessionId:I

    .line 23
    .line 24
    iget v11, p0, Lcom/ss/ttm/player/AJVoice;->mContentType:I

    .line 25
    .line 26
    invoke-virtual/range {v2 .. v11}, Lcom/ss/ttm/player/AudioTrackPool;->pushAudioTrackBack(Landroid/media/AudioTrack;ZIIIIIII)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 32
    .line 33
    const-string v2, "JAJVoice"

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iput-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 38
    .line 39
    :try_start_0
    new-instance v1, Lcom/ss/ttm/player/AJVoice$1;

    .line 40
    .line 41
    invoke-direct {v1, p0, v0}, Lcom/ss/ttm/player/AJVoice$1;-><init>(Lcom/ss/ttm/player/AJVoice;Landroid/media/AudioTrack;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/ss/ttm/player/AVThreadPool;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v4, "create close thread fail = "

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v2, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/ss/ttm/player/AJVoice;->releaseTrack(Landroid/media/AudioTrack;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    const-string v0, "JAJVoice#$"

    .line 73
    .line 74
    invoke-static {v2, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->InfoTrackLife(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public flush()V
    .locals 4
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->audioTrackPositionTracker:Lcom/ss/ttm/player/AudioTrackPositionTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/AudioTrackPositionTracker;->reset()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/ss/ttm/player/AJVoice;->mStartMediaTimeMs:I

    .line 13
    .line 14
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mCalibrationType:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/ss/ttm/player/AJVoice;->lastRawPlaybackHeadPosition:J

    .line 22
    .line 23
    iput-wide v2, p0, Lcom/ss/ttm/player/AJVoice;->mRawPlaybackHeadWrapCount:J

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 28
    .line 29
    .line 30
    iget-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    .line 31
    .line 32
    cmp-long v0, v0, v2

    .line 33
    .line 34
    if-lez v0, :cond_2

    .line 35
    .line 36
    iput-wide v2, p0, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_2
    return-void
.end method

.method public getAvailableBufferSize()I
    .locals 6
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->getPlaybackHeadPositionV2()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iget v4, p0, Lcom/ss/ttm/player/AJVoice;->mOutputPcmFrameSize:I

    .line 8
    .line 9
    int-to-long v4, v4

    .line 10
    mul-long/2addr v2, v4

    .line 11
    sub-long/2addr v0, v2

    .line 12
    long-to-int v0, v0

    .line 13
    iget v1, p0, Lcom/ss/ttm/player/AJVoice;->mCalibrationType:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-le v1, v2, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mOutputPcmFrameSize:I

    .line 25
    .line 26
    mul-int/2addr v1, v3

    .line 27
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 28
    .line 29
    if-eq v1, v3, :cond_0

    .line 30
    .line 31
    iget-boolean v3, p0, Lcom/ss/ttm/player/AJVoice;->mBufferSizeError:Z

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v4, "trackBufferSize error, mTrackBufferSize:"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v4, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, ", actualBufferSize:"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const-string v4, "JAJVoice"

    .line 64
    .line 65
    invoke-static {v4, p0, v3}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-boolean v2, p0, Lcom/ss/ttm/player/AJVoice;->mBufferSizeError:Z

    .line 69
    .line 70
    :cond_0
    sub-int/2addr v1, v0

    .line 71
    return v1

    .line 72
    :cond_1
    iget v1, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 73
    .line 74
    sub-int/2addr v1, v0

    .line 75
    return v1
.end method

.method public getCurrentPositionMs()I
    .locals 5
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->audioTrackPositionTracker:Lcom/ss/ttm/player/AudioTrackPositionTracker;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mStartMediaTimeMs:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/ss/ttm/player/AudioTrackPositionTracker;->getCurrentPositionUs(Z)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v3, 0x3e8

    .line 13
    .line 14
    div-long/2addr v0, v3

    .line 15
    long-to-int v0, v0

    .line 16
    add-int/2addr v2, v0

    .line 17
    return v2

    .line 18
    :cond_0
    return v1
.end method

.method public getEOSDelayMs()I
    .locals 6
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->getWrittenDurationMs()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->getPlaybackPositionMs()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual {p0}, Lcom/ss/ttm/player/AJVoice;->getLatency()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-lez v4, :cond_0

    .line 14
    .line 15
    iget v4, p0, Lcom/ss/ttm/player/AJVoice;->mLatencyMs:I

    .line 16
    .line 17
    iget v5, p0, Lcom/ss/ttm/player/AJVoice;->mBufferSizeMs:I

    .line 18
    .line 19
    sub-int/2addr v4, v5

    .line 20
    int-to-long v4, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    :goto_0
    sub-long/2addr v0, v2

    .line 25
    add-long/2addr v0, v4

    .line 26
    long-to-int v0, v0

    .line 27
    return v0
.end method

.method public getLatency()I
    .locals 7
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mCalibrationType:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->getPlaybackHeadPosition()J

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/32 v2, 0xf4240

    .line 17
    .line 18
    .line 19
    div-long/2addr v0, v2

    .line 20
    iget-wide v2, p0, Lcom/ss/ttm/player/AJVoice;->mLastGetLatencyMs:J

    .line 21
    .line 22
    sub-long v2, v0, v2

    .line 23
    .line 24
    const-wide/16 v4, 0x1f4

    .line 25
    .line 26
    cmp-long v2, v2, v4

    .line 27
    .line 28
    if-lez v2, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    :try_start_0
    iget-object v3, p0, Lcom/ss/ttm/player/AJVoice;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 34
    .line 35
    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iput v3, p0, Lcom/ss/ttm/player/AJVoice;->mLatencyMs:I

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iput v3, p0, Lcom/ss/ttm/player/AJVoice;->mLatencyMs:I

    .line 53
    .line 54
    const/16 v5, 0x1388

    .line 55
    .line 56
    if-le v3, v5, :cond_1

    .line 57
    .line 58
    const-string v3, "JAJVoice"

    .line 59
    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v6, "Ignoring impossibly large audio latency: "

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v6, p0, Lcom/ss/ttm/player/AJVoice;->mLatencyMs:I

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v3, p0, v5}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iput v4, p0, Lcom/ss/ttm/player/AJVoice;->mLatencyMs:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    iput-object v2, p0, Lcom/ss/ttm/player/AJVoice;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 86
    .line 87
    :cond_1
    :goto_0
    iput-wide v0, p0, Lcom/ss/ttm/player/AJVoice;->mLastGetLatencyMs:J

    .line 88
    .line 89
    :cond_2
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mLatencyMs:I

    .line 90
    .line 91
    return v0
.end method

.method public getMaxVolume()I
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
    const-string v1, "getMaxVolume:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/ss/ttm/player/AJVoice;->mMaxVolume:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string/jumbo v1, "ttmn"

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mMaxVolume:I

    .line 27
    .line 28
    return v0
.end method

.method public getPCMFrameBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mPCMFrameBuffer:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionId()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mSessionId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :cond_0
    return v0
.end method

.method public getTrackBufferSize()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mCalibrationType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lcom/ss/ttm/player/AJVoice;->mOutputPcmFrameSize:I

    .line 13
    .line 14
    mul-int/2addr v0, v1

    .line 15
    return v0

    .line 16
    :cond_0
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 17
    .line 18
    return v0
.end method

.method public getUnderRunCount()I
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getUnderrunCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public getVolume()F
    .locals 4
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mLeftVolume:F

    .line 7
    .line 8
    const/high16 v2, -0x40800000    # -1.0f

    .line 9
    .line 10
    cmpl-float v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioManager:Landroid/media/AudioManager;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mStreamType:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    iget-object v2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioManager:Landroid/media/AudioManager;

    .line 25
    .line 26
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mStreamType:I

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 29
    .line 30
    .line 31
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    :cond_0
    move v0, v1

    .line 34
    :catch_1
    :goto_0
    if-ltz v1, :cond_1

    .line 35
    .line 36
    int-to-float v0, v1

    .line 37
    return v0

    .line 38
    :cond_1
    if-lez v0, :cond_2

    .line 39
    .line 40
    div-int/lit8 v0, v0, 0x4

    .line 41
    .line 42
    int-to-float v0, v0

    .line 43
    return v0

    .line 44
    :cond_2
    const/high16 v0, 0x41200000    # 10.0f

    .line 45
    .line 46
    return v0
.end method

.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0

    .line 1
    return-void
.end method

.method public open(JLcom/ss/ttm/player/TTPlayer;)I
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttm/player/AJVoice;->mEnableAudioTrackPool:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/ss/ttm/player/AudioTrackPool;->getInstance()Lcom/ss/ttm/player/AudioTrackPool;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrackPool:Lcom/ss/ttm/player/AudioTrackPool;

    .line 10
    .line 11
    :cond_0
    iput-wide p1, p0, Lcom/ss/ttm/player/AJVoice;->mNativeObject:J

    .line 12
    .line 13
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "native object:%d"

    .line 24
    .line 25
    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "JAJVoice"

    .line 30
    .line 31
    invoke-static {p2, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object p3, p0, Lcom/ss/ttm/player/AJVoice;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->reconfigure()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    iget p2, p0, Lcom/ss/ttm/player/AJVoice;->mLeftVolume:F

    .line 43
    .line 44
    const/high16 p3, -0x40800000    # -1.0f

    .line 45
    .line 46
    cmpl-float p3, p2, p3

    .line 47
    .line 48
    if-eqz p3, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, p2, p2}, Lcom/ss/ttm/player/AJVoice;->setVolume(FF)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :try_start_0
    const-class p2, Landroid/media/AudioTrack;

    .line 54
    .line 55
    const-string p3, "getLatency"

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/ss/ttm/player/AJVoice;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    :catch_0
    :cond_2
    return p1
.end method

.method public pause()V
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->audioTrackPositionTracker:Lcom/ss/ttm/player/AudioTrackPositionTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/AudioTrackPositionTracker;->pause()Z

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_2
    return-void
.end method

.method public releaseTrack(Landroid/media/AudioTrack;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/ss/ttm/player/AJVoice;->mNeedReleaseWorkAround:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Lcom/ss/ttm/player/AJVoice;->mStartTime:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    const-wide/16 v2, 0x50

    .line 16
    .line 17
    cmp-long v4, v0, v2

    .line 18
    .line 19
    if-gtz v4, :cond_1

    .line 20
    .line 21
    sub-long/2addr v2, v0

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_1
    move-exception p1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "release in invalid state = "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "JAJVoice"

    .line 48
    .line 49
    invoke-static {v0, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 5
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->audioTrackPositionTracker:Lcom/ss/ttm/player/AudioTrackPositionTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 6
    .line 7
    iget v2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 8
    .line 9
    iget v3, p0, Lcom/ss/ttm/player/AJVoice;->mChannels:I

    .line 10
    .line 11
    invoke-static {v2, v3}, Lcom/ss/ttm/player/AJVoice;->getPcmFrameSize(II)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget v4, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/ttm/player/AudioTrackPositionTracker;->setAudioTrack(Landroid/media/AudioTrack;III)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->audioTrackPositionTracker:Lcom/ss/ttm/player/AudioTrackPositionTracker;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/ss/ttm/player/AudioTrackPositionTracker;->start()V

    .line 23
    .line 24
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
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :goto_2
    return-void
.end method

.method public setAudioTrackSmoothClock(I)V
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
    iput p1, p0, Lcom/ss/ttm/player/AJVoice;->mEnableAudioTrackSmoothClock:I

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/ss/ttm/player/AudioTrackPositionTracker;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, v0}, Lcom/ss/ttm/player/AudioTrackPositionTracker;-><init>(Lcom/ss/ttm/player/AudioTrackPositionTracker$Listener;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/ss/ttm/player/AJVoice;->audioTrackPositionTracker:Lcom/ss/ttm/player/AudioTrackPositionTracker;

    .line 18
    .line 19
    new-instance p1, Landroid/os/ConditionVariable;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p1, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/ss/ttm/player/AJVoice;->mReleasingConditionVariable:Landroid/os/ConditionVariable;

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public setCalibrationType(I)V
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
    const-string/jumbo v1, "type: "

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
    const-string v1, "JAJVoice"

    .line 20
    .line 21
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput p1, p0, Lcom/ss/ttm/player/AJVoice;->mCalibrationType:I

    .line 25
    .line 26
    return-void
.end method

.method public setContentType(I)V
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
    const-string v1, "setContentType contentType="

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
    const-string v1, "JAJVoice"

    .line 19
    .line 20
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput p1, p0, Lcom/ss/ttm/player/AJVoice;->mContentType:I

    .line 24
    .line 25
    iget-object p1, p0, Lcom/ss/ttm/player/AJVoice;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->reset()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/ss/ttm/player/AJVoice;->start()I

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public setEnableAudioTrackPool(Z)V
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
    const-string v1, "enableAudioTrackPool: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "JAJVoice"

    .line 19
    .line 20
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/ss/ttm/player/AJVoice;->mEnableAudioTrackPool:Z

    .line 24
    .line 25
    return-void
.end method

.method public setSampleInfo(IIIIII)V
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iput p2, p0, Lcom/ss/ttm/player/AJVoice;->mSampleRate:I

    .line 2
    .line 3
    iput p3, p0, Lcom/ss/ttm/player/AJVoice;->mChannels:I

    .line 4
    .line 5
    iput p4, p0, Lcom/ss/ttm/player/AJVoice;->mBlockSize:I

    .line 6
    .line 7
    iput p6, p0, Lcom/ss/ttm/player/AJVoice;->mSampleBytes:I

    .line 8
    .line 9
    iput p1, p0, Lcom/ss/ttm/player/AJVoice;->mSampleFormat:I

    .line 10
    .line 11
    iput p5, p0, Lcom/ss/ttm/player/AJVoice;->mFrameSamples:I

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string p2, "mBlockSize:"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget p2, p0, Lcom/ss/ttm/player/AJVoice;->mBlockSize:I

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "JAJVoice"

    .line 33
    .line 34
    invoke-static {p2, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setSessionId(I)V
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
    const-string/jumbo v1, "setSessionId : "

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
    const-string v1, "JAJVoice"

    .line 20
    .line 21
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput p1, p0, Lcom/ss/ttm/player/AJVoice;->mSessionId:I

    .line 25
    .line 26
    iget-object p1, p0, Lcom/ss/ttm/player/AJVoice;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->reset()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/ss/ttm/player/AJVoice;->start()I

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public setStreamType(I)V
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
    const-string v1, "set Stream type : "

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
    const-string v1, "JAJVoice"

    .line 19
    .line 20
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput p1, p0, Lcom/ss/ttm/player/AJVoice;->mStreamType:I

    .line 24
    .line 25
    iget-object p1, p0, Lcom/ss/ttm/player/AJVoice;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->reset()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/ss/ttm/player/AJVoice;->start()I

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public setTrackVolume(FF)V
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/ss/ttm/player/AJVoice;->mForceReleaseAudioTrackByPool:Z

    .line 7
    .line 8
    sget v1, Lcom/ss/ttm/player/AJVoice;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x15

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public setUseDirectBuffer(Z)V
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
    const-string/jumbo v1, "useDirectBuffer: "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "JAJVoice"

    .line 20
    .line 21
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/ss/ttm/player/AJVoice;->mUseDirectBuffer:Z

    .line 25
    .line 26
    return-void
.end method

.method public setVolume(FF)V
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mMaxVolume:I

    .line 2
    .line 3
    int-to-float v1, v0

    .line 4
    cmpg-float v1, v1, p1

    .line 5
    .line 6
    if-gez v1, :cond_0

    .line 7
    .line 8
    int-to-float p1, v0

    .line 9
    :cond_0
    const v0, -0x36800010    # -1048575.0f

    .line 10
    .line 11
    .line 12
    cmpl-float v0, p2, v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/ss/ttm/player/AJVoice;->mForceReleaseAudioTrackByPool:Z

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioManager:Landroid/media/AudioManager;

    .line 28
    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    iget v0, p0, Lcom/ss/ttm/player/AJVoice;->mStreamType:I

    .line 32
    .line 33
    float-to-int v1, p1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p2, v0, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    iput p1, p0, Lcom/ss/ttm/player/AJVoice;->mLeftVolume:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    :catch_0
    return-void
.end method

.method public start()I
    .locals 7
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-string/jumbo v0, "start--->"

    .line 2
    .line 3
    .line 4
    const-string v1, "JAJVoice"

    .line 5
    .line 6
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "audiotrack start before created"

    .line 14
    .line 15
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, -0x2

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/ss/ttm/player/AJVoice;->mStoped:Z

    .line 22
    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttm/player/AJVoice;->audioTrackPositionTracker:Lcom/ss/ttm/player/AudioTrackPositionTracker;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 28
    .line 29
    iget v4, p0, Lcom/ss/ttm/player/AJVoice;->mAudioFormat:I

    .line 30
    .line 31
    iget v5, p0, Lcom/ss/ttm/player/AJVoice;->mChannels:I

    .line 32
    .line 33
    invoke-static {v4, v5}, Lcom/ss/ttm/player/AJVoice;->getPcmFrameSize(II)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    iget v6, p0, Lcom/ss/ttm/player/AJVoice;->mTrackBufferSize:I

    .line 38
    .line 39
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ss/ttm/player/AudioTrackPositionTracker;->setAudioTrack(Landroid/media/AudioTrack;III)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 48
    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    iput v2, p0, Lcom/ss/ttm/player/AJVoice;->mSerial:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    const-string v2, "end---->"

    .line 54
    .line 55
    invoke-static {v1, p0, v2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-boolean v1, Lcom/ss/ttm/player/AJVoice;->mNeedReleaseWorkAround:Z

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    iput-wide v1, p0, Lcom/ss/ttm/player/AJVoice;->mStartTime:J

    .line 67
    .line 68
    :cond_2
    return v0

    .line 69
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v3, "audioTrack start failed = "

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 v0, -0x3

    .line 90
    return v0
.end method

.method public stop()V
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-string v0, "JAJVoice"

    .line 2
    .line 3
    const-string/jumbo v1, "stop"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/ss/ttm/player/AJVoice;->mStoped:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    iput-boolean v2, p0, Lcom/ss/ttm/player/AJVoice;->mStoped:Z

    .line 16
    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttm/player/AJVoice;->audioTrackPositionTracker:Lcom/ss/ttm/player/AudioTrackPositionTracker;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/ss/ttm/player/AudioTrackPositionTracker;->pause()Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/ss/ttm/player/AJVoice;->mEnableAudioTrackPool:Z

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    iget-object v2, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_2
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public write(III)I
    .locals 7
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 57
    const-string v0, "JAJVoice"

    iget-boolean v1, p0, Lcom/ss/ttm/player/AJVoice;->mStoped:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 58
    :cond_0
    iget v1, p0, Lcom/ss/ttm/player/AJVoice;->mSerial:I

    if-eq v1, p3, :cond_1

    .line 59
    iput p3, p0, Lcom/ss/ttm/player/AJVoice;->mSerial:I

    .line 60
    iget-wide v3, p0, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-lez p3, :cond_1

    .line 61
    iget-object p3, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p3}, Landroid/media/AudioTrack;->flush()V

    .line 62
    :cond_1
    :try_start_0
    sget p3, Lcom/ss/ttm/utils/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p3, v1, :cond_2

    .line 63
    iget-object p1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object p3, p0, Lcom/ss/ttm/player/AJVoice;->mPCMFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3, p2, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 64
    :cond_2
    iget-object p3, p0, Lcom/ss/ttm/player/AJVoice;->mPCMFrameBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice;->mMinBytes:[B

    invoke-virtual {p3, v1, p1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 65
    iget-object p1, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object p3, p0, Lcom/ss/ttm/player/AJVoice;->mMinBytes:[B

    invoke-virtual {p1, p3, v2, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-gez p1, :cond_3

    .line 66
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "write failed : ret: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p2}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return p1

    .line 67
    :cond_3
    iget-wide p2, p0, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    .line 68
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->needsReset()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 69
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->reset()I

    move-result p2

    if-nez p2, :cond_4

    .line 70
    invoke-virtual {p0}, Lcom/ss/ttm/player/AJVoice;->start()I

    move-result v2

    .line 71
    :cond_4
    iget-object p2, p0, Lcom/ss/ttm/player/AJVoice;->mPCMFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move p1, v2

    :goto_1
    return p1

    .line 72
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "write fail = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;I)I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 p2, -0x1

    if-nez p1, :cond_0

    .line 53
    const-string p1, "JAJVoice"

    const-string v0, "buffer is nullpoint"

    invoke-static {p1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return p2

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 55
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_1

    return p2

    .line 56
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return v2
.end method

.method public write([BIII)I
    .locals 7
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-string v0, "JAJVoice"

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/ss/ttm/player/AJVoice;->mStoped:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 3
    :cond_1
    iget v1, p0, Lcom/ss/ttm/player/AJVoice;->mSerial:I

    if-eq v1, p4, :cond_2

    .line 4
    iput p4, p0, Lcom/ss/ttm/player/AJVoice;->mSerial:I

    .line 5
    iget-wide v3, p0, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    const-wide/16 v5, 0x0

    cmp-long p4, v3, v5

    if-lez p4, :cond_2

    .line 6
    iget-object p4, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p4}, Landroid/media/AudioTrack;->flush()V

    .line 7
    :cond_2
    :try_start_0
    iget-object p4, p0, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p4, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_3

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "write failed : ret: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", size = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p2}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return p1

    .line 9
    :cond_3
    iget-wide p2, p0, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    .line 10
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->needsReset()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/ss/ttm/player/AJVoice;->reset()I

    move-result p2

    if-nez p2, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/ss/ttm/player/AJVoice;->start()I

    move-result v2

    :cond_4
    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move p1, v2

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "write fail = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1

    .line 15
    :cond_6
    :goto_1
    const-string p1, "buffer is nullpoint"

    invoke-static {v0, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, -0xa

    return p1
.end method

.method public write([BIIIJ)I
    .locals 16
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    .line 16
    const-string v6, "JAJVoice"

    if-eqz v0, :cond_a

    array-length v7, v0

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 17
    :cond_0
    iget-boolean v7, v1, Lcom/ss/ttm/player/AJVoice;->mStoped:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    return v8

    .line 18
    :cond_1
    iget v7, v1, Lcom/ss/ttm/player/AJVoice;->mSerial:I

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    if-eq v7, v3, :cond_4

    .line 19
    iput v3, v1, Lcom/ss/ttm/player/AJVoice;->mSerial:I

    .line 20
    iget-object v7, v1, Lcom/ss/ttm/player/AJVoice;->audioTrackPositionTracker:Lcom/ss/ttm/player/AudioTrackPositionTracker;

    if-eqz v7, :cond_3

    iget-object v12, v1, Lcom/ss/ttm/player/AJVoice;->mReleasingConditionVariable:Landroid/os/ConditionVariable;

    if-eqz v12, :cond_3

    .line 21
    iget-wide v12, v1, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    cmp-long v12, v12, v10

    if-lez v12, :cond_4

    .line 22
    invoke-virtual {v7}, Lcom/ss/ttm/player/AudioTrackPositionTracker;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 23
    iget-object v7, v1, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->pause()V

    .line 24
    :cond_2
    iget-object v7, v1, Lcom/ss/ttm/player/AJVoice;->audioTrackPositionTracker:Lcom/ss/ttm/player/AudioTrackPositionTracker;

    invoke-virtual {v7}, Lcom/ss/ttm/player/AudioTrackPositionTracker;->reset()V

    .line 25
    iput v9, v1, Lcom/ss/ttm/player/AJVoice;->mStartMediaTimeMs:I

    .line 26
    iget-object v7, v1, Lcom/ss/ttm/player/AJVoice;->mReleasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v7}, Landroid/os/ConditionVariable;->close()V

    .line 27
    iput-wide v10, v1, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    .line 28
    iget-object v7, v1, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v12, 0x0

    .line 29
    iput-object v12, v1, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    .line 30
    new-instance v12, Lcom/ss/ttm/player/AJVoice$2;

    invoke-direct {v12, v1, v7}, Lcom/ss/ttm/player/AJVoice$2;-><init>(Lcom/ss/ttm/player/AJVoice;Landroid/media/AudioTrack;)V

    invoke-static {v12}, Lcom/ss/ttm/player/AVThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 31
    iget-object v7, v1, Lcom/ss/ttm/player/AJVoice;->mReleasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v7}, Landroid/os/ConditionVariable;->block()V

    .line 32
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttm/player/AJVoice;->reconfigure()I

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/ss/ttm/player/AJVoice;->start()I

    .line 34
    iput v3, v1, Lcom/ss/ttm/player/AJVoice;->mSerial:I

    goto :goto_0

    .line 35
    :cond_3
    iget-wide v12, v1, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    cmp-long v7, v12, v10

    if-lez v7, :cond_4

    .line 36
    iget-object v7, v1, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->flush()V

    .line 37
    :cond_4
    :goto_0
    iget v7, v1, Lcom/ss/ttm/player/AJVoice;->mStartMediaTimeMs:I

    if-ne v7, v9, :cond_5

    .line 38
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v1, Lcom/ss/ttm/player/AJVoice;->mStartMediaTimeMs:I

    goto :goto_1

    :cond_5
    int-to-long v10, v7

    .line 39
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttm/player/AJVoice;->getWrittenDurationMs()J

    move-result-wide v12

    add-long/2addr v10, v12

    sub-long v12, v10, v4

    .line 40
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v14, 0xc8

    cmp-long v7, v12, v14

    if-lez v7, :cond_6

    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Discontinuity detected [expected "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", got "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    sub-long/2addr v4, v10

    .line 42
    iget v7, v1, Lcom/ss/ttm/player/AJVoice;->mStartMediaTimeMs:I

    int-to-long v10, v7

    add-long/2addr v10, v4

    long-to-int v4, v10

    iput v4, v1, Lcom/ss/ttm/player/AJVoice;->mStartMediaTimeMs:I

    .line 43
    :cond_6
    :goto_1
    :try_start_0
    iget-object v4, v1, Lcom/ss/ttm/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    move/from16 v5, p2

    invoke-virtual {v4, v0, v5, v2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v0, :cond_7

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write failed : ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    .line 45
    :cond_7
    iget-wide v4, v1, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/ss/ttm/player/AJVoice;->mWrittenPcmBytes:J

    .line 46
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttm/player/AJVoice;->needsReset()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttm/player/AJVoice;->reset()I

    move-result v2

    if-nez v2, :cond_8

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/ss/ttm/player/AJVoice;->start()I

    move-result v8

    .line 49
    iput v3, v1, Lcom/ss/ttm/player/AJVoice;->mSerial:I

    :cond_8
    if-nez v8, :cond_9

    goto :goto_2

    :cond_9
    move v0, v8

    :goto_2
    return v0

    :catch_0
    move-exception v0

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write fail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v9

    .line 52
    :cond_a
    :goto_3
    const-string v0, "buffer is nullpoint"

    invoke-static {v6, v1, v0}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, -0xa

    return v0
.end method

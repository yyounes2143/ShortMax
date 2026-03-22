.class public abstract Lcom/ss/ttvideoengine/TTVideoEngineInternal;
.super Ljava/lang/Object;
.source "TTVideoEngineInternal.java"

# interfaces
.implements Lcom/ss/ttvideoengine/ITTVideoEngineInternal;
.implements Lcom/ss/ttvideoengine/ITTVideoEngineEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;
    }
.end annotation


# static fields
.field protected static final MAX_ERROR_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TTVideoEngine"

.field private static sIsColdStart:I = 0x1


# instance fields
.field protected mAccumulatedErrorCount:I

.field protected mAllowAllExtensions:I

.field protected mAsyncInitEnable:I

.field protected mAudioCodecID:I

.field protected mAudioCodecType:I

.field protected mBufferingType:I

.field protected mCleanWhenStop:I

.field protected mCodecId:I

.field protected mConfigCenterVersion:I

.field protected mConfigParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mConfigParamsOption:I

.field protected mContext:Landroid/content/Context;

.field protected mCurPlayBackTime:I

.field protected mDirectURL:Ljava/lang/String;

.field protected mDirectUrlSrc:Ljava/lang/String;

.field protected mDisableResetSystemVolume:I

.field protected mDisableThreadPoolUsing:I

.field protected mDuration:I

.field protected mEnableMasterM3u8Optimize:I

.field protected mEnablePlaySpeedExtend:I

.field protected mEngineConfig:Lcom/ss/ttvideoengine/configcenter/IEngineConfig;

.field protected mEngineHasUsed:Z

.field protected mError:Lcom/ss/ttvideoengine/utils/Error;

.field protected mErrorCount:I

.field protected mErrorEnd:Z

.field protected mExoAllowMediaCodecHelper:I

.field protected mExoCodecAsyncInitEnable:I

.field protected mExoCodecReusable:I

.field protected mExoConsecutiveFailNum:I

.field protected mExoEnableNativeMdl:Z

.field protected mExoLoadControlParameters:Ljava/lang/String;

.field protected mExoRenderReadyMs:I

.field protected mExtVoiceFormat:I

.field protected mFallbackExoFirst:I

.field protected mFirstGetWidthHeight:Z

.field protected mForbidOSPlayer:I

.field protected mHardwareDecodeEnablePlayer2:I

.field protected mHasComplete:Z

.field protected mHasFirstFrameShown:Z

.field protected mHeight:I

.field protected mInitialURL:Ljava/lang/String;

.field protected mIsColdStart:I

.field protected mIsDirectURL:Z

.field protected mIsLocal:Z

.field protected mIsMute:Z

.field protected mIsPlayComplete:Z

.field protected mIsStartPlayAutomatically:Z

.field protected mLastPlaybackTime:I

.field protected mLastSwitchRadioModeTime:J

.field protected mLeftVolume:F

.field protected mLoadState:I

.field protected mLoadedProgress:I

.field protected mLocalURL:Ljava/lang/String;

.field protected mLooping:Z

.field protected mMaxAccumulatedCountSetByUser:I

.field protected mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

.field protected mMediaPlayerListener:Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;

.field protected mOriginalUrls:[Ljava/lang/String;

.field protected mPausedBeforePrepared:Z

.field protected mPlayBufferConfig:Ljava/lang/String;

.field protected mPlayDuration:Lcom/ss/ttvideoengine/utils/IPlayDurationManager;

.field protected mPlayLoadConfig:Ljava/lang/String;

.field protected mPlayRangeConfig:Ljava/lang/String;

.field protected mPlayTime:J

.field protected mPlaybackParams:Lcom/ss/ttm/player/PlaybackParams;

.field protected mPlaybackState:I

.field protected mPlayerConfigExecutor:Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;

.field protected mPlayerDegradeMode:I

.field protected mPlayerType:I

.field protected mPrepared:Z

.field protected mRadioModeEnable:I

.field protected mReleased:Z

.field protected mRetrying:Z

.field protected mRetryingNotHandleError:Z

.field protected mRightVolume:F

.field protected mSeekCompletionListener:Lcom/ss/ttvideoengine/SeekCompletionListener;

.field protected mSeeking:Z

.field protected mSeekingStartTime:J

.field protected mSetTrackVolume:I

.field protected mShouldPlay:Z

.field protected mShouldStop:Z

.field private mSourceTypeStr:Ljava/lang/String;

.field protected mStarted:Z

.field protected mState:I

.field protected mSubTag:Ljava/lang/String;

.field protected mSurface:Landroid/view/Surface;

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSurfaceHolderByKernel:I

.field protected mTag:Ljava/lang/String;

.field protected mTexNotifyFirstFrame:Z

.field protected mUserStopped:Z

.field protected mVideoCodecID:I

.field protected mVideoCodecType:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mTag:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSubTag:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigParams:Ljava/util/HashMap;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSurfaceHolderByKernel:I

    .line 15
    .line 16
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    .line 17
    .line 18
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlaybackState:I

    .line 19
    .line 20
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLoadState:I

    .line 21
    .line 22
    const/4 v3, -0x1

    .line 23
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExtVoiceFormat:I

    .line 24
    .line 25
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mBufferingType:I

    .line 26
    .line 27
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSourceTypeStr:Ljava/lang/String;

    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsDirectURL:Z

    .line 30
    .line 31
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDirectURL:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDirectUrlSrc:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mOriginalUrls:[Ljava/lang/String;

    .line 36
    .line 37
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsLocal:Z

    .line 38
    .line 39
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLocalURL:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    iput v4, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigParamsOption:I

    .line 43
    .line 44
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mForbidOSPlayer:I

    .line 45
    .line 46
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mFallbackExoFirst:I

    .line 47
    .line 48
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerDegradeMode:I

    .line 49
    .line 50
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDisableThreadPoolUsing:I

    .line 51
    .line 52
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsColdStart:I

    .line 53
    .line 54
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mShouldPlay:Z

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mShouldStop:Z

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mUserStopped:Z

    .line 59
    .line 60
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPausedBeforePrepared:Z

    .line 61
    .line 62
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mStarted:Z

    .line 63
    .line 64
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPrepared:Z

    .line 65
    .line 66
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mReleased:Z

    .line 67
    .line 68
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHasComplete:Z

    .line 69
    .line 70
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mErrorEnd:Z

    .line 71
    .line 72
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mEngineHasUsed:Z

    .line 73
    .line 74
    const-wide/16 v5, 0x0

    .line 75
    .line 76
    iput-wide v5, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayTime:J

    .line 77
    .line 78
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRetrying:Z

    .line 79
    .line 80
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRetryingNotHandleError:Z

    .line 81
    .line 82
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAccumulatedErrorCount:I

    .line 83
    .line 84
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsPlayComplete:Z

    .line 85
    .line 86
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHasFirstFrameShown:Z

    .line 87
    .line 88
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mTexNotifyFirstFrame:Z

    .line 89
    .line 90
    iput-boolean v4, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mFirstGetWidthHeight:Z

    .line 91
    .line 92
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSeeking:Z

    .line 93
    .line 94
    iput-wide v5, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSeekingStartTime:J

    .line 95
    .line 96
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLastPlaybackTime:I

    .line 97
    .line 98
    const/high16 v7, -0x40800000    # -1.0f

    .line 99
    .line 100
    iput v7, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLeftVolume:F

    .line 101
    .line 102
    iput v7, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRightVolume:F

    .line 103
    .line 104
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDuration:I

    .line 105
    .line 106
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mCurPlayBackTime:I

    .line 107
    .line 108
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLoadedProgress:I

    .line 109
    .line 110
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mWidth:I

    .line 111
    .line 112
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHeight:I

    .line 113
    .line 114
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mCodecId:I

    .line 115
    .line 116
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAsyncInitEnable:I

    .line 117
    .line 118
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSetTrackVolume:I

    .line 119
    .line 120
    iput-boolean v4, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsStartPlayAutomatically:Z

    .line 121
    .line 122
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mCleanWhenStop:I

    .line 123
    .line 124
    const/16 v4, 0x1e

    .line 125
    .line 126
    iput v4, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMaxAccumulatedCountSetByUser:I

    .line 127
    .line 128
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRadioModeEnable:I

    .line 129
    .line 130
    iput-wide v5, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLastSwitchRadioModeTime:J

    .line 131
    .line 132
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHardwareDecodeEnablePlayer2:I

    .line 133
    .line 134
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDisableResetSystemVolume:I

    .line 135
    .line 136
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 137
    .line 138
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecType:I

    .line 139
    .line 140
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecID:I

    .line 141
    .line 142
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecID:I

    .line 143
    .line 144
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoLoadControlParameters:Ljava/lang/String;

    .line 145
    .line 146
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoRenderReadyMs:I

    .line 147
    .line 148
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoConsecutiveFailNum:I

    .line 149
    .line 150
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoCodecReusable:I

    .line 151
    .line 152
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoCodecAsyncInitEnable:I

    .line 153
    .line 154
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoAllowMediaCodecHelper:I

    .line 155
    .line 156
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoEnableNativeMdl:Z

    .line 157
    .line 158
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mErrorCount:I

    .line 159
    .line 160
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mError:Lcom/ss/ttvideoengine/utils/Error;

    .line 161
    .line 162
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayLoadConfig:Ljava/lang/String;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayRangeConfig:Ljava/lang/String;

    .line 165
    .line 166
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayBufferConfig:Ljava/lang/String;

    .line 167
    .line 168
    return-void
.end method

.method public static logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 1
    const-string p0, "TTVideoEngine"

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setIntOption2(II)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_4

    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/16 v0, 0x75

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x1e0

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerConfigExecutor:Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mEngineConfig:Lcom/ss/ttvideoengine/configcenter/IEngineConfig;

    .line 23
    .line 24
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/configcenter/IEngineConfig;->setIntOption(II)Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->execute(Lcom/ss/ttvideoengine/configcenter/ConfigItem;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :pswitch_0
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoAllowMediaCodecHelper:I

    .line 34
    .line 35
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 36
    .line 37
    if-eqz p1, :cond_5

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-ne p1, v0, :cond_5

    .line 44
    .line 45
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 46
    .line 47
    const/16 v0, 0x138d

    .line 48
    .line 49
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :pswitch_1
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoCodecAsyncInitEnable:I

    .line 55
    .line 56
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-ne p1, v0, :cond_5

    .line 65
    .line 66
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 67
    .line 68
    const/16 v0, 0x138c

    .line 69
    .line 70
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :pswitch_2
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoCodecReusable:I

    .line 76
    .line 77
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 78
    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-ne p1, v0, :cond_5

    .line 86
    .line 87
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 88
    .line 89
    const/16 v0, 0x138b

    .line 90
    .line 91
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_3
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoConsecutiveFailNum:I

    .line 96
    .line 97
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-ne p1, v0, :cond_5

    .line 106
    .line 107
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 108
    .line 109
    const/16 v0, 0x138a

    .line 110
    .line 111
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_4
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoRenderReadyMs:I

    .line 116
    .line 117
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 118
    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-ne p1, v0, :cond_5

    .line 126
    .line 127
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 128
    .line 129
    const/16 v0, 0x1389

    .line 130
    .line 131
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_0
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRadioModeEnable:I

    .line 136
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    iput-wide v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLastSwitchRadioModeTime:J

    .line 142
    .line 143
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 144
    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    const/16 v0, 0x105

    .line 148
    .line 149
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_1
    const/4 p1, 0x4

    .line 154
    invoke-static {p1, p2}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_2
    const/4 p1, 0x1

    .line 159
    if-eqz p2, :cond_3

    .line 160
    .line 161
    move p2, p1

    .line 162
    goto :goto_0

    .line 163
    :cond_3
    const/4 p2, 0x0

    .line 164
    :goto_0
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsStartPlayAutomatically:Z

    .line 165
    .line 166
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 167
    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    xor-int/2addr p1, p2

    .line 171
    const/16 p2, 0xc4

    .line 172
    .line 173
    invoke-interface {v0, p2, p1}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_4
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mForbidOSPlayer:I

    .line 178
    .line 179
    const/16 p1, 0xb

    .line 180
    .line 181
    invoke-static {p1, p2}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 182
    .line 183
    .line 184
    :cond_5
    :goto_1
    return-void

    .line 185
    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static transMediaPlayerType(I)I
    .locals 3

    const/4 v0, 0x2

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown internal player type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method protected static transMediaPlayerType(Lcom/ss/ttm/player/MediaPlayer;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    move-result p0

    const/4 v1, 0x2

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method


# virtual methods
.method abstract createMediaPlayer()Lcom/ss/ttm/player/MediaPlayer;
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 3
    .line 4
    .line 5
    const/16 v1, 0x9d

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    const/4 v7, -0x1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    sparse-switch v8, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    :goto_0
    move v5, v7

    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :sswitch_0
    const-string v5, "format_type"

    .line 31
    .line 32
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 v5, 0x19

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :sswitch_1
    const-string v5, "hw_user"

    .line 44
    .line 45
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/16 v5, 0x18

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :sswitch_2
    const-string v5, "initial_url"

    .line 57
    .line 58
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/16 v5, 0x17

    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :sswitch_3
    const-string v5, "engine_state"

    .line 70
    .line 71
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const/16 v5, 0x16

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :sswitch_4
    const-string v5, "cur_play_pos"

    .line 83
    .line 84
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const/16 v5, 0x15

    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :sswitch_5
    const-string/jumbo v5, "width"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    const/16 v5, 0x14

    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :sswitch_6
    const-string v5, "codec"

    .line 110
    .line 111
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_6

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    const/16 v5, 0x13

    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :sswitch_7
    const-string v5, "device_id"

    .line 123
    .line 124
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_7

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_7
    const/16 v5, 0x12

    .line 132
    .line 133
    goto/16 :goto_1

    .line 134
    .line 135
    :sswitch_8
    const-string v5, "chipboard"

    .line 136
    .line 137
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_8

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_8
    const/16 v5, 0x11

    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :sswitch_9
    const-string v5, "mute"

    .line 149
    .line 150
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_9

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_9
    const/16 v5, 0x10

    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :sswitch_a
    const-string/jumbo v5, "tag"

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_a

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_a
    const/16 v5, 0xf

    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :sswitch_b
    const-string/jumbo v5, "vd"

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_b

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_b
    const/16 v5, 0xe

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :sswitch_c
    const-string v5, "hw"

    .line 193
    .line 194
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_c

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_c
    const/16 v5, 0xd

    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :sswitch_d
    const-string v5, "cp"

    .line 207
    .line 208
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-nez p1, :cond_d

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :cond_d
    const/16 v5, 0xc

    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :sswitch_e
    const-string v5, "radio_mode"

    .line 221
    .line 222
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-nez p1, :cond_e

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_e
    const/16 v5, 0xb

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :sswitch_f
    const-string/jumbo v5, "source_type"

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-nez p1, :cond_f

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_f
    const/16 v5, 0xa

    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :sswitch_10
    const-string v5, "cold_start"

    .line 250
    .line 251
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-nez p1, :cond_10

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_10
    const/16 v5, 0x9

    .line 260
    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :sswitch_11
    const-string/jumbo v5, "volume"

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_11

    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :cond_11
    const/16 v5, 0x8

    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :sswitch_12
    const-string/jumbo v5, "subtag"

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-nez p1, :cond_12

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_12
    const/4 v5, 0x7

    .line 290
    goto :goto_1

    .line 291
    :sswitch_13
    const-string v5, "audio_codec_nameid"

    .line 292
    .line 293
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-nez p1, :cond_13

    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_13
    const/4 v5, 0x6

    .line 302
    goto :goto_1

    .line 303
    :sswitch_14
    const-string v5, "height"

    .line 304
    .line 305
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-nez p1, :cond_14

    .line 310
    .line 311
    goto/16 :goto_0

    .line 312
    .line 313
    :cond_14
    const/4 v5, 0x5

    .line 314
    goto :goto_1

    .line 315
    :sswitch_15
    const-string/jumbo v5, "video_codec_nameid"

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    if-nez p1, :cond_15

    .line 323
    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :cond_15
    const/4 v5, 0x4

    .line 327
    goto :goto_1

    .line 328
    :sswitch_16
    const-string v5, "async_init"

    .line 329
    .line 330
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    if-nez p1, :cond_16

    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_16
    const/4 v5, 0x3

    .line 339
    goto :goto_1

    .line 340
    :sswitch_17
    const-string v5, "async_codec_id"

    .line 341
    .line 342
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    if-nez p1, :cond_17

    .line 347
    .line 348
    goto/16 :goto_0

    .line 349
    .line 350
    :cond_17
    move v5, v0

    .line 351
    goto :goto_1

    .line 352
    :sswitch_18
    const-string v5, "render_type"

    .line 353
    .line 354
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    if-nez p1, :cond_18

    .line 359
    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :cond_18
    move v5, v3

    .line 363
    goto :goto_1

    .line 364
    :sswitch_19
    const-string v8, "chiphardware"

    .line 365
    .line 366
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    if-nez p1, :cond_19

    .line 371
    .line 372
    goto/16 :goto_0

    .line 373
    .line 374
    :cond_19
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 375
    .line 376
    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    :pswitch_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 380
    .line 381
    if-eqz p1, :cond_1a

    .line 382
    .line 383
    const/16 v0, 0x204

    .line 384
    .line 385
    invoke-interface {p1, v0}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    return-object p1

    .line 390
    :cond_1a
    return-object v2

    .line 391
    :pswitch_1
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHardwareDecodeEnablePlayer2:I

    .line 392
    .line 393
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    return-object p1

    .line 398
    :pswitch_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mInitialURL:Ljava/lang/String;

    .line 399
    .line 400
    return-object p1

    .line 401
    :pswitch_3
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    .line 402
    .line 403
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    return-object p1

    .line 408
    :pswitch_4
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mCurPlayBackTime:I

    .line 409
    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    return-object p1

    .line 415
    :pswitch_5
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mWidth:I

    .line 416
    .line 417
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    return-object p1

    .line 422
    :pswitch_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 423
    .line 424
    if-nez p1, :cond_1b

    .line 425
    .line 426
    goto/16 :goto_2

    .line 427
    .line 428
    :cond_1b
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecID:I

    .line 429
    .line 430
    if-gez v0, :cond_1c

    .line 431
    .line 432
    const/16 v0, 0x8d

    .line 433
    .line 434
    invoke-interface {p1, v0, v7}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecID:I

    .line 439
    .line 440
    :cond_1c
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecID:I

    .line 441
    .line 442
    if-nez p1, :cond_1d

    .line 443
    .line 444
    const-string p1, "h264"

    .line 445
    .line 446
    return-object p1

    .line 447
    :cond_1d
    if-ne p1, v3, :cond_1e

    .line 448
    .line 449
    const-string p1, "h265"

    .line 450
    .line 451
    return-object p1

    .line 452
    :cond_1e
    const/16 v0, 0x21

    .line 453
    .line 454
    if-ne p1, v0, :cond_29

    .line 455
    .line 456
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    return-object p1

    .line 461
    :pswitch_7
    sget-object p1, Lcom/ss/ttvideoengine/BaseAppInfo;->mDeviceId:Ljava/lang/String;

    .line 462
    .line 463
    return-object p1

    .line 464
    :pswitch_8
    :try_start_0
    sget-object p1, Landroid/os/Build;->BOARD:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .line 466
    return-object p1

    .line 467
    :catch_0
    move-exception p1

    .line 468
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->d(Ljava/lang/Throwable;)V

    .line 469
    .line 470
    .line 471
    return-object v2

    .line 472
    :pswitch_9
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 473
    .line 474
    if-eqz p1, :cond_20

    .line 475
    .line 476
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->isMute()Z

    .line 477
    .line 478
    .line 479
    move-result p1

    .line 480
    if-eqz p1, :cond_1f

    .line 481
    .line 482
    return-object v4

    .line 483
    :cond_1f
    return-object v6

    .line 484
    :cond_20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    return-object p1

    .line 489
    :pswitch_a
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mTag:Ljava/lang/String;

    .line 490
    .line 491
    return-object p1

    .line 492
    :pswitch_b
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDuration:I

    .line 493
    .line 494
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    return-object p1

    .line 499
    :pswitch_c
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 500
    .line 501
    if-nez p1, :cond_21

    .line 502
    .line 503
    return-object v6

    .line 504
    :cond_21
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 505
    .line 506
    if-gez v2, :cond_22

    .line 507
    .line 508
    invoke-interface {p1, v1, v7}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 509
    .line 510
    .line 511
    move-result p1

    .line 512
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 513
    .line 514
    :cond_22
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 515
    .line 516
    if-eq p1, v0, :cond_23

    .line 517
    .line 518
    return-object v6

    .line 519
    :cond_23
    return-object v4

    .line 520
    :pswitch_d
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoAllowMediaCodecHelper:I

    .line 521
    .line 522
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    return-object p1

    .line 527
    :pswitch_e
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRadioModeEnable:I

    .line 528
    .line 529
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    return-object p1

    .line 534
    :pswitch_f
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSourceTypeStr:Ljava/lang/String;

    .line 535
    .line 536
    return-object p1

    .line 537
    :pswitch_10
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsColdStart:I

    .line 538
    .line 539
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    return-object p1

    .line 544
    :pswitch_11
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getVolume()F

    .line 545
    .line 546
    .line 547
    move-result p1

    .line 548
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    return-object p1

    .line 553
    :pswitch_12
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSubTag:Ljava/lang/String;

    .line 554
    .line 555
    return-object p1

    .line 556
    :pswitch_13
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 557
    .line 558
    if-nez p1, :cond_24

    .line 559
    .line 560
    return-object v6

    .line 561
    :cond_24
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecType:I

    .line 562
    .line 563
    if-gez v0, :cond_25

    .line 564
    .line 565
    const/16 v0, 0x9e

    .line 566
    .line 567
    invoke-interface {p1, v0, v7}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 568
    .line 569
    .line 570
    move-result p1

    .line 571
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecType:I

    .line 572
    .line 573
    :cond_25
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecType:I

    .line 574
    .line 575
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 576
    .line 577
    .line 578
    move-result-object p1

    .line 579
    return-object p1

    .line 580
    :pswitch_14
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHeight:I

    .line 581
    .line 582
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    return-object p1

    .line 587
    :pswitch_15
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 588
    .line 589
    if-nez p1, :cond_26

    .line 590
    .line 591
    return-object v6

    .line 592
    :cond_26
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 593
    .line 594
    if-gez v0, :cond_27

    .line 595
    .line 596
    invoke-interface {p1, v1, v7}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 597
    .line 598
    .line 599
    move-result p1

    .line 600
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 601
    .line 602
    :cond_27
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 603
    .line 604
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 605
    .line 606
    .line 607
    move-result-object p1

    .line 608
    return-object p1

    .line 609
    :pswitch_16
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAsyncInitEnable:I

    .line 610
    .line 611
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    return-object p1

    .line 616
    :pswitch_17
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mCodecId:I

    .line 617
    .line 618
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    return-object p1

    .line 623
    :pswitch_18
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 624
    .line 625
    if-nez p1, :cond_28

    .line 626
    .line 627
    goto :goto_2

    .line 628
    :cond_28
    const/16 v0, 0x8b

    .line 629
    .line 630
    invoke-interface {p1, v0, v7}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 631
    .line 632
    .line 633
    move-result p1

    .line 634
    if-eqz p1, :cond_2b

    .line 635
    .line 636
    if-eq p1, v3, :cond_2a

    .line 637
    .line 638
    :cond_29
    :goto_2
    const/4 p1, 0x0

    .line 639
    return-object p1

    .line 640
    :cond_2a
    const-string p1, "nativewindow"

    .line 641
    .line 642
    return-object p1

    .line 643
    :cond_2b
    const-string p1, "opengl"

    .line 644
    .line 645
    return-object p1

    .line 646
    :pswitch_19
    :try_start_1
    sget-object p1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 647
    .line 648
    return-object p1

    .line 649
    :catch_1
    move-exception p1

    .line 650
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->d(Ljava/lang/Throwable;)V

    .line 651
    .line 652
    .line 653
    return-object v2

    .line 654
    nop

    .line 655
    :sswitch_data_0
    .sparse-switch
        -0x725c91cc -> :sswitch_19
        -0x61026bbd -> :sswitch_18
        -0x5ec863b9 -> :sswitch_17
        -0x52b6b70d -> :sswitch_16
        -0x4970718d -> :sswitch_15
        -0x48c76ed9 -> :sswitch_14
        -0x3a03ed08 -> :sswitch_13
        -0x3523a6a6 -> :sswitch_12
        -0x305518e6 -> :sswitch_11
        -0x1857e4b9 -> :sswitch_10
        -0x50b4722 -> :sswitch_f
        -0x21dc99 -> :sswitch_e
        0xc6d -> :sswitch_d
        0xd0f -> :sswitch_c
        0xeae -> :sswitch_b
        0x1bf9a -> :sswitch_a
        0x335219 -> :sswitch_9
        0x1172a1a -> :sswitch_8
        0x180aba4 -> :sswitch_7
        0x5a71016 -> :sswitch_6
        0x6be2dc6 -> :sswitch_5
        0x4452e9e8 -> :sswitch_4
        0x4736e854 -> :sswitch_3
        0x498909f4 -> :sswitch_2
        0x4e0a68fb -> :sswitch_1
        0x56f0b282 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public getBufferingType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mBufferingType:I

    .line 2
    .line 3
    return v0
.end method

.method protected getConfigFloat(IF)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigCenterVersion:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mEngineConfig:Lcom/ss/ttvideoengine/configcenter/IEngineConfig;

    .line 6
    .line 7
    invoke-interface {p2, p1}, Lcom/ss/ttvideoengine/configcenter/IEngineConfig;->getFloatOption(I)F

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    :cond_0
    return p2
.end method

.method protected getConfigInt(II)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigCenterVersion:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mEngineConfig:Lcom/ss/ttvideoengine/configcenter/IEngineConfig;

    .line 6
    .line 7
    invoke-interface {p2, p1}, Lcom/ss/ttvideoengine/configcenter/IEngineConfig;->getIntOption(I)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    :cond_0
    return p2
.end method

.method protected getConfigString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigCenterVersion:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mEngineConfig:Lcom/ss/ttvideoengine/configcenter/IEngineConfig;

    .line 6
    .line 7
    invoke-interface {p2, p1}, Lcom/ss/ttvideoengine/configcenter/IEngineConfig;->getStringOption(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :cond_0
    return-object p2
.end method

.method public getCurrentPlaybackTimeAsync()I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/ss/ttvideoengine/ITTVideoEngineInternal;->getCurrentPlaybackTime()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDuration:I

    .line 2
    .line 3
    return v0
.end method

.method public getFloatOption(I)F
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getIntOption(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 2
    .line 3
    const/16 v1, 0x1e0

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq p1, v1, :cond_7

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    const-string v3, "audio"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigCenterVersion:I

    .line 16
    .line 17
    if-lez v0, :cond_8

    .line 18
    .line 19
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mEngineConfig:Lcom/ss/ttvideoengine/configcenter/IEngineConfig;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/configcenter/IEngineConfig;->getIntOption(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :pswitch_0
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :pswitch_1
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLoadState:I

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :pswitch_2
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlaybackState:I

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :pswitch_3
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mBufferingType:I

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :pswitch_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayDuration:Lcom/ss/ttvideoengine/utils/IPlayDurationManager;

    .line 46
    .line 47
    if-eqz p1, :cond_8

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/ss/ttvideoengine/utils/IPlayDurationManager;->getPlayedDuration()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :pswitch_5
    if-nez v0, :cond_0

    .line 56
    .line 57
    :goto_0
    move v2, v4

    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_0
    invoke-interface {v0}, Lcom/ss/ttm/player/MediaPlayer;->getCurrentPosition()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    move v2, p1

    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :pswitch_6
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLoadedProgress:I

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :pswitch_7
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDuration:I

    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :pswitch_8
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    if-eqz p1, :cond_8

    .line 78
    .line 79
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/media/AudioManager;

    .line 84
    .line 85
    if-eqz p1, :cond_1

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    :cond_1
    if-gez v2, :cond_8

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_9
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    if-eqz p1, :cond_8

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/media/AudioManager;

    .line 103
    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    :cond_2
    if-gez v2, :cond_8

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_a
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerType:I

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :pswitch_b
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecID:I

    .line 117
    .line 118
    if-gez p1, :cond_3

    .line 119
    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    const/16 p1, 0x8c

    .line 123
    .line 124
    invoke-interface {v0, p1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecID:I

    .line 129
    .line 130
    :cond_3
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecID:I

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :pswitch_c
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecID:I

    .line 134
    .line 135
    if-gez p1, :cond_4

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    const/16 p1, 0x8d

    .line 140
    .line 141
    invoke-interface {v0, p1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecID:I

    .line 146
    .line 147
    :cond_4
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecID:I

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :pswitch_d
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecType:I

    .line 151
    .line 152
    if-gez p1, :cond_5

    .line 153
    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    const/16 p1, 0x9e

    .line 157
    .line 158
    invoke-interface {v0, p1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecType:I

    .line 163
    .line 164
    :cond_5
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecType:I

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :pswitch_e
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 168
    .line 169
    if-gez p1, :cond_6

    .line 170
    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    const/16 p1, 0x9d

    .line 174
    .line 175
    invoke-interface {v0, p1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 180
    .line 181
    :cond_6
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_7
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRadioModeEnable:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :goto_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->d(Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    :cond_8
    :goto_2
    return v2

    .line 191
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public getLoadState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLoadState:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoadedProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLoadedProgress:I

    .line 2
    .line 3
    return v0
.end method

.method public getLongOption(I)J
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigCenterVersion:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mEngineConfig:Lcom/ss/ttvideoengine/configcenter/IEngineConfig;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/configcenter/IEngineConfig;->getLongOption(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    return-wide v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlaybackState:I

    .line 2
    .line 3
    return v0
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    return-object p1
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ss/ttm/player/MediaPlayer;->getVideoHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ss/ttm/player/MediaPlayer;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalHelper;->getVolume(Landroid/content/Context;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getWatchedDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayDuration:Lcom/ss/ttvideoengine/utils/IPlayDurationManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ss/ttvideoengine/utils/IPlayDurationManager;->getPlayedDuration()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public initEngine(Landroid/content/Context;I)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerType:I

    .line 4
    .line 5
    new-instance p1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigParams:Ljava/util/HashMap;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsMute:Z

    .line 14
    .line 15
    sget v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->sIsColdStart:I

    .line 16
    .line 17
    iput v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsColdStart:I

    .line 18
    .line 19
    sput p1, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->sIsColdStart:I

    .line 20
    .line 21
    const/4 v0, 0x6

    .line 22
    invoke-static {v0, p1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq p2, v2, :cond_0

    .line 29
    .line 30
    if-eq p2, v0, :cond_0

    .line 31
    .line 32
    move v3, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, p1

    .line 35
    :goto_0
    invoke-static {v1, v3}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 36
    .line 37
    .line 38
    if-ne p2, v1, :cond_1

    .line 39
    .line 40
    move v3, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v3, p1

    .line 43
    :goto_1
    invoke-static {v2, v3}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 44
    .line 45
    .line 46
    if-ne p2, v0, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move v1, p1

    .line 50
    :goto_2
    const/16 p2, 0x1a

    .line 51
    .line 52
    invoke-static {p2, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 53
    .line 54
    .line 55
    const/16 p2, 0xb

    .line 56
    .line 57
    invoke-static {p2, p1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 58
    .line 59
    .line 60
    const/4 p2, 0x4

    .line 61
    invoke-static {p2, p1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public isInHousePlayer()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->isPlayerType(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->isPlayerType(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->isPlayerType(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->isPlayerType(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    :cond_0
    move v0, v2

    .line 30
    :cond_1
    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLooping:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMute()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mShouldPlay:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlaybackState:I

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsMute:Z

    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Lcom/ss/ttm/player/MediaPlayer;->isMute()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :cond_1
    return v0

    .line 27
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsMute:Z

    .line 28
    .line 29
    return v0
.end method

.method public isOSPlayer()Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->isPlayerType(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public isPlayerType(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->transMediaPlayerType(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerType:I

    .line 15
    .line 16
    :goto_0
    if-ne v0, p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_1
    return p1
.end method

.method public isShouldPlay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mShouldPlay:Z

    .line 2
    .line 3
    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mStarted:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract logcatTag()Ljava/lang/String;
.end method

.method protected needReleaseMediaPlayer()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x3

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x4

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 40
    :goto_1
    return v0
.end method

.method protected notifyBufferEnd(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyBufferStart(III)V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyBufferingUpdate(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyCompletion()V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyInfoIdChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyLoadStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyPlaybackStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyPrepare()V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyPrepared()V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyReadyForDisplay()V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyRenderStart()V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifySARChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifySeekCompletion(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyStreamChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected notifyVideoSizeChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method protected onMediaPlayerBufferingUpdate(Lcom/ss/ttm/player/MediaPlayer;I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected onMediaPlayerCompletion(Lcom/ss/ttm/player/MediaPlayer;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected onMediaPlayerError(Lcom/ss/ttm/player/MediaPlayer;II)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method protected onMediaPlayerInfo(Lcom/ss/ttm/player/MediaPlayer;II)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method protected onMediaPlayerPrepared(Lcom/ss/ttm/player/MediaPlayer;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected onMediaPlayerSARChanged(Lcom/ss/ttm/player/MediaPlayer;II)V
    .locals 0

    .line 1
    return-void
.end method

.method protected onMediaPlayerSeekComplete(Lcom/ss/ttm/player/MediaPlayer;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method protected onMediaPlayerVideoSizeChanged(Lcom/ss/ttm/player/MediaPlayer;II)V
    .locals 0

    .line 1
    return-void
.end method

.method protected receivedError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected refreshEnginePara(Landroid/content/Context;ILjava/util/Map;)V
    .locals 0

    .line 1
    sget p1, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->sIsColdStart:I

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsColdStart:I

    .line 4
    .line 5
    return-void
.end method

.method protected registerListenerMediaPlayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayerListener:Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lcom/ss/ttm/player/MediaPlayer;->setOnPreparedListener(Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayerListener:Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->setOnInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayerListener:Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->setOnBufferingUpdateListener(Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayerListener:Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->setOnCompletionListener(Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayerListener:Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->setOnErrorListener(Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayerListener:Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;

    .line 49
    .line 50
    invoke-interface {v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->setOnSeekCompleteListener(Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayerListener:Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->setOnVideoSizeChangedListener(Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayerListener:Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;

    .line 63
    .line 64
    invoke-interface {v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->setOnSARChangedListener(Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method protected releaseMediaPlayer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttm/player/MediaPlayer;->release()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mTexNotifyFirstFrame:Z

    .line 11
    .line 12
    return-void
.end method

.method protected resetAllOptions()V
    .locals 8

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mTag:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSubTag:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayerListener:Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerType:I

    .line 14
    .line 15
    new-instance v3, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigParams:Ljava/util/HashMap;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSurface:Landroid/view/Surface;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 25
    .line 26
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSurfaceHolderByKernel:I

    .line 27
    .line 28
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    .line 29
    .line 30
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlaybackState:I

    .line 31
    .line 32
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLoadState:I

    .line 33
    .line 34
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlaybackParams:Lcom/ss/ttm/player/PlaybackParams;

    .line 35
    .line 36
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mEnablePlaySpeedExtend:I

    .line 37
    .line 38
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAllowAllExtensions:I

    .line 39
    .line 40
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mEnableMasterM3u8Optimize:I

    .line 41
    .line 42
    const/4 v3, -0x1

    .line 43
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mBufferingType:I

    .line 44
    .line 45
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSourceTypeStr:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mInitialURL:Ljava/lang/String;

    .line 48
    .line 49
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsDirectURL:Z

    .line 50
    .line 51
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDirectURL:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDirectUrlSrc:Ljava/lang/String;

    .line 54
    .line 55
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsLocal:Z

    .line 56
    .line 57
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLocalURL:Ljava/lang/String;

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    iput v4, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigParamsOption:I

    .line 61
    .line 62
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mForbidOSPlayer:I

    .line 63
    .line 64
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mFallbackExoFirst:I

    .line 65
    .line 66
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerDegradeMode:I

    .line 67
    .line 68
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsColdStart:I

    .line 69
    .line 70
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mShouldPlay:Z

    .line 71
    .line 72
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mUserStopped:Z

    .line 73
    .line 74
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPausedBeforePrepared:Z

    .line 75
    .line 76
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mStarted:Z

    .line 77
    .line 78
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPrepared:Z

    .line 79
    .line 80
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHasComplete:Z

    .line 81
    .line 82
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mErrorEnd:Z

    .line 83
    .line 84
    const-wide/16 v5, 0x0

    .line 85
    .line 86
    iput-wide v5, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayTime:J

    .line 87
    .line 88
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRetrying:Z

    .line 89
    .line 90
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRetryingNotHandleError:Z

    .line 91
    .line 92
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAccumulatedErrorCount:I

    .line 93
    .line 94
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsPlayComplete:Z

    .line 95
    .line 96
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHasFirstFrameShown:Z

    .line 97
    .line 98
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mTexNotifyFirstFrame:Z

    .line 99
    .line 100
    iput-boolean v4, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mFirstGetWidthHeight:Z

    .line 101
    .line 102
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSeeking:Z

    .line 103
    .line 104
    iput-wide v5, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSeekingStartTime:J

    .line 105
    .line 106
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSeekCompletionListener:Lcom/ss/ttvideoengine/SeekCompletionListener;

    .line 107
    .line 108
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLastPlaybackTime:I

    .line 109
    .line 110
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLooping:Z

    .line 111
    .line 112
    const/high16 v7, -0x40800000    # -1.0f

    .line 113
    .line 114
    iput v7, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLeftVolume:F

    .line 115
    .line 116
    iput v7, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRightVolume:F

    .line 117
    .line 118
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsMute:Z

    .line 119
    .line 120
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDuration:I

    .line 121
    .line 122
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mCurPlayBackTime:I

    .line 123
    .line 124
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLoadedProgress:I

    .line 125
    .line 126
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mWidth:I

    .line 127
    .line 128
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHeight:I

    .line 129
    .line 130
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mCodecId:I

    .line 131
    .line 132
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAsyncInitEnable:I

    .line 133
    .line 134
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSetTrackVolume:I

    .line 135
    .line 136
    iput-boolean v4, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsStartPlayAutomatically:Z

    .line 137
    .line 138
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mCleanWhenStop:I

    .line 139
    .line 140
    const/16 v4, 0x1e

    .line 141
    .line 142
    iput v4, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMaxAccumulatedCountSetByUser:I

    .line 143
    .line 144
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRadioModeEnable:I

    .line 145
    .line 146
    iput-wide v5, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLastSwitchRadioModeTime:J

    .line 147
    .line 148
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayLoadConfig:Ljava/lang/String;

    .line 149
    .line 150
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayRangeConfig:Ljava/lang/String;

    .line 151
    .line 152
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayBufferConfig:Ljava/lang/String;

    .line 153
    .line 154
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHardwareDecodeEnablePlayer2:I

    .line 155
    .line 156
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDisableResetSystemVolume:I

    .line 157
    .line 158
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 159
    .line 160
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecType:I

    .line 161
    .line 162
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecID:I

    .line 163
    .line 164
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecID:I

    .line 165
    .line 166
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoLoadControlParameters:Ljava/lang/String;

    .line 167
    .line 168
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoRenderReadyMs:I

    .line 169
    .line 170
    iput v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoConsecutiveFailNum:I

    .line 171
    .line 172
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoCodecReusable:I

    .line 173
    .line 174
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoCodecAsyncInitEnable:I

    .line 175
    .line 176
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoAllowMediaCodecHelper:I

    .line 177
    .line 178
    iput v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mErrorCount:I

    .line 179
    .line 180
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mError:Lcom/ss/ttvideoengine/utils/Error;

    .line 181
    .line 182
    return-void
.end method

.method public resetEngine()V
    .locals 0

    .line 1
    return-void
.end method

.method protected resetMediaPlayerOptions()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 2
    .line 3
    const/16 v1, 0x3b

    .line 4
    .line 5
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHardwareDecodeEnablePlayer2:I

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setFloatOption(IF)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigCenterVersion:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerConfigExecutor:Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mEngineConfig:Lcom/ss/ttvideoengine/configcenter/IEngineConfig;

    .line 8
    .line 9
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/configcenter/IEngineConfig;->setFloatOption(IF)Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->execute(Lcom/ss/ttvideoengine/configcenter/ConfigItem;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setIntOption(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigCenterVersion:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->setIntOption2(II)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_d

    .line 11
    .line 12
    const/4 v0, 0x7

    .line 13
    if-eq p1, v0, :cond_c

    .line 14
    .line 15
    const/16 v0, 0x55

    .line 16
    .line 17
    if-eq p1, v0, :cond_b

    .line 18
    .line 19
    const/16 v0, 0x64

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq p1, v0, :cond_9

    .line 24
    .line 25
    const/16 v0, 0x75

    .line 26
    .line 27
    if-eq p1, v0, :cond_8

    .line 28
    .line 29
    const/16 v0, 0x154

    .line 30
    .line 31
    if-eq p1, v0, :cond_7

    .line 32
    .line 33
    const/16 v0, 0x19f

    .line 34
    .line 35
    if-eq p1, v0, :cond_6

    .line 36
    .line 37
    const/16 v0, 0x1e0

    .line 38
    .line 39
    if-eq p1, v0, :cond_5

    .line 40
    .line 41
    const/16 v0, 0x1392

    .line 42
    .line 43
    if-eq p1, v0, :cond_3

    .line 44
    .line 45
    const/16 v0, 0x1b

    .line 46
    .line 47
    if-eq p1, v0, :cond_2

    .line 48
    .line 49
    const/16 v0, 0x1c

    .line 50
    .line 51
    if-eq p1, v0, :cond_1

    .line 52
    .line 53
    const/4 v0, 0x5

    .line 54
    packed-switch p1, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :pswitch_0
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoAllowMediaCodecHelper:I

    .line 60
    .line 61
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 62
    .line 63
    if-eqz p1, :cond_e

    .line 64
    .line 65
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-ne p1, v0, :cond_e

    .line 70
    .line 71
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 72
    .line 73
    const/16 v0, 0x138d

    .line 74
    .line 75
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :pswitch_1
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoCodecAsyncInitEnable:I

    .line 81
    .line 82
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 83
    .line 84
    if-eqz p1, :cond_e

    .line 85
    .line 86
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-ne p1, v0, :cond_e

    .line 91
    .line 92
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 93
    .line 94
    const/16 v0, 0x138c

    .line 95
    .line 96
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :pswitch_2
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoCodecReusable:I

    .line 102
    .line 103
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 104
    .line 105
    if-eqz p1, :cond_e

    .line 106
    .line 107
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-ne p1, v0, :cond_e

    .line 112
    .line 113
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 114
    .line 115
    const/16 v0, 0x138b

    .line 116
    .line 117
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :pswitch_3
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoConsecutiveFailNum:I

    .line 123
    .line 124
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 125
    .line 126
    if-eqz p1, :cond_e

    .line 127
    .line 128
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-ne p1, v0, :cond_e

    .line 133
    .line 134
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 135
    .line 136
    const/16 v0, 0x138a

    .line 137
    .line 138
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :pswitch_4
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoRenderReadyMs:I

    .line 144
    .line 145
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 146
    .line 147
    if-eqz p1, :cond_e

    .line 148
    .line 149
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-ne p1, v0, :cond_e

    .line 154
    .line 155
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 156
    .line 157
    const/16 v0, 0x1389

    .line 158
    .line 159
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_1
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMaxAccumulatedCountSetByUser:I

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_2
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mCleanWhenStop:I

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_3
    if-eqz p2, :cond_4

    .line 173
    .line 174
    move v1, v2

    .line 175
    :cond_4
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoEnableNativeMdl:Z

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_5
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRadioModeEnable:I

    .line 180
    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 182
    .line 183
    .line 184
    move-result-wide v0

    .line 185
    iput-wide v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLastSwitchRadioModeTime:J

    .line 186
    .line 187
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 188
    .line 189
    if-eqz p1, :cond_e

    .line 190
    .line 191
    const/16 v0, 0x105

    .line 192
    .line 193
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_6
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSetTrackVolume:I

    .line 198
    .line 199
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 200
    .line 201
    if-eqz p1, :cond_e

    .line 202
    .line 203
    const/16 v0, 0x5e

    .line 204
    .line 205
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_7
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDisableResetSystemVolume:I

    .line 210
    .line 211
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 212
    .line 213
    if-eqz p1, :cond_e

    .line 214
    .line 215
    const/16 v0, 0x62

    .line 216
    .line 217
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 218
    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_8
    const/4 p1, 0x4

    .line 222
    invoke-static {p1, p2}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_9
    if-eqz p2, :cond_a

    .line 227
    .line 228
    move v1, v2

    .line 229
    :cond_a
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsStartPlayAutomatically:Z

    .line 230
    .line 231
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 232
    .line 233
    if-eqz p1, :cond_e

    .line 234
    .line 235
    xor-int/lit8 p2, v1, 0x1

    .line 236
    .line 237
    const/16 v0, 0xc4

    .line 238
    .line 239
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 240
    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_b
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mFallbackExoFirst:I

    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_c
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHardwareDecodeEnablePlayer2:I

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string v1, "hardware enable = "

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHardwareDecodeEnablePlayer2:I

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 275
    .line 276
    if-eqz p1, :cond_e

    .line 277
    .line 278
    const/16 v0, 0x3b

    .line 279
    .line 280
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 281
    .line 282
    .line 283
    goto :goto_0

    .line 284
    :cond_d
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mForbidOSPlayer:I

    .line 285
    .line 286
    const/16 p1, 0xb

    .line 287
    .line 288
    invoke-static {p1, p2}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 289
    .line 290
    .line 291
    :cond_e
    :goto_0
    return-void

    .line 292
    nop

    .line 293
    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIsMute(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    const-string/jumbo v2, "setIsMute:%s"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsMute:Z

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->setPlayerMute(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setLongOption(IJ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigCenterVersion:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerConfigExecutor:Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mEngineConfig:Lcom/ss/ttvideoengine/configcenter/IEngineConfig;

    .line 8
    .line 9
    invoke-interface {v1, p1, p2, p3}, Lcom/ss/ttvideoengine/configcenter/IEngineConfig;->setLongOption(IJ)Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->execute(Lcom/ss/ttvideoengine/configcenter/ConfigItem;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "setLooping:"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLooping:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, p1}, Lcom/ss/ttm/player/MediaPlayer;->setLooping(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method protected setMediaPlayerOptions()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 2
    .line 3
    const/16 v1, 0x19f

    .line 4
    .line 5
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSetTrackVolume:I

    .line 6
    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x5e

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 17
    .line 18
    const/16 v1, 0x154

    .line 19
    .line 20
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDisableResetSystemVolume:I

    .line 21
    .line 22
    invoke-virtual {p0, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v2, 0x62

    .line 27
    .line 28
    invoke-interface {v0, v2, v1}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 32
    .line 33
    const/16 v1, 0x105

    .line 34
    .line 35
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRadioModeEnable:I

    .line 36
    .line 37
    invoke-interface {v0, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 38
    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mIsMute:Z

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->setPlayerMute(Z)V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLeftVolume:F

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    cmpl-float v2, v0, v1

    .line 49
    .line 50
    if-ltz v2, :cond_0

    .line 51
    .line 52
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRightVolume:F

    .line 53
    .line 54
    cmpl-float v1, v2, v1

    .line 55
    .line 56
    if-ltz v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0, v0, v2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->setPlayerVolume(FF)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mHardwareDecodeEnablePlayer2:I

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    if-ne v0, v1, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 67
    .line 68
    const/16 v1, 0xb6

    .line 69
    .line 70
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mCodecId:I

    .line 71
    .line 72
    invoke-interface {v0, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 76
    .line 77
    const/16 v1, 0xb5

    .line 78
    .line 79
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAsyncInitEnable:I

    .line 80
    .line 81
    invoke-interface {v0, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerType:I

    .line 85
    .line 86
    const/4 v1, 0x5

    .line 87
    if-ne v0, v1, :cond_7

    .line 88
    .line 89
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoLoadControlParameters:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 94
    .line 95
    const/16 v2, 0x1388

    .line 96
    .line 97
    invoke-interface {v1, v2, v0}, Lcom/ss/ttm/player/MediaPlayer;->setStringOption(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoRenderReadyMs:I

    .line 101
    .line 102
    if-ltz v0, :cond_3

    .line 103
    .line 104
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 105
    .line 106
    const/16 v2, 0x1389

    .line 107
    .line 108
    invoke-interface {v1, v2, v0}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 109
    .line 110
    .line 111
    :cond_3
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoConsecutiveFailNum:I

    .line 112
    .line 113
    if-ltz v0, :cond_4

    .line 114
    .line 115
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 116
    .line 117
    const/16 v2, 0x138a

    .line 118
    .line 119
    invoke-interface {v1, v2, v0}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 120
    .line 121
    .line 122
    :cond_4
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoCodecReusable:I

    .line 123
    .line 124
    if-ltz v0, :cond_5

    .line 125
    .line 126
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 127
    .line 128
    const/16 v2, 0x138b

    .line 129
    .line 130
    invoke-interface {v1, v2, v0}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 131
    .line 132
    .line 133
    :cond_5
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoCodecAsyncInitEnable:I

    .line 134
    .line 135
    if-ltz v0, :cond_6

    .line 136
    .line 137
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 138
    .line 139
    const/16 v2, 0x138c

    .line 140
    .line 141
    invoke-interface {v1, v2, v0}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 142
    .line 143
    .line 144
    :cond_6
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoAllowMediaCodecHelper:I

    .line 145
    .line 146
    if-ltz v0, :cond_7

    .line 147
    .line 148
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 149
    .line 150
    const/16 v2, 0x138d

    .line 151
    .line 152
    invoke-interface {v1, v2, v0}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 153
    .line 154
    .line 155
    :cond_7
    return-void
.end method

.method public setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlaybackParams:Lcom/ss/ttm/player/PlaybackParams;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->isOSPlayer()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPrepared:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Lcom/ss/ttm/player/MediaPlayer;->setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    :cond_1
    return-void
.end method

.method protected setPlayerMute(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ss/ttm/player/MediaPlayer;->isOSPlayer()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    :goto_0
    :try_start_0
    invoke-interface {v0, p1, p1}, Lcom/ss/ttm/player/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->d(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-interface {v0, p1}, Lcom/ss/ttm/player/MediaPlayer;->setIsMute(Z)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_1
    return-void
.end method

.method protected setPlayerVolume(FF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v1, 0x19f

    .line 7
    .line 8
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSetTrackVolume:I

    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->isInHousePlayer()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    cmpl-float v1, p1, v1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/high16 p2, 0x3f800000    # 1.0f

    .line 28
    .line 29
    move v1, p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v1, p2

    .line 32
    move p2, p1

    .line 33
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-string v3, "audio"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/media/AudioManager;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    float-to-int p1, p1

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x3

    .line 48
    invoke-virtual {v2, v4, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 49
    .line 50
    .line 51
    :cond_2
    move p1, p2

    .line 52
    move p2, v1

    .line 53
    :cond_3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayer;->setVolume(FF)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public setSourceType(I)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :pswitch_0
    const-string p1, "mds"

    .line 6
    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSourceTypeStr:Ljava/lang/String;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_1
    const-string p1, "fd"

    .line 11
    .line 12
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSourceTypeStr:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    const-string/jumbo p1, "vid"

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSourceTypeStr:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_3
    const-string p1, "feed"

    .line 22
    .line 23
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSourceTypeStr:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_4
    const-string p1, "preload"

    .line 27
    .line 28
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSourceTypeStr:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_5
    const-string p1, "playitem"

    .line 32
    .line 33
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSourceTypeStr:Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_6
    const-string p1, "dir_url"

    .line 37
    .line 38
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSourceTypeStr:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_7
    const-string p1, "local_url"

    .line 42
    .line 43
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSourceTypeStr:Ljava/lang/String;

    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
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

.method public setStringOption(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/16 v0, 0x1388

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigCenterVersion:I

    .line 6
    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerConfigExecutor:Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mEngineConfig:Lcom/ss/ttvideoengine/configcenter/IEngineConfig;

    .line 12
    .line 13
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/configcenter/IEngineConfig;->setStringOption(ILjava/lang/String;)Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/configcenter/PlayerConfigExecutor;->execute(Lcom/ss/ttvideoengine/configcenter/ConfigItem;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v1, 0x5

    .line 30
    if-ne p1, v1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 33
    .line 34
    invoke-interface {p1, v0, p2}, Lcom/ss/ttm/player/MediaPlayer;->setStringOption(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iput-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mExoLoadControlParameters:Ljava/lang/String;

    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method public setSubTag(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "setSubTag: "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSubTag:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "setTag: "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mTag:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public setVolume(FF)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "setVolume left:"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, " right:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLeftVolume:F

    .line 35
    .line 36
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRightVolume:F

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->setPlayerVolume(FF)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method protected shouldPrepare()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlaybackState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-ne v0, v2, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPrepared:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/ss/ttm/player/MediaPlayer;->getPlayerType()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPrepared:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method protected updateConfigParams(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerType:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-ne v2, v4, :cond_1

    .line 14
    .line 15
    move v2, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v2, v3

    .line 18
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerType:I

    .line 30
    .line 31
    const/4 v5, 0x5

    .line 32
    if-eq v2, v0, :cond_2

    .line 33
    .line 34
    if-eq v2, v5, :cond_2

    .line 35
    .line 36
    move v0, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v0, v3

    .line 39
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigParams:Ljava/util/HashMap;

    .line 47
    .line 48
    const/16 v1, 0x1a

    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerType:I

    .line 55
    .line 56
    if-ne v2, v5, :cond_3

    .line 57
    .line 58
    move v3, v4

    .line 59
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const/16 v0, 0xb

    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mForbidOSPlayer:I

    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const/16 v0, 0x64

    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mConfigParamsOption:I

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const/16 v0, 0x2b

    .line 97
    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mDisableThreadPoolUsing:I

    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mFallbackExoFirst:I

    .line 112
    .line 113
    const/16 v1, 0x55

    .line 114
    .line 115
    invoke-virtual {p0, v1, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-ltz v0, :cond_4

    .line 120
    .line 121
    const/16 v0, 0x1b

    .line 122
    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mFallbackExoFirst:I

    .line 128
    .line 129
    invoke-virtual {p0, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_4
    return-void
.end method

.method protected updateLoadState(II)V
    .locals 0

    .line 1
    return-void
.end method

.method protected updatePlaybackState(I)V
    .locals 0

    .line 1
    return-void
.end method

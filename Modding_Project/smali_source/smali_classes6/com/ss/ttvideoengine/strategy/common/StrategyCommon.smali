.class public Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;
.super Ljava/lang/Object;
.source "StrategyCommon.java"


# static fields
.field private static final CLEAR_MDL_CACHE:Ljava/lang/String; = "clear_mdl_cache"

.field private static final CPP_h265CODEC_OPT:Ljava/lang/String; = "cpp_h265codec_opt"

.field private static final DEMUX_NONBLOCK_READ:Ljava/lang/String; = "demux_nonblock_read"

.field private static final ENGINE_LOOPER:Ljava/lang/String; = "engine_looper"

.field private static final EXO_PARAMS:Ljava/lang/String; = "exo_params"

.field private static final IO_MANAGER_ENABLE:Ljava/lang/String; = "io_manager_enable"

.field private static final LOAD_MONITOR_TIME_INTERNAL:Ljava/lang/String; = "load_monitor_time_internal"

.field private static final MDL_PRECONNECT:Ljava/lang/String; = "mdl_preconnect"

.field private static final NET_MAX_SAMPLE_COUNT:Ljava/lang/String; = "net_max_sample_count"

.field private static final NET_SAMPLE_INTERVAL:Ljava/lang/String; = "net_sample_interval"

.field private static final NET_SPEED_UPDATE_INTERVAL:Ljava/lang/String; = "net_speed_update_interval"

.field private static final ORIGINAL_QUALITY:Ljava/lang/String; = "original"

.field private static final OUTLET_DROP_LIMIT:Ljava/lang/String; = "outlet_drop_limit"

.field private static final PRECISE_CACHE_ENABLE:Ljava/lang/String; = "precise_cache_enable"

.field private static final SKIP_FIND_STREAM_INFO:Ljava/lang/String; = "skip_find_stream_info"

.field private static final SOCKET_TRAIN_CENTER:Ljava/lang/String; = "socket_train_center"

.field private static final TAG:Ljava/lang/String; = "Strategy Common"


# instance fields
.field private mClearMdlCache:I

.field private mCpph265codecOpt:I

.field private mDemuxNonblockRead:I

.field private mEnableLogFile:I

.field private mEngineLooper:I

.field private mExoParams:Ljava/lang/String;

.field private mIoManagerEnable:I

.field private mLoadMonitorTimeInternal:I

.field private mMdlPreconnect:I

.field private mNetMaxSampleCount:I

.field private mNetSampleInterval:I

.field private mNetSpeedUpdateInterval:I

.field private mOutletDropLimit:I

.field private mPreciseCacheEnable:I

.field private mSkipFindStreamInfo:I

.field private mSocketTrainCenter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, -0x64

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mSkipFindStreamInfo:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mEngineLooper:I

    .line 10
    .line 11
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mClearMdlCache:I

    .line 12
    .line 13
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mOutletDropLimit:I

    .line 14
    .line 15
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mCpph265codecOpt:I

    .line 16
    .line 17
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mDemuxNonblockRead:I

    .line 18
    .line 19
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mMdlPreconnect:I

    .line 20
    .line 21
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mLoadMonitorTimeInternal:I

    .line 22
    .line 23
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mIoManagerEnable:I

    .line 24
    .line 25
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mPreciseCacheEnable:I

    .line 26
    .line 27
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mNetSampleInterval:I

    .line 28
    .line 29
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mNetMaxSampleCount:I

    .line 30
    .line 31
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mNetSpeedUpdateInterval:I

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->updateConfig()V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public enableEngineLooper()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mEngineLooper:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public engineCreate(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mEnableLogFile:I

    .line 5
    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x1d8

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-interface {p1, v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 12
    .line 13
    .line 14
    :cond_1
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mClearMdlCache:I

    .line 15
    .line 16
    const/16 v1, -0x64

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/16 v2, 0x25b

    .line 21
    .line 22
    invoke-interface {p1, v2, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mOutletDropLimit:I

    .line 26
    .line 27
    if-eq v0, v1, :cond_3

    .line 28
    .line 29
    const/16 v2, 0x2a1

    .line 30
    .line 31
    invoke-interface {p1, v2, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 32
    .line 33
    .line 34
    :cond_3
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mCpph265codecOpt:I

    .line 35
    .line 36
    if-eq v0, v1, :cond_4

    .line 37
    .line 38
    const/16 v2, 0x245

    .line 39
    .line 40
    invoke-interface {p1, v2, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 41
    .line 42
    .line 43
    :cond_4
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mDemuxNonblockRead:I

    .line 44
    .line 45
    if-eq v0, v1, :cond_5

    .line 46
    .line 47
    const/16 v2, 0x231

    .line 48
    .line 49
    invoke-interface {p1, v2, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 50
    .line 51
    .line 52
    :cond_5
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mPreciseCacheEnable:I

    .line 53
    .line 54
    if-eq v0, v1, :cond_6

    .line 55
    .line 56
    const/16 v2, 0x2bf

    .line 57
    .line 58
    invoke-interface {p1, v2, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 59
    .line 60
    .line 61
    :cond_6
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mNetSampleInterval:I

    .line 62
    .line 63
    if-eq v0, v1, :cond_7

    .line 64
    .line 65
    const/16 v2, 0x25c

    .line 66
    .line 67
    invoke-interface {p1, v2, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 68
    .line 69
    .line 70
    :cond_7
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mNetMaxSampleCount:I

    .line 71
    .line 72
    if-eq v0, v1, :cond_8

    .line 73
    .line 74
    const/16 v2, 0x25d

    .line 75
    .line 76
    invoke-interface {p1, v2, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 77
    .line 78
    .line 79
    :cond_8
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mNetSpeedUpdateInterval:I

    .line 80
    .line 81
    if-eq v0, v1, :cond_9

    .line 82
    .line 83
    const/16 v1, 0x359

    .line 84
    .line 85
    invoke-interface {p1, v1, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 86
    .line 87
    .line 88
    :cond_9
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mExoParams:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_a

    .line 95
    .line 96
    const/16 v0, 0x1388

    .line 97
    .line 98
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mExoParams:Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {p1, v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setStringOption(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_a
    const-string v0, "mediacodec_async_mode_enable"

    .line 104
    .line 105
    const/4 v1, -0x1

    .line 106
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eq v0, v1, :cond_b

    .line 111
    .line 112
    const/16 v2, 0x3bb

    .line 113
    .line 114
    invoke-interface {p1, v2, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 115
    .line 116
    .line 117
    :cond_b
    const-string v0, "mediacodec_fix_memory_copy_crash_enable"

    .line 118
    .line 119
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eq v0, v1, :cond_c

    .line 124
    .line 125
    const v1, 0xa467

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, v1, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 129
    .line 130
    .line 131
    :cond_c
    return-void
.end method

.method public mdlStart(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set common option mdl prconnect:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mMdlPreconnect:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", loadMonitorTimeInternal:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mLoadMonitorTimeInternal:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", mSocketTrainCenter:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mSocketTrainCenter:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", ioManagerEnable:"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mIoManagerEnable:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "Strategy Common"

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    iput v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableExternDNS:I

    .line 57
    .line 58
    iput v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSocketReuse:I

    .line 59
    .line 60
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mMdlPreconnect:I

    .line 61
    .line 62
    const/16 v2, -0x64

    .line 63
    .line 64
    if-eq v1, v2, :cond_0

    .line 65
    .line 66
    iput v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePreconnect:I

    .line 67
    .line 68
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mSocketTrainCenter:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_1

    .line 75
    .line 76
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mSocketTrainCenter:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketTraingCenterConfigStr:Ljava/lang/String;

    .line 79
    .line 80
    :cond_1
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mLoadMonitorTimeInternal:I

    .line 81
    .line 82
    if-eq v1, v2, :cond_2

    .line 83
    .line 84
    int-to-long v3, v1

    .line 85
    iput-wide v3, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMonitorTimeInternal:J

    .line 86
    .line 87
    :cond_2
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mIoManagerEnable:I

    .line 88
    .line 89
    if-eq v1, v2, :cond_3

    .line 90
    .line 91
    const/16 v2, 0x47e

    .line 92
    .line 93
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 94
    .line 95
    .line 96
    :cond_3
    const-string v1, "mdl_enable_use_original_url"

    .line 97
    .line 98
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iput v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableUseOriginalUrl:I

    .line 103
    .line 104
    return-void
.end method

.method public setCodecType(Lcom/ss/ttvideoengine/TTVideoEngineInterface;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "set codec:"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", engine:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "Strategy Common"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "h265"

    .line 34
    .line 35
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x7

    .line 40
    const/4 v2, 0x1

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->geth265HardwareEnable()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-interface {p1, v1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v2, v2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setAsyncInit(ZI)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v0, "h264"

    .line 55
    .line 56
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getH264HardwareEnable()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-interface {p1, v1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 67
    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-interface {p1, v2, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setAsyncInit(ZI)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoInfo(Lcom/ss/ttvideoengine/TTVideoEngineInterface;Lcom/ss/ttvideoengine/model/VideoInfo;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 v0, 0x12

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "original"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x6

    .line 22
    invoke-virtual {p2, v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v0, "mp4"

    .line 27
    .line 28
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    const-string v0, "dash"

    .line 35
    .line 36
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    :cond_2
    const/16 p2, 0xcc

    .line 43
    .line 44
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mSkipFindStreamInfo:I

    .line 45
    .line 46
    invoke-interface {p1, p2, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_0
    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    return-void
.end method

.method public updateConfig()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "alog_config"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "enable_log_file"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mEnableLogFile:I

    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategySettings;->getInstance()Lcom/ss/ttvideoengine/strategy/StrategySettings;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/StrategySettings;->getCommon()Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v2, "updateConfig "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "Strategy Common"

    .line 49
    .line 50
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    const-string/jumbo v1, "skip_find_stream_info"

    .line 57
    .line 58
    .line 59
    const/16 v2, -0x64

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mSkipFindStreamInfo:I

    .line 66
    .line 67
    const-string v1, "engine_looper"

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mEngineLooper:I

    .line 75
    .line 76
    const-string v1, "mdl_preconnect"

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mMdlPreconnect:I

    .line 83
    .line 84
    const-string v1, "clear_mdl_cache"

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mClearMdlCache:I

    .line 91
    .line 92
    const-string v1, "outlet_drop_limit"

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mOutletDropLimit:I

    .line 99
    .line 100
    const-string v1, "cpp_h265codec_opt"

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mCpph265codecOpt:I

    .line 107
    .line 108
    const-string v1, "demux_nonblock_read"

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mDemuxNonblockRead:I

    .line 115
    .line 116
    const-string/jumbo v1, "socket_train_center"

    .line 117
    .line 118
    .line 119
    const-string v4, ""

    .line 120
    .line 121
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iput-object v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mSocketTrainCenter:Ljava/lang/String;

    .line 126
    .line 127
    const-string v1, "load_monitor_time_internal"

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mLoadMonitorTimeInternal:I

    .line 134
    .line 135
    const-string v1, "io_manager_enable"

    .line 136
    .line 137
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mIoManagerEnable:I

    .line 142
    .line 143
    const-string v1, "precise_cache_enable"

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mPreciseCacheEnable:I

    .line 150
    .line 151
    const-string v1, "net_sample_interval"

    .line 152
    .line 153
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mNetSampleInterval:I

    .line 158
    .line 159
    const-string v1, "net_max_sample_count"

    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mNetMaxSampleCount:I

    .line 166
    .line 167
    const-string v1, "net_speed_update_interval"

    .line 168
    .line 169
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mNetSpeedUpdateInterval:I

    .line 174
    .line 175
    const-string v1, "exo_params"

    .line 176
    .line 177
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mExoParams:Ljava/lang/String;

    .line 182
    .line 183
    return-void
.end method

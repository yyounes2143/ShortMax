.class public Lcom/ss/ttvideoengine/log/VideoEventBase;
.super Ljava/lang/Object;
.source "VideoEventBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoEventBase"

.field public static appSessionId:Ljava/lang/String; = null

.field public static volatile gNetworkType:Ljava/lang/String; = "unknown"

.field public static volatile gSigStrength:Ljava/lang/String; = "unknown"

.field private static mTTNetWorkListener:Lcom/ss/ttvideoengine/TTNetWorkListener;


# instance fields
.field public a_codec_type:Ljava/lang/String;

.field public abrGeneralInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public abrInfo:Ljava/util/Map;

.field public abr_version:Ljava/lang/String;

.field public audioCodecNameId:I

.field public codec_type:Ljava/lang/String;

.field public dynamic_type:Ljava/lang/String;

.field public ffmpeg_version:Ljava/lang/String;

.field public formatType:I

.field public hasAudioTrackInfo:Z

.field public isUploadLogEnabled:Z

.field public is_enable_abr:I

.field public is_multi_dimensions:I

.field public is_multi_dimensionsInput:I

.field public libvcn_version:Ljava/lang/String;

.field public mAudioHwUser:I

.field public mContext:Landroid/content/Context;

.field public volatile mCurDashAudioInfoId:I

.field public mCurHost:Ljava/lang/String;

.field public mCurIP:Ljava/lang/String;

.field public mCurQuality:Ljava/lang/String;

.field public mCurResolution:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mCurURL:Ljava/lang/String;

.field public mCurrentConfigBitrate:I

.field public mCurrentQualityDesc:Ljava/lang/String;

.field public mCurrentResolution:Ljava/lang/String;

.field public mDNSType:Ljava/lang/String;

.field public mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

.field public mDeviceId:Ljava/lang/String;

.field public mDrmTokenUrl:Ljava/lang/String;

.field public mDrmType:I

.field public mEnableMDL:I

.field public mEnablePowerReport:Z

.field public mEnableTmpLog:Z

.field public mGearinfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHasGetPreloadTraceId:Z

.field public mInitialHost:Ljava/lang/String;

.field public mInitialIP:Ljava/lang/String;

.field public mInitialQualityDesc:Ljava/lang/String;

.field public mInitialURL:Ljava/lang/String;

.field public mLastResolution:Ljava/lang/String;

.field public mMdlVersion:Ljava/lang/String;

.field public mMediaID:Ljava/lang/String;

.field private mNetWorkChangeCb:Lcom/ss/ttvideoengine/TTNetworkStateCallback;

.field private mNetWorkChangeCbr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTNetworkStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mNetworkType:Ljava/lang/String;

.field public mOriginVid:Ljava/lang/String;

.field public mP2PCDNType:I

.field public mPlaySpeed:F

.field public mPlayType:I

.field public mReuseSocket:I

.field public mSessionID:Ljava/lang/String;

.field public mSourceTypeStr:Ljava/lang/String;

.field public mSubTag:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field public mTraceID:Ljava/lang/String;

.field public mVid:Ljava/lang/String;

.field public mVideoHW:I

.field public mVideoHWUser:I

.field private mVideoInfo:Ljava/util/Map;

.field public mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

.field public mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

.field public mdlFeatures:Ljava/util/Map;

.field public mdlP2pLoader:I

.field public mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

.field public mdl_conc_count:I

.field public mdl_cur_task_num:I

.field public mdl_preload_info:Ljava/lang/String;

.field public pc:Ljava/lang/String;

.field public predict_version:Ljava/lang/String;

.field public preload_version:Ljava/lang/String;

.field public pv:Ljava/lang/String;

.field public sdk_version:Ljava/lang/String;

.field public speed_predict_type:I

.field public sv:Ljava/lang/String;

.field public texturender_version:Ljava/lang/String;

.field public vd:I

.field public videoCodecNameId:I

.field public vs:J

.field public vtype:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>(Lcom/ss/ttvideoengine/log/EventLoggerSource;ZLandroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetWorkChangeCb:Lcom/ss/ttvideoengine/TTNetworkStateCallback;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetWorkChangeCbr:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->pv:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->pc:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->sv:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mGearinfoList:Ljava/util/ArrayList;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->sdk_version:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->ffmpeg_version:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->libvcn_version:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->texturender_version:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->preload_version:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->abr_version:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->predict_version:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDNSType:Ljava/lang/String;

    .line 34
    .line 35
    const/high16 v2, -0x80000000

    .line 36
    .line 37
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mPlayType:I

    .line 38
    .line 39
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVid:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mMediaID:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 44
    .line 45
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    .line 46
    .line 47
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHWUser:I

    .line 48
    .line 49
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mAudioHwUser:I

    .line 50
    .line 51
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vd:I

    .line 52
    .line 53
    const-wide/32 v3, -0x80000000

    .line 54
    .line 55
    .line 56
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vs:J

    .line 57
    .line 58
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->a_codec_type:Ljava/lang/String;

    .line 61
    .line 62
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->audioCodecNameId:I

    .line 63
    .line 64
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->videoCodecNameId:I

    .line 65
    .line 66
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->formatType:I

    .line 67
    .line 68
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->dynamic_type:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mLastResolution:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 75
    .line 76
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentConfigBitrate:I

    .line 77
    .line 78
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mP2PCDNType:I

    .line 79
    .line 80
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTag:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSubTag:Ljava/lang/String;

    .line 83
    .line 84
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mReuseSocket:I

    .line 85
    .line 86
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDrmType:I

    .line 87
    .line 88
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDrmTokenUrl:Ljava/lang/String;

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mPlaySpeed:F

    .line 92
    .line 93
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTraceID:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetworkType:Ljava/lang/String;

    .line 96
    .line 97
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mMdlVersion:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mInitialQualityDesc:Ljava/lang/String;

    .line 100
    .line 101
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentQualityDesc:Ljava/lang/String;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mOriginVid:Ljava/lang/String;

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    iput-boolean v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableTmpLog:Z

    .line 107
    .line 108
    iput-boolean v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 109
    .line 110
    iput-boolean v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mHasGetPreloadTraceId:Z

    .line 111
    .line 112
    const/4 v4, -0x1

    .line 113
    iput v4, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurDashAudioInfoId:I

    .line 114
    .line 115
    new-instance v5, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 116
    .line 117
    invoke-direct {v5, p0}, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;-><init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 118
    .line 119
    .line 120
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 121
    .line 122
    new-instance v5, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 123
    .line 124
    invoke-direct {v5, p0}, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;-><init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 125
    .line 126
    .line 127
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 128
    .line 129
    iput-boolean v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->hasAudioTrackInfo:Z

    .line 130
    .line 131
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdl_cur_task_num:I

    .line 132
    .line 133
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdl_conc_count:I

    .line 134
    .line 135
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdl_preload_info:Ljava/lang/String;

    .line 136
    .line 137
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->abrInfo:Ljava/util/Map;

    .line 138
    .line 139
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->is_enable_abr:I

    .line 140
    .line 141
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->abrGeneralInfo:Ljava/util/Map;

    .line 142
    .line 143
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableMDL:I

    .line 144
    .line 145
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlFeatures:Ljava/util/Map;

    .line 146
    .line 147
    iput v4, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlP2pLoader:I

    .line 148
    .line 149
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 150
    .line 151
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/SessionIDGenerator;->generateSessionID(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    .line 156
    .line 157
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->isUploadLogEnabled:Z

    .line 158
    .line 159
    iput-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->initParametersIfNeeded()V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method private _changeNetworkType(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->_switchNetworkType(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->_switchNetworkType(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "receive network type changed, from:%s to:%s"

    .line 10
    .line 11
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "VideoEventBase"

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->gNetworkType:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method private _changeSignalStrength(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->_switchNetworkStrength(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->_switchNetworkStrength(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "receive signal strength changed, from:%s to:%s"

    .line 10
    .line 11
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "VideoEventBase"

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->gSigStrength:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method private static _switchNetworkStrength(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "unknown"

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string p0, "excellent"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    const-string p0, "good"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    const-string p0, "medium"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_3
    const-string/jumbo p0, "weak"

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method private static _switchNetworkType(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const-string/jumbo p0, "unknown"

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "5G"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string p0, "3G"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    const-string p0, "2G"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_3
    const-string p0, "4G"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_4
    const-string p0, "WIFI"

    .line 32
    .line 33
    return-object p0
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/log/VideoEventBase;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->_changeNetworkType(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/log/VideoEventBase;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->_changeSignalStrength(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getNetType()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->gNetworkType:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "unknown"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTTNetWorkListener:Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getCurrentAccessType()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->_switchNetworkType(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->gNetworkType:Ljava/lang/String;

    .line 25
    .line 26
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->gNetworkType:Ljava/lang/String;

    .line 27
    .line 28
    return-object v0
.end method

.method public static getSignalStrength()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->gNetworkType:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "unknown"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->gSigStrength:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTTNetWorkListener:Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getCurrentAccessStrength()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->_switchNetworkStrength(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->gSigStrength:Ljava/lang/String;

    .line 34
    .line 35
    :cond_1
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->gSigStrength:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method private initParametersIfNeeded()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mPlayType:I

    .line 3
    .line 4
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHWUser:I

    .line 7
    .line 8
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mAudioHwUser:I

    .line 9
    .line 10
    const-string v1, "default"

    .line 11
    .line 12
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTag:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSubTag:Ljava/lang/String;

    .line 15
    .line 16
    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    .line 18
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mPlaySpeed:F

    .line 19
    .line 20
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 21
    .line 22
    iput v0, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cache_type:I

    .line 23
    .line 24
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 25
    .line 26
    iput v0, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cache_type:I

    .line 27
    .line 28
    return-void
.end method

.method private updateMdlFeatures(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget v4, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlP2pLoader:I

    .line 34
    .line 35
    const/4 v5, -0x1

    .line 36
    if-ne v4, v5, :cond_0

    .line 37
    .line 38
    const-string v4, "mdl_p2p_loader"

    .line 39
    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlP2pLoader:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlFeatures:Ljava/util/Map;

    .line 60
    .line 61
    :cond_2
    return-void
.end method


# virtual methods
.method public beginToPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVid:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDeviceId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/16 p2, 0x8b

    .line 10
    .line 11
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDeviceId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/SessionIDGenerator;->generateTrackID(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mHasGetPreloadTraceId:Z

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mHasGetPreloadTraceId:Z

    .line 39
    .line 40
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTraceID:Ljava/lang/String;

    .line 43
    .line 44
    sget-object p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->appSessionId:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDeviceId:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/SessionIDGenerator;->generateSessionID(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sput-object p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->appSessionId:Ljava/lang/String;

    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public configResolution(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mLastResolution:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoInfo:Ljava/util/Map;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const-string p2, "bitrate"

    .line 10
    .line 11
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/util/Map;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    check-cast p1, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentConfigBitrate:I

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public getBatteryCurrent()F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->getGalvanicNow(Landroid/content/Context;)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getCPURate()D
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->getCPURate()D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public getCPUSpeed()D
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->getCPUSpeed()D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public getChargingState()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->getChargingState(Landroid/content/Context;)Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getCodecType()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoInfo:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v2, "codec"

    .line 8
    .line 9
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/Map;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_2
    return-object v1
.end method

.method public getCurHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurHost:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurIP:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurQuality()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurQuality:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurResolution()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurResolution:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentCPUInfo()Lcom/ss/ttvideoengine/log/DeviceMonitorUtils$CPUInfo;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->getCurrentCPUInfo()Lcom/ss/ttvideoengine/log/DeviceMonitorUtils$CPUInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getMDLInfo()Lorg/json/JSONObject;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getMediaLoaderInfo()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const-string v2, "VideoEventBase"

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v4, "update mdl info: "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    .line 44
    .line 45
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    .line 48
    move-object v1, v2

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v2, "VideoEventBase"

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    throw v0

    .line 64
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getMdlTrackInfo(Lorg/json/JSONObject;)Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;-><init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->update(Lorg/json/JSONObject;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public getVideoInfo()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public movieFinish()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->updateVideoInfo(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public registerNetwork()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const-string v0, "VideoEventBase"

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTTNetWorkListener:Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTTNetWorkListener:Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/TTNetWorkListener;->init(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEngineOptimizeFlag()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    const-wide/16 v3, 0x40

    .line 35
    .line 36
    invoke-static {v1, v2, v3, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->isFlagOn(JJ)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    new-instance v1, Lcom/ss/ttvideoengine/log/VideoEventBase$1;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/ss/ttvideoengine/log/VideoEventBase$1;-><init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetWorkChangeCb:Lcom/ss/ttvideoengine/TTNetworkStateCallback;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetWorkChangeCb:Lcom/ss/ttvideoengine/TTNetworkStateCallback;

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetWorkChangeCbr:Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    sget-object v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTTNetWorkListener:Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->startListen(Ljava/lang/ref/WeakReference;)V

    .line 61
    .line 62
    .line 63
    sget-object v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTTNetWorkListener:Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getCurrentAccessType()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->_switchNetworkType(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sput-object v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->gNetworkType:Ljava/lang/String;

    .line 74
    .line 75
    sget-object v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTTNetWorkListener:Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getCurrentAccessStrength()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->_switchNetworkStrength(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    sput-object v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->gSigStrength:Ljava/lang/String;

    .line 86
    .line 87
    :cond_1
    monitor-exit v0

    .line 88
    goto :goto_2

    .line 89
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw v1

    .line 91
    :cond_2
    :goto_2
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDeviceId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/SessionIDGenerator;->generateSessionID(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public setCurHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurHost:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurIP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurIP:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurQuality(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurQuality:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurResolution(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurResolution:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrentQualityDesc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mInitialQualityDesc:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mInitialQualityDesc:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentQualityDesc:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public setP2PCDNType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mP2PCDNType:I

    .line 2
    .line 3
    return-void
.end method

.method public setSourceType(ILjava/lang/String;)V
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
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_1
    const-string p1, "fd"

    .line 11
    .line 12
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    const-string/jumbo p1, "vid"

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_3
    const-string p1, "feed"

    .line 22
    .line 23
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_4
    const-string p1, "preload"

    .line 27
    .line 28
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_5
    const-string p1, "playitem"

    .line 32
    .line 33
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_6
    const-string p1, "dir_url"

    .line 37
    .line 38
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_7
    const-string p1, "local_url"

    .line 42
    .line 43
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 44
    .line 45
    :goto_0
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVid:Ljava/lang/String;

    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
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

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoInfo(Lcom/ss/ttvideoengine/model/IVideoModel;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 9
    .line 10
    new-instance v2, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v5, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v6, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v7, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v8, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v9, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v10, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface/range {p1 .. p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->hasData()Z

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    if-eqz v11, :cond_5

    .line 60
    .line 61
    invoke-interface/range {p1 .. p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    if-eqz v11, :cond_5

    .line 66
    .line 67
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    if-lez v13, :cond_5

    .line 72
    .line 73
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    const/4 v13, 0x0

    .line 78
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    if-eqz v14, :cond_5

    .line 83
    .line 84
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    check-cast v14, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 89
    .line 90
    invoke-virtual {v14}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 91
    .line 92
    .line 93
    move-result v15

    .line 94
    const/16 v12, 0xc

    .line 95
    .line 96
    move-object/from16 v17, v11

    .line 97
    .line 98
    invoke-virtual {v14, v12}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueLong(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v11

    .line 102
    const/16 v1, 0x8

    .line 103
    .line 104
    invoke-virtual {v14, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    move-object/from16 v18, v3

    .line 109
    .line 110
    const/4 v3, 0x3

    .line 111
    invoke-virtual {v14, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {v14}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3, v15}, Lcom/ss/ttvideoengine/Resolution;->toString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    move-object/from16 v19, v10

    .line 124
    .line 125
    const/4 v10, 0x6

    .line 126
    invoke-virtual {v14, v10}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    move-object/from16 v20, v9

    .line 131
    .line 132
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-interface {v5, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    const/4 v9, 0x3

    .line 150
    invoke-virtual {v14, v9}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 151
    .line 152
    .line 153
    move-result v16

    .line 154
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    move/from16 v22, v0

    .line 159
    .line 160
    const/16 v0, 0xf

    .line 161
    .line 162
    invoke-virtual {v14, v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    const/4 v0, 0x3

    .line 170
    invoke-virtual {v14, v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    invoke-interface {v8, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    const/4 v0, 0x1

    .line 189
    if-ne v15, v0, :cond_1

    .line 190
    .line 191
    const/4 v0, 0x3

    .line 192
    invoke-virtual {v14, v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    move-object/from16 v0, v20

    .line 201
    .line 202
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    :goto_1
    move-object/from16 v9, p0

    .line 206
    .line 207
    move-object/from16 v21, v7

    .line 208
    .line 209
    move/from16 v0, v22

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_1
    move-object/from16 v0, v20

    .line 213
    .line 214
    const/4 v9, 0x3

    .line 215
    invoke-virtual {v14, v9}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 216
    .line 217
    .line 218
    move-result v20

    .line 219
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    move-object/from16 v20, v0

    .line 224
    .line 225
    move-object/from16 v0, v19

    .line 226
    .line 227
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :goto_2
    iget-boolean v7, v9, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableTmpLog:Z

    .line 232
    .line 233
    if-eqz v7, :cond_2

    .line 234
    .line 235
    new-instance v7, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string/jumbo v9, "setVideoInfo i:"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v9, ", resolution:"

    .line 250
    .line 251
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v3, ", size:"

    .line 258
    .line 259
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v3, ",codec_type:"

    .line 266
    .line 267
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v1, ", bitrate:"

    .line 274
    .line 275
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    const-string v1, "VideoEventBase"

    .line 286
    .line 287
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 291
    .line 292
    const/16 v0, 0x2a

    .line 293
    .line 294
    invoke-virtual {v14, v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    sget v1, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 299
    .line 300
    if-ne v15, v1, :cond_3

    .line 301
    .line 302
    const-string v1, "dash"

    .line 303
    .line 304
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-nez v1, :cond_4

    .line 309
    .line 310
    const-string v1, "bash"

    .line 311
    .line 312
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_3

    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_3
    move-object/from16 v3, v18

    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_4
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    move-object/from16 v3, v18

    .line 331
    .line 332
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    :goto_4
    move-object/from16 v0, p0

    .line 336
    .line 337
    move-object/from16 v1, p1

    .line 338
    .line 339
    move-object/from16 v11, v17

    .line 340
    .line 341
    move-object/from16 v10, v19

    .line 342
    .line 343
    move-object/from16 v9, v20

    .line 344
    .line 345
    move-object/from16 v7, v21

    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :cond_5
    move-object/from16 v21, v7

    .line 350
    .line 351
    move-object/from16 v20, v9

    .line 352
    .line 353
    move-object/from16 v19, v10

    .line 354
    .line 355
    new-instance v0, Ljava/util/HashMap;

    .line 356
    .line 357
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-interface/range {p1 .. p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getDynamicType()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    move-object/from16 v7, p1

    .line 365
    .line 366
    const/4 v9, 0x3

    .line 367
    invoke-interface {v7, v9}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefInt(I)I

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    const-string v9, "duration"

    .line 376
    .line 377
    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    const-string/jumbo v7, "size"

    .line 381
    .line 382
    .line 383
    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    const-string v2, "audio_size"

    .line 387
    .line 388
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    const-string v2, "codec"

    .line 392
    .line 393
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    const-string/jumbo v2, "vtype"

    .line 397
    .line 398
    .line 399
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    const-string v2, "dynamic_type"

    .line 403
    .line 404
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    const-string v2, "bitrate"

    .line 408
    .line 409
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    const-string v2, "fileKey"

    .line 413
    .line 414
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    const-string v2, "bitrateMapTable"

    .line 418
    .line 419
    move-object/from16 v3, v21

    .line 420
    .line 421
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    const-string v2, "audio_bitrate"

    .line 425
    .line 426
    move-object/from16 v3, v20

    .line 427
    .line 428
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    const-string/jumbo v2, "video_bitrate"

    .line 432
    .line 433
    .line 434
    move-object/from16 v3, v19

    .line 435
    .line 436
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-object/from16 v2, p0

    .line 440
    .line 441
    iput-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoInfo:Ljava/util/Map;

    .line 442
    .line 443
    iget-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 444
    .line 445
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-nez v0, :cond_6

    .line 450
    .line 451
    iget-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 452
    .line 453
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    if-eqz v0, :cond_6

    .line 458
    .line 459
    check-cast v0, Ljava/lang/Integer;

    .line 460
    .line 461
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    iput v0, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentConfigBitrate:I

    .line 466
    .line 467
    :cond_6
    iput-object v1, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->dynamic_type:Ljava/lang/String;

    .line 468
    .line 469
    return-void
.end method

.method public showedOneFrame()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 13
    .line 14
    const/16 v1, 0x92

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->a_codec_type:Ljava/lang/String;

    .line 21
    .line 22
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->formatType:I

    .line 23
    .line 24
    if-gez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 27
    .line 28
    const/16 v1, 0x31

    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->formatType:I

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoInfo:Ljava/util/Map;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    const-string/jumbo v1, "size"

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/util/Map;

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    const-wide/16 v1, 0x0

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    check-cast v0, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move-wide v3, v1

    .line 71
    :goto_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoInfo:Ljava/util/Map;

    .line 72
    .line 73
    const-string v5, "audio_size"

    .line 74
    .line 75
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/util/Map;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-lez v5, :cond_3

    .line 88
    .line 89
    iget v5, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurDashAudioInfoId:I

    .line 90
    .line 91
    const/4 v6, -0x1

    .line 92
    if-eq v5, v6, :cond_3

    .line 93
    .line 94
    iget v5, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurDashAudioInfoId:I

    .line 95
    .line 96
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    check-cast v0, Ljava/lang/Number;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 109
    .line 110
    .line 111
    move-result-wide v1

    .line 112
    :cond_3
    add-long/2addr v3, v1

    .line 113
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vs:J

    .line 114
    .line 115
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoInfo:Ljava/util/Map;

    .line 116
    .line 117
    const-string/jumbo v1, "vtype"

    .line 118
    .line 119
    .line 120
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/util/Map;

    .line 125
    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 129
    .line 130
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    check-cast v0, Ljava/lang/String;

    .line 137
    .line 138
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 139
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string/jumbo v1, "showedOneFrame vtype:"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", currentResolution:"

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const-string v1, "VideoEventBase"

    .line 171
    .line 172
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_4
    return-void
.end method

.method public unregisterNetwork()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTTNetWorkListener:Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetWorkChangeCbr:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->stopListen(Ljava/lang/ref/WeakReference;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public updateMDLInfo()V
    .locals 11

    .line 1
    const-string v0, "mdl_features"

    .line 2
    .line 3
    const-string v1, "dns_type"

    .line 4
    .line 5
    const-string v2, "mdl_preload_info"

    .line 6
    .line 7
    const-string v3, "conc_count"

    .line 8
    .line 9
    const-string v4, "cur_task_num"

    .line 10
    .line 11
    const-string v5, "audio"

    .line 12
    .line 13
    const-string/jumbo v6, "video"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getMDLInfo()Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    if-eqz v7, :cond_c

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    :try_start_0
    iput-boolean v8, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->hasAudioTrackInfo:Z

    .line 24
    .line 25
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    const/4 v10, 0x1

    .line 30
    if-nez v9, :cond_0

    .line 31
    .line 32
    iput-boolean v10, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->hasAudioTrackInfo:Z

    .line 33
    .line 34
    iget-object v8, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 35
    .line 36
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v8, v5}, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->update(Lorg/json/JSONObject;)V

    .line 41
    .line 42
    .line 43
    move v8, v10

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_0
    :goto_0
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_1

    .line 53
    .line 54
    const-string v5, "VideoEventBase"

    .line 55
    .line 56
    new-instance v8, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v9, "found video: "

    .line 62
    .line 63
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-static {v5, v8}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 85
    .line 86
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v5, v6}, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->update(Lorg/json/JSONObject;)V

    .line 91
    .line 92
    .line 93
    move v8, v10

    .line 94
    :cond_1
    if-nez v8, :cond_2

    .line 95
    .line 96
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 97
    .line 98
    invoke-virtual {v5, v7}, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->update(Lorg/json/JSONObject;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-nez v5, :cond_3

    .line 106
    .line 107
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    iput v4, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdl_cur_task_num:I

    .line 118
    .line 119
    :cond_3
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-nez v4, :cond_4

    .line 124
    .line 125
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdl_conc_count:I

    .line 136
    .line 137
    :cond_4
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_5

    .line 142
    .line 143
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdl_preload_info:Ljava/lang/String;

    .line 152
    .line 153
    :cond_5
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_6

    .line 158
    .line 159
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Ljava/lang/Integer;

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    goto :goto_1

    .line 170
    :cond_6
    const/4 v1, -0x1

    .line 171
    :goto_1
    if-eqz v1, :cond_b

    .line 172
    .line 173
    const/4 v2, 0x2

    .line 174
    if-eq v1, v2, :cond_a

    .line 175
    .line 176
    const/4 v2, 0x3

    .line 177
    if-eq v1, v2, :cond_9

    .line 178
    .line 179
    const/4 v2, 0x4

    .line 180
    if-eq v1, v2, :cond_7

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_7
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 184
    .line 185
    if-eqz v1, :cond_8

    .line 186
    .line 187
    const/16 v2, 0x55

    .line 188
    .line 189
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-ne v1, v10, :cond_8

    .line 194
    .line 195
    const-string v1, "customDNSInnerByteDanceHTTPDNS"

    .line 196
    .line 197
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDNSType:Ljava/lang/String;

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_8
    const-string v1, "customDNS"

    .line 201
    .line 202
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDNSType:Ljava/lang/String;

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_9
    const-string v1, "httpDNS_google"

    .line 206
    .line 207
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDNSType:Ljava/lang/String;

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_a
    const-string v1, "httpDNS_own"

    .line 211
    .line 212
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDNSType:Ljava/lang/String;

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_b
    const-string v1, "localDNS"

    .line 216
    .line 217
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDNSType:Ljava/lang/String;

    .line 218
    .line 219
    :goto_2
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_c

    .line 224
    .line 225
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->updateMdlFeatures(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :goto_3
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    :cond_c
    :goto_4
    return-void
.end method

.method public updateVideoInfo(Lcom/ss/ttvideoengine/model/VideoModel;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->setVideoInfo(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoInfo:Ljava/util/Map;

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    const-string v2, "VideoEventBase"

    .line 11
    .line 12
    if-eqz p1, :cond_7

    .line 13
    .line 14
    iget v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vd:I

    .line 15
    .line 16
    if-gtz v3, :cond_1

    .line 17
    .line 18
    const-string v3, "duration"

    .line 19
    .line 20
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    mul-int/lit16 p1, p1, 0x3e8

    .line 31
    .line 32
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vd:I

    .line 33
    .line 34
    :cond_1
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vs:J

    .line 35
    .line 36
    cmp-long p1, v3, v0

    .line 37
    .line 38
    if-gtz p1, :cond_4

    .line 39
    .line 40
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoInfo:Ljava/util/Map;

    .line 41
    .line 42
    const-string/jumbo v3, "size"

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/util/Map;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    check-cast p1, Ljava/lang/Number;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move-wide v3, v0

    .line 67
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoInfo:Ljava/util/Map;

    .line 68
    .line 69
    const-string v5, "audio_size"

    .line 70
    .line 71
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/util/Map;

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-lez v5, :cond_3

    .line 84
    .line 85
    iget v5, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurDashAudioInfoId:I

    .line 86
    .line 87
    const/4 v6, -0x1

    .line 88
    if-eq v5, v6, :cond_3

    .line 89
    .line 90
    iget v5, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurDashAudioInfoId:I

    .line 91
    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    check-cast p1, Ljava/lang/Number;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v5

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    move-wide v5, v0

    .line 110
    :goto_1
    add-long/2addr v3, v5

    .line 111
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vs:J

    .line 112
    .line 113
    :cond_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_6

    .line 120
    .line 121
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoInfo:Ljava/util/Map;

    .line 122
    .line 123
    const-string v3, "codec"

    .line 124
    .line 125
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Ljava/util/Map;

    .line 130
    .line 131
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 132
    .line 133
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    if-eqz v3, :cond_5

    .line 138
    .line 139
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 140
    .line 141
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    const-string p1, ""

    .line 147
    .line 148
    :goto_2
    check-cast p1, Ljava/lang/String;

    .line 149
    .line 150
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    .line 151
    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v3, "brian codec_type:"

    .line 158
    .line 159
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v3, ", for resolution:"

    .line 168
    .line 169
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v3, ", quality desc:"

    .line 178
    .line 179
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentQualityDesc:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_7

    .line 201
    .line 202
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoInfo:Ljava/util/Map;

    .line 203
    .line 204
    const-string/jumbo v3, "vtype"

    .line 205
    .line 206
    .line 207
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Ljava/util/Map;

    .line 212
    .line 213
    if-eqz p1, :cond_7

    .line 214
    .line 215
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 216
    .line 217
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-eqz p1, :cond_7

    .line 222
    .line 223
    check-cast p1, Ljava/lang/String;

    .line 224
    .line 225
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 226
    .line 227
    :cond_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 228
    .line 229
    if-eqz p1, :cond_11

    .line 230
    .line 231
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->pv:Ljava/lang/String;

    .line 232
    .line 233
    if-eqz p1, :cond_8

    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_9

    .line 240
    .line 241
    :cond_8
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 242
    .line 243
    invoke-interface {p1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->versionInfo()Ljava/util/Map;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    if-eqz p1, :cond_9

    .line 248
    .line 249
    const-string v3, "pv"

    .line 250
    .line 251
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    check-cast v3, Ljava/lang/String;

    .line 256
    .line 257
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->pv:Ljava/lang/String;

    .line 258
    .line 259
    const-string v3, "pc"

    .line 260
    .line 261
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    check-cast v3, Ljava/lang/String;

    .line 266
    .line 267
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->pc:Ljava/lang/String;

    .line 268
    .line 269
    const-string/jumbo v3, "sv"

    .line 270
    .line 271
    .line 272
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Ljava/lang/String;

    .line 277
    .line 278
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->sv:Ljava/lang/String;

    .line 279
    .line 280
    const-string v3, "sdk_version"

    .line 281
    .line 282
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    check-cast v3, Ljava/lang/String;

    .line 287
    .line 288
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->sdk_version:Ljava/lang/String;

    .line 289
    .line 290
    const-string v3, "ffv"

    .line 291
    .line 292
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    check-cast v3, Ljava/lang/String;

    .line 297
    .line 298
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->ffmpeg_version:Ljava/lang/String;

    .line 299
    .line 300
    const-string/jumbo v3, "vcnv"

    .line 301
    .line 302
    .line 303
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    check-cast v3, Ljava/lang/String;

    .line 308
    .line 309
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->libvcn_version:Ljava/lang/String;

    .line 310
    .line 311
    const-string/jumbo v3, "trv"

    .line 312
    .line 313
    .line 314
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    check-cast v3, Ljava/lang/String;

    .line 319
    .line 320
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->texturender_version:Ljava/lang/String;

    .line 321
    .line 322
    const-string v3, "abrv"

    .line 323
    .line 324
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    check-cast v3, Ljava/lang/String;

    .line 329
    .line 330
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->abr_version:Ljava/lang/String;

    .line 331
    .line 332
    const-string v3, "prdtv"

    .line 333
    .line 334
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    check-cast v3, Ljava/lang/String;

    .line 339
    .line 340
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->predict_version:Ljava/lang/String;

    .line 341
    .line 342
    const-string v3, "prldv"

    .line 343
    .line 344
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    check-cast p1, Ljava/lang/String;

    .line 349
    .line 350
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->preload_version:Ljava/lang/String;

    .line 351
    .line 352
    :cond_9
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    .line 353
    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    const/4 v3, 0x0

    .line 359
    if-eqz p1, :cond_a

    .line 360
    .line 361
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 362
    .line 363
    invoke-interface {p1, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    .line 368
    .line 369
    :cond_a
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->a_codec_type:Ljava/lang/String;

    .line 370
    .line 371
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    if-eqz p1, :cond_b

    .line 376
    .line 377
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 378
    .line 379
    const/16 v4, 0x92

    .line 380
    .line 381
    invoke-interface {p1, v4}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->a_codec_type:Ljava/lang/String;

    .line 386
    .line 387
    :cond_b
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 388
    .line 389
    const/16 v4, 0x25

    .line 390
    .line 391
    invoke-interface {p1, v4}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    if-nez v4, :cond_c

    .line 400
    .line 401
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mMdlVersion:Ljava/lang/String;

    .line 402
    .line 403
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    const-string/jumbo v4, "video_type:"

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    iget-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 427
    .line 428
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    if-eqz p1, :cond_f

    .line 433
    .line 434
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 435
    .line 436
    const/16 v4, 0x41

    .line 437
    .line 438
    invoke-interface {p1, v4}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    const-string v5, "get video_type from player:"

    .line 448
    .line 449
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    invoke-static {v2, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-nez v4, :cond_f

    .line 467
    .line 468
    const-string v4, "mp4"

    .line 469
    .line 470
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    move-result v5

    .line 474
    if-lez v5, :cond_d

    .line 475
    .line 476
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 477
    .line 478
    goto :goto_3

    .line 479
    :cond_d
    const-string v4, ","

    .line 480
    .line 481
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    if-gez v4, :cond_e

    .line 486
    .line 487
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 488
    .line 489
    goto :goto_3

    .line 490
    :cond_e
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 495
    .line 496
    :cond_f
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .line 500
    .line 501
    const-string/jumbo v4, "video_size :"

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vs:J

    .line 508
    .line 509
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vs:J

    .line 520
    .line 521
    cmp-long p1, v4, v0

    .line 522
    .line 523
    if-gtz p1, :cond_10

    .line 524
    .line 525
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 526
    .line 527
    const/16 v0, 0x42

    .line 528
    .line 529
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 530
    .line 531
    .line 532
    move-result-wide v0

    .line 533
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vs:J

    .line 534
    .line 535
    new-instance p1, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .line 539
    .line 540
    const-string v0, "get video_size from player:"

    .line 541
    .line 542
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vs:J

    .line 546
    .line 547
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    :cond_10
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 558
    .line 559
    const/16 v0, 0x18

    .line 560
    .line 561
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 562
    .line 563
    .line 564
    move-result p1

    .line 565
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->videoCodecNameId:I

    .line 566
    .line 567
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 568
    .line 569
    const/16 v0, 0x19

    .line 570
    .line 571
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 572
    .line 573
    .line 574
    move-result p1

    .line 575
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->audioCodecNameId:I

    .line 576
    .line 577
    iget p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->videoCodecNameId:I

    .line 578
    .line 579
    packed-switch p1, :pswitch_data_0

    .line 580
    .line 581
    .line 582
    goto :goto_4

    .line 583
    :pswitch_0
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    .line 584
    .line 585
    goto :goto_4

    .line 586
    :pswitch_1
    const/4 p1, 0x1

    .line 587
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    .line 588
    .line 589
    :goto_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 590
    .line 591
    const/16 v0, 0x31

    .line 592
    .line 593
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 594
    .line 595
    .line 596
    move-result p1

    .line 597
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->formatType:I

    .line 598
    .line 599
    :cond_11
    return-void

    .line 600
    nop

    .line 601
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public useVideoHW(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHWUser:I

    .line 4
    .line 5
    return-void
.end method

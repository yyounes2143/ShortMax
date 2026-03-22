.class public Lcom/ss/ttvideoengine/PreloaderVidItem;
.super Ljava/lang/Object;
.source "PreloaderVidItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreloaderVidItem"


# instance fields
.field public mAdapter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

.field public mApiVersion:I

.field private mAuthorization:Ljava/lang/String;

.field public mBoeEnable:Z

.field private mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mCdnType:I

.field public mCodecType:Ljava/lang/String;

.field public mDashEnable:Z

.field public mEncryptEnable:Z

.field private mFetchEndListener:Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

.field private mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

.field public mForbidP2p:Z

.field public mHlsEnable:Z

.field public mHttpsEnable:Z

.field public mListener:Lcom/ss/ttvideoengine/PreloaderVidItemListener;

.field private mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

.field private mOnlyFetchVideoModel:Z

.field public mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayIndexGap:I

.field public mPreloadSize:J

.field public mPriorityLevel:I

.field public mResolution:Lcom/ss/ttvideoengine/Resolution;

.field public mResolutionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private mSubTag:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field public mVideoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;J)V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 85
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->SuperHigh:Lcom/ss/ttvideoengine/Resolution;

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    const-wide/16 v1, 0x0

    .line 86
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPreloadSize:J

    const/4 v1, 0x0

    .line 87
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mApiVersion:I

    .line 88
    const-string v2, "h264"

    iput-object v2, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    .line 89
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mDashEnable:Z

    .line 90
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHttpsEnable:Z

    .line 91
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mForbidP2p:Z

    .line 92
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mBoeEnable:Z

    .line 93
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mParams:Ljava/util/Map;

    .line 94
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHlsEnable:Z

    .line 95
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mEncryptEnable:Z

    .line 96
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPriorityLevel:I

    .line 97
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mAuthorization:Ljava/lang/String;

    .line 98
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mOnlyFetchVideoModel:Z

    .line 99
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 100
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mListener:Lcom/ss/ttvideoengine/PreloaderVidItemListener;

    .line 101
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFetchEndListener:Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 102
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 103
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mTag:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mSubTag:Ljava/lang/String;

    const/4 v1, -0x1

    .line 105
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPlayIndexGap:I

    .line 106
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 107
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->vid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->resolution()Lcom/ss/ttvideoengine/Resolution;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 109
    iput-wide p2, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPreloadSize:J

    .line 110
    new-instance p2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    new-instance p3, Lcom/ss/ttvideoengine/PreloaderVidItem$1;

    invoke-direct {p3, p0}, Lcom/ss/ttvideoengine/PreloaderVidItem$1;-><init>(Lcom/ss/ttvideoengine/PreloaderVidItem;)V

    invoke-direct {p2, p3}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;-><init>(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;)V

    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mAdapter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 111
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->setStrategySource(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V
    :try_end_0
    .catch Lcom/ss/ttvideoengine/utils/EngineException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;JLjava/lang/String;)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 142
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    const/4 v1, 0x0

    .line 143
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mApiVersion:I

    .line 144
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mDashEnable:Z

    .line 145
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHttpsEnable:Z

    .line 146
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mForbidP2p:Z

    .line 147
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mBoeEnable:Z

    .line 148
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mParams:Ljava/util/Map;

    .line 149
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHlsEnable:Z

    .line 150
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mEncryptEnable:Z

    .line 151
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPriorityLevel:I

    .line 152
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mAuthorization:Ljava/lang/String;

    .line 153
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mOnlyFetchVideoModel:Z

    .line 154
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 155
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mListener:Lcom/ss/ttvideoengine/PreloaderVidItemListener;

    .line 156
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFetchEndListener:Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 157
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 158
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mTag:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mSubTag:Ljava/lang/String;

    const/4 v1, -0x1

    .line 160
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPlayIndexGap:I

    .line 161
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 162
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 164
    iput-wide p3, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPreloadSize:J

    .line 165
    iput-object p5, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;JLjava/lang/String;Z)V
    .locals 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 196
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    const/4 v1, 0x0

    .line 197
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mApiVersion:I

    .line 198
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mDashEnable:Z

    .line 199
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHttpsEnable:Z

    .line 200
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mBoeEnable:Z

    .line 201
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mParams:Ljava/util/Map;

    .line 202
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHlsEnable:Z

    .line 203
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mEncryptEnable:Z

    .line 204
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPriorityLevel:I

    .line 205
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mAuthorization:Ljava/lang/String;

    .line 206
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mOnlyFetchVideoModel:Z

    .line 207
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 208
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mListener:Lcom/ss/ttvideoengine/PreloaderVidItemListener;

    .line 209
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFetchEndListener:Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 210
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 211
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mTag:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mSubTag:Ljava/lang/String;

    const/4 v1, -0x1

    .line 213
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPlayIndexGap:I

    .line 214
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 215
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 217
    iput-wide p3, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPreloadSize:J

    .line 218
    iput-object p5, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    .line 219
    iput-boolean p6, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mForbidP2p:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;JZ)V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 115
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    const/4 v1, 0x0

    .line 116
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mApiVersion:I

    .line 117
    const-string v2, "h264"

    iput-object v2, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mDashEnable:Z

    .line 119
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHttpsEnable:Z

    .line 120
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mForbidP2p:Z

    .line 121
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mBoeEnable:Z

    .line 122
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mParams:Ljava/util/Map;

    .line 123
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHlsEnable:Z

    .line 124
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mEncryptEnable:Z

    .line 125
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPriorityLevel:I

    .line 126
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mAuthorization:Ljava/lang/String;

    .line 127
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mOnlyFetchVideoModel:Z

    .line 128
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 129
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mListener:Lcom/ss/ttvideoengine/PreloaderVidItemListener;

    .line 130
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFetchEndListener:Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 131
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 132
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mTag:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mSubTag:Ljava/lang/String;

    const/4 v1, -0x1

    .line 134
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPlayIndexGap:I

    .line 135
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 136
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 138
    iput-wide p3, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPreloadSize:J

    if-eqz p5, :cond_0

    .line 139
    const-string p1, "h265"

    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;JZZ)V
    .locals 3

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 168
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    const/4 v1, 0x0

    .line 169
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mApiVersion:I

    .line 170
    const-string v2, "h264"

    iput-object v2, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    .line 171
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mDashEnable:Z

    .line 172
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHttpsEnable:Z

    .line 173
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mForbidP2p:Z

    .line 174
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mBoeEnable:Z

    .line 175
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mParams:Ljava/util/Map;

    .line 176
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHlsEnable:Z

    .line 177
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mEncryptEnable:Z

    .line 178
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPriorityLevel:I

    .line 179
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mAuthorization:Ljava/lang/String;

    .line 180
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mOnlyFetchVideoModel:Z

    .line 181
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 182
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mListener:Lcom/ss/ttvideoengine/PreloaderVidItemListener;

    .line 183
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFetchEndListener:Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 184
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 185
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mTag:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mSubTag:Ljava/lang/String;

    const/4 v1, -0x1

    .line 187
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPlayIndexGap:I

    .line 188
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 189
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 191
    iput-wide p3, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPreloadSize:J

    if-eqz p5, :cond_0

    .line 192
    const-string p1, "h265"

    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    .line 193
    :cond_0
    iput-boolean p6, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mForbidP2p:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;JLjava/lang/String;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 31
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mApiVersion:I

    .line 33
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mDashEnable:Z

    .line 34
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHttpsEnable:Z

    .line 35
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mForbidP2p:Z

    .line 36
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mBoeEnable:Z

    .line 37
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mParams:Ljava/util/Map;

    .line 38
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHlsEnable:Z

    .line 39
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mEncryptEnable:Z

    .line 40
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPriorityLevel:I

    .line 41
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mAuthorization:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mOnlyFetchVideoModel:Z

    .line 43
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 44
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mListener:Lcom/ss/ttvideoengine/PreloaderVidItemListener;

    .line 45
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFetchEndListener:Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 46
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mTag:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mSubTag:Ljava/lang/String;

    const/4 v1, -0x1

    .line 49
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPlayIndexGap:I

    .line 50
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 51
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 53
    iput-wide p4, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPreloadSize:J

    .line 54
    iput-object p6, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    .line 55
    invoke-virtual {p0, p2}, Lcom/ss/ttvideoengine/PreloaderVidItem;->setAuthorization(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;JZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mApiVersion:I

    .line 5
    const-string v2, "h264"

    iput-object v2, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    .line 6
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mDashEnable:Z

    .line 7
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHttpsEnable:Z

    .line 8
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mForbidP2p:Z

    .line 9
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mBoeEnable:Z

    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mParams:Ljava/util/Map;

    .line 11
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHlsEnable:Z

    .line 12
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mEncryptEnable:Z

    .line 13
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPriorityLevel:I

    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mAuthorization:Ljava/lang/String;

    .line 15
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mOnlyFetchVideoModel:Z

    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mListener:Lcom/ss/ttvideoengine/PreloaderVidItemListener;

    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFetchEndListener:Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 19
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 20
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mTag:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mSubTag:Ljava/lang/String;

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPlayIndexGap:I

    .line 23
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 24
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 26
    iput-wide p4, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPreloadSize:J

    if-eqz p6, :cond_0

    .line 27
    const-string p1, "h265"

    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    .line 28
    :cond_0
    invoke-virtual {p0, p2}, Lcom/ss/ttvideoengine/PreloaderVidItem;->setAuthorization(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 58
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->SuperHigh:Lcom/ss/ttvideoengine/Resolution;

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    const-wide/16 v1, 0x0

    .line 59
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPreloadSize:J

    const/4 v1, 0x0

    .line 60
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mApiVersion:I

    .line 61
    const-string v2, "h264"

    iput-object v2, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCodecType:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mDashEnable:Z

    .line 63
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHttpsEnable:Z

    .line 64
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mForbidP2p:Z

    .line 65
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mBoeEnable:Z

    .line 66
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mParams:Ljava/util/Map;

    .line 67
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mHlsEnable:Z

    .line 68
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mEncryptEnable:Z

    .line 69
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPriorityLevel:I

    .line 70
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mAuthorization:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mOnlyFetchVideoModel:Z

    .line 72
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 73
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mListener:Lcom/ss/ttvideoengine/PreloaderVidItemListener;

    .line 74
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFetchEndListener:Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 75
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 76
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mTag:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mSubTag:Ljava/lang/String;

    const/4 v1, -0x1

    .line 78
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPlayIndexGap:I

    .line 79
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 80
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mVideoId:Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p2}, Lcom/ss/ttvideoengine/PreloaderVidItem;->setAuthorization(Ljava/lang/String;)V

    .line 82
    iput-boolean p3, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mOnlyFetchVideoModel:Z

    return-void
.end method


# virtual methods
.method getAuthorization()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mAuthorization:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCdnType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCdnType:I

    .line 2
    .line 3
    return v0
.end method

.method getFetchEndListener()Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFetchEndListener:Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 2
    .line 3
    return-object v0
.end method

.method getFilePathListener()Lcom/ss/ttvideoengine/PreloaderFilePathListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getListener()Lcom/ss/ttvideoengine/PreloaderVidItemListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mListener:Lcom/ss/ttvideoengine/PreloaderVidItemListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetClient()Lcom/ss/ttvideoengine/net/TTVNetClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->gNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method getOnlyFetchVideoModel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mOnlyFetchVideoModel:Z

    .line 2
    .line 3
    return v0
.end method

.method public getPlayIndexGap()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPlayIndexGap:I

    .line 2
    .line 3
    return v0
.end method

.method public getPriorityLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPriorityLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public getSubTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mSubTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAuthorization(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setAuthorization:"

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
    const-string v1, "PreloaderVidItem"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTHelper;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "GetPlayInfoToken"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mAuthorization:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mAuthorization:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    const-string v1, "TokenVersion"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_2

    .line 64
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mAuthorization:Ljava/lang/String;

    .line 68
    .line 69
    :cond_1
    const-string p1, ""

    .line 70
    .line 71
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    const-string v0, "V2"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    const/4 p1, 0x4

    .line 86
    iput p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mApiVersion:I

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_2
    const/4 p1, 0x2

    .line 90
    iput p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mApiVersion:I

    .line 91
    .line 92
    :goto_3
    return-void
.end method

.method public setCallBackListener(Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;)V
    .locals 0
    .param p1    # Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 2
    .line 3
    return-void
.end method

.method public setCdnType(I)V
    .locals 1

    .line 1
    const-string v0, "pcdn"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mCdnType:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setFetchEndListener(Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFetchEndListener:Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 2
    .line 3
    return-void
.end method

.method public setFilePathListener(Lcom/ss/ttvideoengine/PreloaderFilePathListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 2
    .line 3
    return-void
.end method

.method public setListener(Lcom/ss/ttvideoengine/PreloaderVidItemListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mListener:Lcom/ss/ttvideoengine/PreloaderVidItemListener;

    .line 2
    .line 3
    return-void
.end method

.method public setNetworkClient(Lcom/ss/ttvideoengine/net/TTVNetClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 2
    .line 3
    return-void
.end method

.method public setOnlyFetchVideoModel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mOnlyFetchVideoModel:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPlayIndexGap(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPlayIndexGap:I

    .line 2
    .line 3
    return-void
.end method

.method public setPriorityLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mPriorityLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public setResolutionMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/Resolution;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolutionMap:Ljava/util/HashMap;

    .line 11
    .line 12
    :cond_1
    :goto_0
    return-void
.end method

.method public setSubTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mSubTag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

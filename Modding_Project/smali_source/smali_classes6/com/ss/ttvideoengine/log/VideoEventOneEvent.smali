.class public Lcom/ss/ttvideoengine/log/VideoEventOneEvent;
.super Ljava/lang/Object;
.source "VideoEventOneEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/log/VideoEventOneEvent$StatisticDataRunnable;,
        Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;,
        Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;
    }
.end annotation


# static fields
.field public static final BUFFERING_TYPE_AUDIO:I = 0x1

.field public static final BUFFERING_TYPE_BOTHS:I = 0x3

.field public static final BUFFERING_TYPE_VIDEO:I = 0x2

.field public static final END_TYPE_EPISODE:Ljava/lang/String; = "episode"

.field public static final END_TYPE_ERROR:Ljava/lang/String; = "error"

.field public static final END_TYPE_EXIT:Ljava/lang/String; = "exit"

.field public static final END_TYPE_SEEK:Ljava/lang/String; = "seek"

.field public static final END_TYPE_SPEED:Ljava/lang/String; = "speed"

.field public static final END_TYPE_SWITCH:Ljava/lang/String; = "switch"

.field public static final END_TYPE_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final END_TYPE_WAIT:Ljava/lang/String; = "wait"

.field public static final EVENT_TYPE_DECODE:Ljava/lang/String; = "block_decode"

.field public static final EVENT_TYPE_NET:Ljava/lang/String; = "block_net"

.field private static final TAG:Ljava/lang/String; = "VideoEventOneEvent"

.field public static final monitorName:Ljava/lang/String; = "videoplayer_oneevent"


# instance fields
.field public mAccuCostTime:J

.field public mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field public mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

.field private mEventOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

.field public mFirstFrameTime:J

.field public mIsAVBadInterlaced:I

.field private mLastEventTimeMap:Ljava/util/HashMap;

.field public mRebufList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOneOpera;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mLastEventTimeMap:Ljava/util/HashMap;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mAccuCostTime:J

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mRebufList:Ljava/util/ArrayList;

    .line 19
    .line 20
    const-wide/32 v1, -0x80000000

    .line 21
    .line 22
    .line 23
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mFirstFrameTime:J

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mIsAVBadInterlaced:I

    .line 27
    .line 28
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 31
    .line 32
    new-instance p1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mLastEventTimeMap:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 40
    .line 41
    invoke-direct {p1, p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneEvent;Lcom/ss/ttvideoengine/log/VideoEventOneEvent$1;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 45
    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/log/VideoEventOneEvent;Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/log/VideoEventOneEvent;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mLastEventTimeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method private toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    const-string v1, "player_sessionid"

    .line 9
    .line 10
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "cdn_url"

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mInitialURL:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurIP:Ljava/lang/String;

    .line 40
    .line 41
    const-string v2, "cdn_ip"

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurIP:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    :goto_2
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mInitialIP:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_3
    const-string v1, "resolution"

    .line 64
    .line 65
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v1, "source_type"

    .line 71
    .line 72
    .line 73
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v1, "v"

    .line 79
    .line 80
    .line 81
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVid:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "pv"

    .line 87
    .line 88
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->pv:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v1, "pc"

    .line 94
    .line 95
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->pc:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string/jumbo v1, "sv"

    .line 101
    .line 102
    .line 103
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->sv:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v1, "sdk_version"

    .line 109
    .line 110
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->sdk_version:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string/jumbo v1, "vtype"

    .line 116
    .line 117
    .line 118
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string/jumbo v1, "tag"

    .line 124
    .line 125
    .line 126
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTag:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string/jumbo v1, "subtag"

    .line 132
    .line 133
    .line 134
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSubTag:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v1, "p2p_cdn_type"

    .line 140
    .line 141
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mP2PCDNType:I

    .line 142
    .line 143
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    const-string v1, "codec"

    .line 147
    .line 148
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string/jumbo v1, "video_codec_nameid"

    .line 154
    .line 155
    .line 156
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->videoCodecNameId:I

    .line 157
    .line 158
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    const-string v1, "audio_codec_nameid"

    .line 162
    .line 163
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->audioCodecNameId:I

    .line 164
    .line 165
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    const-string v1, "format_type"

    .line 169
    .line 170
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->formatType:I

    .line 171
    .line 172
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    const-string v1, "drm_type"

    .line 176
    .line 177
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDrmType:I

    .line 178
    .line 179
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    const-string v1, "play_speed"

    .line 183
    .line 184
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mPlaySpeed:F

    .line 185
    .line 186
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 187
    .line 188
    .line 189
    const-string v1, "net_type"

    .line 190
    .line 191
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetworkType:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v1, "mdl_version"

    .line 197
    .line 198
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mMdlVersion:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string v1, "enable_mdl"

    .line 204
    .line 205
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableMDL:I

    .line 206
    .line 207
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    const-string/jumbo v1, "video_hw"

    .line 211
    .line 212
    .line 213
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    .line 214
    .line 215
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 216
    .line 217
    .line 218
    const-string/jumbo v1, "user_hw"

    .line 219
    .line 220
    .line 221
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHWUser:I

    .line 222
    .line 223
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    const-string v1, "reuse_socket"

    .line 227
    .line 228
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mReuseSocket:I

    .line 229
    .line 230
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    const-string v1, "cur_task_num"

    .line 234
    .line 235
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdl_cur_task_num:I

    .line 236
    .line 237
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    const-string v1, "mdl_conc_count"

    .line 241
    .line 242
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdl_conc_count:I

    .line 243
    .line 244
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 245
    .line 246
    .line 247
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 248
    .line 249
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_dns_t:J

    .line 250
    .line 251
    const-string v3, "mdl_dns_t"

    .line 252
    .line 253
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 254
    .line 255
    .line 256
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 257
    .line 258
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_downloading:I

    .line 259
    .line 260
    const-string v2, "mdl_downloading"

    .line 261
    .line 262
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 266
    .line 267
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_read_time:J

    .line 268
    .line 269
    const-string v3, "mdl_last_read_time"

    .line 270
    .line 271
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 272
    .line 273
    .line 274
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 275
    .line 276
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cdn_type:I

    .line 277
    .line 278
    const-string v2, "mdl_cdn_type"

    .line 279
    .line 280
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 281
    .line 282
    .line 283
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 284
    .line 285
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_mem_buffer_len:I

    .line 286
    .line 287
    const-string v2, "mdl_mem_buffer_len"

    .line 288
    .line 289
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 290
    .line 291
    .line 292
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 293
    .line 294
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_disk_buffer_len:J

    .line 295
    .line 296
    const-string v3, "mdl_disk_buffer_len"

    .line 297
    .line 298
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 299
    .line 300
    .line 301
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 302
    .line 303
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_send_offset:J

    .line 304
    .line 305
    const-string v3, "mdl_send_offset"

    .line 306
    .line 307
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 308
    .line 309
    .line 310
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 311
    .line 312
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_req_offset:J

    .line 313
    .line 314
    const-string v3, "mdl_last_req_offset"

    .line 315
    .line 316
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 317
    .line 318
    .line 319
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 320
    .line 321
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_ip_list:Ljava/lang/String;

    .line 322
    .line 323
    const-string v2, "mdl_last_ip_list"

    .line 324
    .line 325
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 329
    .line 330
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_req_pos:J

    .line 331
    .line 332
    const-string v3, "cur_req_pos"

    .line 333
    .line 334
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 335
    .line 336
    .line 337
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 338
    .line 339
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_end_pos:J

    .line 340
    .line 341
    const-string v3, "cur_end_pos"

    .line 342
    .line 343
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 344
    .line 345
    .line 346
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 347
    .line 348
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_cache_pos:J

    .line 349
    .line 350
    const-string v3, "cur_cache_pos"

    .line 351
    .line 352
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 353
    .line 354
    .line 355
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 356
    .line 357
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cache_type:I

    .line 358
    .line 359
    const-string v2, "cache_type"

    .line 360
    .line 361
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 362
    .line 363
    .line 364
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 365
    .line 366
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_ip:Ljava/lang/String;

    .line 367
    .line 368
    const-string v2, "cur_ip"

    .line 369
    .line 370
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 374
    .line 375
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_host:Ljava/lang/String;

    .line 376
    .line 377
    const-string v2, "cur_host"

    .line 378
    .line 379
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 383
    .line 384
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_reply_size:J

    .line 385
    .line 386
    const-string v3, "reply_size"

    .line 387
    .line 388
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 389
    .line 390
    .line 391
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 392
    .line 393
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_down_pos:J

    .line 394
    .line 395
    const-string v3, "down_pos"

    .line 396
    .line 397
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 398
    .line 399
    .line 400
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 401
    .line 402
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_time:J

    .line 403
    .line 404
    const-string v3, "player_wait_time"

    .line 405
    .line 406
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 407
    .line 408
    .line 409
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 410
    .line 411
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_num:I

    .line 412
    .line 413
    const-string v2, "player_wait_num"

    .line 414
    .line 415
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 416
    .line 417
    .line 418
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 419
    .line 420
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_stage:I

    .line 421
    .line 422
    const-string v2, "mdl_stage"

    .line 423
    .line 424
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 425
    .line 426
    .line 427
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 428
    .line 429
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_error_code:I

    .line 430
    .line 431
    const-string v2, "mdl_ec"

    .line 432
    .line 433
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 434
    .line 435
    .line 436
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 437
    .line 438
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_speed:I

    .line 439
    .line 440
    const-string v2, "mdl_speed"

    .line 441
    .line 442
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 443
    .line 444
    .line 445
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 446
    .line 447
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_file_key:Ljava/lang/String;

    .line 448
    .line 449
    const-string v2, "mdl_file_key"

    .line 450
    .line 451
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 455
    .line 456
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_is_socrf:I

    .line 457
    .line 458
    const-string v2, "mdl_is_socrf"

    .line 459
    .line 460
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 461
    .line 462
    .line 463
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 464
    .line 465
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_num:I

    .line 466
    .line 467
    const-string v2, "mdl_req_num"

    .line 468
    .line 469
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 470
    .line 471
    .line 472
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 473
    .line 474
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_url_index:I

    .line 475
    .line 476
    const-string v2, "mdl_url_index"

    .line 477
    .line 478
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 479
    .line 480
    .line 481
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 482
    .line 483
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_re_url:Ljava/lang/String;

    .line 484
    .line 485
    const-string v2, "mdl_re_url"

    .line 486
    .line 487
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 491
    .line 492
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_soure:I

    .line 493
    .line 494
    const-string v2, "mdl_cur_source"

    .line 495
    .line 496
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 497
    .line 498
    .line 499
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 500
    .line 501
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_extra_info:Ljava/lang/String;

    .line 502
    .line 503
    const-string v2, "mdl_extra_info"

    .line 504
    .line 505
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 509
    .line 510
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_fs:J

    .line 511
    .line 512
    const-string v3, "mdl_fs"

    .line 513
    .line 514
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 515
    .line 516
    .line 517
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 518
    .line 519
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_pcdn_full_speed:I

    .line 520
    .line 521
    const-string v2, "mdl_p2p_sp"

    .line 522
    .line 523
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 524
    .line 525
    .line 526
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 527
    .line 528
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tbs:J

    .line 529
    .line 530
    const-string v3, "mdl_tbs"

    .line 531
    .line 532
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 533
    .line 534
    .line 535
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 536
    .line 537
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_lbs:J

    .line 538
    .line 539
    const-string v3, "mdl_lbs"

    .line 540
    .line 541
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 542
    .line 543
    .line 544
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 545
    .line 546
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cdn_cache:Ljava/lang/String;

    .line 547
    .line 548
    const-string v2, "mdl_response_cache"

    .line 549
    .line 550
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 554
    .line 555
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_client_info:Ljava/lang/String;

    .line 556
    .line 557
    const-string v2, "mdl_response_cinfo"

    .line 558
    .line 559
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 563
    .line 564
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_req_pos:J

    .line 565
    .line 566
    const-string v3, "a_cur_req_pos"

    .line 567
    .line 568
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 569
    .line 570
    .line 571
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 572
    .line 573
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_end_pos:J

    .line 574
    .line 575
    const-string v3, "a_cur_end_pos"

    .line 576
    .line 577
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 578
    .line 579
    .line 580
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 581
    .line 582
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_cache_pos:J

    .line 583
    .line 584
    const-string v3, "a_cur_cache_pos"

    .line 585
    .line 586
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 587
    .line 588
    .line 589
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 590
    .line 591
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cache_type:I

    .line 592
    .line 593
    const-string v2, "a_cache_type"

    .line 594
    .line 595
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 596
    .line 597
    .line 598
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 599
    .line 600
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_ip:Ljava/lang/String;

    .line 601
    .line 602
    const-string v2, "a_cur_ip"

    .line 603
    .line 604
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 608
    .line 609
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_host:Ljava/lang/String;

    .line 610
    .line 611
    const-string v2, "a_cur_host"

    .line 612
    .line 613
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 617
    .line 618
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_reply_size:J

    .line 619
    .line 620
    const-string v3, "a_reply_size"

    .line 621
    .line 622
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 623
    .line 624
    .line 625
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 626
    .line 627
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_down_pos:J

    .line 628
    .line 629
    const-string v3, "a_down_pos"

    .line 630
    .line 631
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 632
    .line 633
    .line 634
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 635
    .line 636
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_time:J

    .line 637
    .line 638
    const-string v3, "a_player_wait_time"

    .line 639
    .line 640
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 641
    .line 642
    .line 643
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 644
    .line 645
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_num:I

    .line 646
    .line 647
    const-string v2, "a_player_wait_num"

    .line 648
    .line 649
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 650
    .line 651
    .line 652
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 653
    .line 654
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_stage:I

    .line 655
    .line 656
    const-string v2, "a_mdl_stage"

    .line 657
    .line 658
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 659
    .line 660
    .line 661
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 662
    .line 663
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_error_code:I

    .line 664
    .line 665
    const-string v2, "a_mdl_ec"

    .line 666
    .line 667
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 668
    .line 669
    .line 670
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 671
    .line 672
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_speed:I

    .line 673
    .line 674
    const-string v2, "a_mdl_speed"

    .line 675
    .line 676
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 677
    .line 678
    .line 679
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 680
    .line 681
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_file_key:Ljava/lang/String;

    .line 682
    .line 683
    const-string v2, "a_mdl_file_key"

    .line 684
    .line 685
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 689
    .line 690
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_is_socrf:I

    .line 691
    .line 692
    const-string v2, "a_mdl_is_socrf"

    .line 693
    .line 694
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 695
    .line 696
    .line 697
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 698
    .line 699
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_num:I

    .line 700
    .line 701
    const-string v2, "a_mdl_req_num"

    .line 702
    .line 703
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 704
    .line 705
    .line 706
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 707
    .line 708
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_url_index:I

    .line 709
    .line 710
    const-string v2, "a_mdl_url_index"

    .line 711
    .line 712
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 713
    .line 714
    .line 715
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 716
    .line 717
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_re_url:Ljava/lang/String;

    .line 718
    .line 719
    const-string v2, "a_mdl_re_url"

    .line 720
    .line 721
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 725
    .line 726
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_soure:I

    .line 727
    .line 728
    const-string v2, "a_mdl_cur_source"

    .line 729
    .line 730
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 731
    .line 732
    .line 733
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 734
    .line 735
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_extra_info:Ljava/lang/String;

    .line 736
    .line 737
    const-string v2, "a_mdl_extra_info"

    .line 738
    .line 739
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 743
    .line 744
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_fs:J

    .line 745
    .line 746
    const-string v3, "a_mdl_fs"

    .line 747
    .line 748
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 749
    .line 750
    .line 751
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 752
    .line 753
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_pcdn_full_speed:I

    .line 754
    .line 755
    const-string v2, "a_mdl_p2p_sp"

    .line 756
    .line 757
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 758
    .line 759
    .line 760
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 761
    .line 762
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tbs:J

    .line 763
    .line 764
    const-string v3, "a_mdl_tbs"

    .line 765
    .line 766
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 767
    .line 768
    .line 769
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 770
    .line 771
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_lbs:J

    .line 772
    .line 773
    const-string v3, "a_mdl_lbs"

    .line 774
    .line 775
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 776
    .line 777
    .line 778
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 779
    .line 780
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cdn_cache:Ljava/lang/String;

    .line 781
    .line 782
    const-string v2, "a_mdl_response_cache"

    .line 783
    .line 784
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 788
    .line 789
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_client_info:Ljava/lang/String;

    .line 790
    .line 791
    const-string v2, "a_mdl_response_cinfo"

    .line 792
    .line 793
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 797
    .line 798
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_mem_buffer_len:I

    .line 799
    .line 800
    const-string v2, "a_mdl_mem_buffer_len"

    .line 801
    .line 802
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 803
    .line 804
    .line 805
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 806
    .line 807
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_disk_buffer_len:J

    .line 808
    .line 809
    const-string v3, "a_mdl_disk_buffer_len"

    .line 810
    .line 811
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 812
    .line 813
    .line 814
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 815
    .line 816
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_send_offset:J

    .line 817
    .line 818
    const-string v3, "a_mdl_send_offset"

    .line 819
    .line 820
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 821
    .line 822
    .line 823
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 824
    .line 825
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_req_offset:J

    .line 826
    .line 827
    const-string v3, "a_mdl_last_req_offset"

    .line 828
    .line 829
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 830
    .line 831
    .line 832
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 833
    .line 834
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_ip_list:Ljava/lang/String;

    .line 835
    .line 836
    const-string v2, "a_mdl_last_ip_list"

    .line 837
    .line 838
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 842
    .line 843
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cdn_type:I

    .line 844
    .line 845
    const-string v2, "a_mdl_cdn_type"

    .line 846
    .line 847
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 848
    .line 849
    .line 850
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 851
    .line 852
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_read_time:J

    .line 853
    .line 854
    const-string v3, "a_mdl_last_read_time"

    .line 855
    .line 856
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 857
    .line 858
    .line 859
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 860
    .line 861
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_downloading:I

    .line 862
    .line 863
    const-string v2, "a_mdl_downloading"

    .line 864
    .line 865
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 866
    .line 867
    .line 868
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 869
    .line 870
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_dns_t:J

    .line 871
    .line 872
    const-string v3, "a_mdl_dns_t"

    .line 873
    .line 874
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 875
    .line 876
    .line 877
    :cond_4
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEventType:Ljava/lang/String;

    .line 878
    .line 879
    const-string v2, "event_type"

    .line 880
    .line 881
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    const-string v1, "cost_time"

    .line 885
    .line 886
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCostTime:J

    .line 887
    .line 888
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 889
    .line 890
    .line 891
    const-string v1, "end_type"

    .line 892
    .line 893
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEndType:Ljava/lang/String;

    .line 894
    .line 895
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    const-string v1, "index"

    .line 899
    .line 900
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mIndex:I

    .line 901
    .line 902
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 903
    .line 904
    .line 905
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mFirstFrameTime:J

    .line 906
    .line 907
    const-wide/16 v3, 0x0

    .line 908
    .line 909
    cmp-long v5, v1, v3

    .line 910
    .line 911
    const-wide/16 v6, -0x1

    .line 912
    .line 913
    if-lez v5, :cond_5

    .line 914
    .line 915
    iget-wide v8, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mStartT:J

    .line 916
    .line 917
    sub-long/2addr v8, v1

    .line 918
    goto :goto_4

    .line 919
    :cond_5
    move-wide v8, v6

    .line 920
    :goto_4
    const-string v1, "first_frame_interval"

    .line 921
    .line 922
    invoke-static {v0, v1, v8, v9}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 923
    .line 924
    .line 925
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mLastSeekTime:J

    .line 926
    .line 927
    cmp-long v5, v1, v3

    .line 928
    .line 929
    if-lez v5, :cond_6

    .line 930
    .line 931
    iget-wide v8, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mStartT:J

    .line 932
    .line 933
    sub-long/2addr v8, v1

    .line 934
    goto :goto_5

    .line 935
    :cond_6
    move-wide v8, v6

    .line 936
    :goto_5
    const-string v1, "last_seek_interval"

    .line 937
    .line 938
    invoke-static {v0, v1, v8, v9}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 939
    .line 940
    .line 941
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mLastEventTimeMap:Ljava/util/HashMap;

    .line 942
    .line 943
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEventType:Ljava/lang/String;

    .line 944
    .line 945
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    move-result v1

    .line 949
    if-eqz v1, :cond_7

    .line 950
    .line 951
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mLastEventTimeMap:Ljava/util/HashMap;

    .line 952
    .line 953
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEventType:Ljava/lang/String;

    .line 954
    .line 955
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    check-cast v1, Ljava/lang/Long;

    .line 960
    .line 961
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 962
    .line 963
    .line 964
    move-result-wide v1

    .line 965
    cmp-long v3, v1, v3

    .line 966
    .line 967
    if-lez v3, :cond_7

    .line 968
    .line 969
    iget-wide v3, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mStartT:J

    .line 970
    .line 971
    sub-long v6, v3, v1

    .line 972
    .line 973
    :cond_7
    const-string v1, "last_event_interval"

    .line 974
    .line 975
    invoke-static {v0, v1, v6, v7}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 976
    .line 977
    .line 978
    const-string v1, "last_switch_interval"

    .line 979
    .line 980
    const/4 v2, -0x1

    .line 981
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 982
    .line 983
    .line 984
    const-string/jumbo v1, "video_pos"

    .line 985
    .line 986
    .line 987
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoPos:I

    .line 988
    .line 989
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 990
    .line 991
    .line 992
    const-string v1, "retry_count"

    .line 993
    .line 994
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mRetryCount:I

    .line 995
    .line 996
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 997
    .line 998
    .line 999
    const-string v1, "read_count_mdl"

    .line 1000
    .line 1001
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mBytesFromMDL:J

    .line 1002
    .line 1003
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1004
    .line 1005
    .line 1006
    const-string v1, "audio_len_before"

    .line 1007
    .line 1008
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenBeforeMS:J

    .line 1009
    .line 1010
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1011
    .line 1012
    .line 1013
    const-string/jumbo v1, "video_len_before"

    .line 1014
    .line 1015
    .line 1016
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenBeforeMS:J

    .line 1017
    .line 1018
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1019
    .line 1020
    .line 1021
    const-string v1, "audio_len_after"

    .line 1022
    .line 1023
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenAfterMS:J

    .line 1024
    .line 1025
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1026
    .line 1027
    .line 1028
    const-string/jumbo v1, "video_len_after"

    .line 1029
    .line 1030
    .line 1031
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenAfterMS:J

    .line 1032
    .line 1033
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1034
    .line 1035
    .line 1036
    const-string/jumbo v1, "vlen_dec_before"

    .line 1037
    .line 1038
    .line 1039
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenDecBeforeMs:J

    .line 1040
    .line 1041
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1042
    .line 1043
    .line 1044
    const-string/jumbo v1, "vlen_base_before"

    .line 1045
    .line 1046
    .line 1047
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenBaseBeforeMs:J

    .line 1048
    .line 1049
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1050
    .line 1051
    .line 1052
    const-string v1, "alen_dec_before"

    .line 1053
    .line 1054
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenDecBeforeMs:J

    .line 1055
    .line 1056
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1057
    .line 1058
    .line 1059
    const-string v1, "alen_base_before"

    .line 1060
    .line 1061
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenBaseBeforeMs:J

    .line 1062
    .line 1063
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1064
    .line 1065
    .line 1066
    const-string/jumbo v1, "vlen_dec_after"

    .line 1067
    .line 1068
    .line 1069
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenDecAfterMs:J

    .line 1070
    .line 1071
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1072
    .line 1073
    .line 1074
    const-string/jumbo v1, "vlen_base_after"

    .line 1075
    .line 1076
    .line 1077
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenBaseAfterMs:J

    .line 1078
    .line 1079
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1080
    .line 1081
    .line 1082
    const-string v1, "alen_dec_after"

    .line 1083
    .line 1084
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenDecAfterMs:J

    .line 1085
    .line 1086
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1087
    .line 1088
    .line 1089
    const-string v1, "alen_base_after"

    .line 1090
    .line 1091
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenBaseAfterMs:J

    .line 1092
    .line 1093
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1094
    .line 1095
    .line 1096
    const-string/jumbo v1, "vlen_only_before"

    .line 1097
    .line 1098
    .line 1099
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenOnlyBefore:J

    .line 1100
    .line 1101
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1102
    .line 1103
    .line 1104
    const-string v1, "alen_only_before"

    .line 1105
    .line 1106
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenOnlyBefore:J

    .line 1107
    .line 1108
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1109
    .line 1110
    .line 1111
    const-string v1, "player_req_offset"

    .line 1112
    .line 1113
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPlayerReqOffset:J

    .line 1114
    .line 1115
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1116
    .line 1117
    .line 1118
    const-string v1, "a_player_req_offset"

    .line 1119
    .line 1120
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPlayerAudioReqOffset:J

    .line 1121
    .line 1122
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1123
    .line 1124
    .line 1125
    const-string v1, "player_read_state"

    .line 1126
    .line 1127
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPlayerReadState:J

    .line 1128
    .line 1129
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1130
    .line 1131
    .line 1132
    const-string v1, "av_gap"

    .line 1133
    .line 1134
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoAudioGap:J

    .line 1135
    .line 1136
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1137
    .line 1138
    .line 1139
    const-string v1, "buffer_reason"

    .line 1140
    .line 1141
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mBufferingType:I

    .line 1142
    .line 1143
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 1144
    .line 1145
    .line 1146
    const-string v1, "pst"

    .line 1147
    .line 1148
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPreStartT:J

    .line 1149
    .line 1150
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1151
    .line 1152
    .line 1153
    const-string/jumbo v1, "st"

    .line 1154
    .line 1155
    .line 1156
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mStartT:J

    .line 1157
    .line 1158
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1159
    .line 1160
    .line 1161
    const-string v1, "et"

    .line 1162
    .line 1163
    iget-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEndT:J

    .line 1164
    .line 1165
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 1166
    .line 1167
    .line 1168
    const-string v1, "resolution_before"

    .line 1169
    .line 1170
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mResolutionBefore:Ljava/lang/String;

    .line 1171
    .line 1172
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    const-string v1, "resolution_after"

    .line 1176
    .line 1177
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mResolutionAfter:Ljava/lang/String;

    .line 1178
    .line 1179
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    const-string v1, "bitrate_before"

    .line 1183
    .line 1184
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mConfigBitrateBefore:I

    .line 1185
    .line 1186
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 1187
    .line 1188
    .line 1189
    const-string v1, "bitrate_after"

    .line 1190
    .line 1191
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mConfigBitrateAfter:I

    .line 1192
    .line 1193
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 1194
    .line 1195
    .line 1196
    const-string v1, "is_abr"

    .line 1197
    .line 1198
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mIsABR:I

    .line 1199
    .line 1200
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 1201
    .line 1202
    .line 1203
    const-string v1, "quality_desc_before"

    .line 1204
    .line 1205
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mQualityDescBefore:Ljava/lang/String;

    .line 1206
    .line 1207
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    .line 1209
    .line 1210
    const-string v1, "quality_desc_after"

    .line 1211
    .line 1212
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mQualityDescAfter:Ljava/lang/String;

    .line 1213
    .line 1214
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    .line 1216
    .line 1217
    const-string v1, "bad_interlaced"

    .line 1218
    .line 1219
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mIsAVBadInterlaced:I

    .line 1220
    .line 1221
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 1222
    .line 1223
    .line 1224
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCpuRate:D

    .line 1225
    .line 1226
    double-to-float v1, v1

    .line 1227
    const-string v2, "cpu_rate"

    .line 1228
    .line 1229
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 1230
    .line 1231
    .line 1232
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCpuSpeed:D

    .line 1233
    .line 1234
    double-to-float v1, v1

    .line 1235
    const-string v2, "cpu_speed"

    .line 1236
    .line 1237
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 1238
    .line 1239
    .line 1240
    const-string v1, "power_save_mode"

    .line 1241
    .line 1242
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPowerSaveMode:I

    .line 1243
    .line 1244
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 1245
    .line 1246
    .line 1247
    const-string v1, "battery_current"

    .line 1248
    .line 1249
    iget p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCurrent:F

    .line 1250
    .line 1251
    invoke-static {v0, v1, p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 1252
    .line 1253
    .line 1254
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 1255
    .line 1256
    .line 1257
    move-result-object p1

    .line 1258
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getLastPortraitResult()I

    .line 1259
    .line 1260
    .line 1261
    move-result p1

    .line 1262
    const-string v1, "network_score"

    .line 1263
    .line 1264
    invoke-static {v0, v1, p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 1265
    .line 1266
    .line 1267
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 1268
    .line 1269
    .line 1270
    move-result-object p1

    .line 1271
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getLastTargetBitrate()D

    .line 1272
    .line 1273
    .line 1274
    move-result-wide v1

    .line 1275
    double-to-float p1, v1

    .line 1276
    const-string/jumbo v1, "target_bitrate"

    .line 1277
    .line 1278
    .line 1279
    invoke-static {v0, v1, p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 1280
    .line 1281
    .line 1282
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 1283
    .line 1284
    .line 1285
    move-result-object p1

    .line 1286
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTraceID:Ljava/lang/String;

    .line 1287
    .line 1288
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->popOneEventLog(Ljava/lang/String;)Ljava/util/Map;

    .line 1289
    .line 1290
    .line 1291
    move-result-object p1

    .line 1292
    if-eqz p1, :cond_8

    .line 1293
    .line 1294
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 1295
    .line 1296
    .line 1297
    move-result p2

    .line 1298
    if-nez p2, :cond_8

    .line 1299
    .line 1300
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1301
    .line 1302
    .line 1303
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1304
    .line 1305
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1306
    .line 1307
    .line 1308
    const-string p2, "OneEvent:"

    .line 1309
    .line 1310
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    move-result-object p1

    .line 1320
    const-string p2, "VideoEventOneEvent"

    .line 1321
    .line 1322
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    .line 1324
    .line 1325
    new-instance p1, Lorg/json/JSONObject;

    .line 1326
    .line 1327
    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1328
    .line 1329
    .line 1330
    return-object p1
.end method


# virtual methods
.method public _triggerBufferEndCb()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 15
    .line 16
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCostTime:J

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "cost_time"

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEndType:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "exit_type"

    .line 32
    .line 33
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getMDLInfo()Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "cur_host"

    .line 43
    .line 44
    const-string v3, "cur_ip"

    .line 45
    .line 46
    const-string v4, "cur_url"

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    const-string/jumbo v5, "video"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_1

    .line 58
    .line 59
    :try_start_0
    iget-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 60
    .line 61
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v6, v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getMdlTrackInfo(Lorg/json/JSONObject;)Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v5, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_url:Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object v4, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_ip:Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_url:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 101
    .line 102
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurIP:Ljava/lang/String;

    .line 108
    .line 109
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :try_start_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catch_1
    move-exception v1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v3, "_triggerBufferEndCb:"

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string v2, "VideoEventOneEvent"

    .line 151
    .line 152
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 156
    .line 157
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 158
    .line 159
    const/4 v2, 0x1

    .line 160
    invoke-interface {v1, v2, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->onInfo(ILjava/util/Map;)V

    .line 161
    .line 162
    .line 163
    :cond_2
    return-void
.end method

.method public getLastRebufTime()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mStartT:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    return-wide v2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mLastEventTimeMap:Ljava/util/HashMap;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mLastEventTimeMap:Ljava/util/HashMap;

    .line 16
    .line 17
    const-string v2, "block_net"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mLastEventTimeMap:Ljava/util/HashMap;

    .line 26
    .line 27
    const-string v2, "block_net"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    monitor-exit v0

    .line 40
    return-wide v1

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    monitor-exit v0

    .line 44
    const-wide/16 v0, -0x1

    .line 45
    .line 46
    return-wide v0

    .line 47
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw v1
.end method

.method public getMovieStalledType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 2
    .line 3
    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mBufferingType:I

    .line 4
    .line 5
    return v0
.end method

.method public getStalledVideoBufferTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenBeforeMS:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public getStatlledAudioBufferTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenBeforeMS:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public moviePreStalled(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPreStartT:J

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 10
    .line 11
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mBufferingType:I

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "movie stall type:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "VideoEventOneEvent"

    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->updateMDLInfo()V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 51
    .line 52
    const/16 v1, 0x90

    .line 53
    .line 54
    invoke-interface {p1, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPlayerReqOffset:J

    .line 59
    .line 60
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 65
    .line 66
    const/16 v1, 0x95

    .line 67
    .line 68
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPlayerAudioReqOffset:J

    .line 73
    .line 74
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 79
    .line 80
    const/16 v1, 0x96

    .line 81
    .line 82
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPlayerReadState:J

    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method public movieShouldRetry()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 2
    .line 3
    iget v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mRetryCount:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mRetryCount:I

    .line 8
    .line 9
    return-void
.end method

.method public movieStallEnd(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mStartT:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    const-string v2, "VideoEventOneEvent"

    .line 10
    .line 11
    if-lez v1, :cond_4

    .line 12
    .line 13
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEventType:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    iput-wide v5, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEndT:J

    .line 30
    .line 31
    const-string v0, "movieStallEnd"

    .line 32
    .line 33
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 37
    .line 38
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEndT:J

    .line 39
    .line 40
    iget-wide v5, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mStartT:J

    .line 41
    .line 42
    sub-long/2addr v1, v5

    .line 43
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCostTime:J

    .line 44
    .line 45
    cmp-long v5, v1, v3

    .line 46
    .line 47
    if-lez v5, :cond_1

    .line 48
    .line 49
    iget-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mAccuCostTime:J

    .line 50
    .line 51
    add-long/2addr v5, v1

    .line 52
    iput-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mAccuCostTime:J

    .line 53
    .line 54
    :cond_1
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEndType:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->getLastSeekTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mLastSeekTime:J

    .line 63
    .line 64
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 65
    .line 66
    iget-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mLastSeekTime:J

    .line 67
    .line 68
    cmp-long v0, v0, v3

    .line 69
    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    iget-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mStartT:J

    .line 73
    .line 74
    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mLastSeekTime:J

    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mResolutionAfter:Ljava/lang/String;

    .line 87
    .line 88
    iget v2, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentConfigBitrate:I

    .line 89
    .line 90
    iput v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mConfigBitrateAfter:I

    .line 91
    .line 92
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentQualityDesc:Ljava/lang/String;

    .line 93
    .line 94
    iput-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mQualityDescAfter:Ljava/lang/String;

    .line 95
    .line 96
    invoke-interface {v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->bytesInfo()Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 103
    .line 104
    const-string/jumbo v1, "vlen"

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Ljava/lang/Long;

    .line 112
    .line 113
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->safelyUnbox(Ljava/lang/Long;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenAfterMS:J

    .line 118
    .line 119
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 120
    .line 121
    const-string v1, "alen"

    .line 122
    .line 123
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/lang/Long;

    .line 128
    .line 129
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->safelyUnbox(Ljava/lang/Long;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v1

    .line 133
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenAfterMS:J

    .line 134
    .line 135
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 136
    .line 137
    const-string/jumbo v1, "vDecLen"

    .line 138
    .line 139
    .line 140
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Ljava/lang/Long;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->safelyUnbox(Ljava/lang/Long;)J

    .line 147
    .line 148
    .line 149
    move-result-wide v1

    .line 150
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenDecAfterMs:J

    .line 151
    .line 152
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 153
    .line 154
    const-string/jumbo v1, "vBaseLen"

    .line 155
    .line 156
    .line 157
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Ljava/lang/Long;

    .line 162
    .line 163
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->safelyUnbox(Ljava/lang/Long;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v1

    .line 167
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenBaseAfterMs:J

    .line 168
    .line 169
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 170
    .line 171
    const-string v1, "aDecLen"

    .line 172
    .line 173
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Ljava/lang/Long;

    .line 178
    .line 179
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->safelyUnbox(Ljava/lang/Long;)J

    .line 180
    .line 181
    .line 182
    move-result-wide v1

    .line 183
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenDecAfterMs:J

    .line 184
    .line 185
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 186
    .line 187
    const-string v1, "aBaseLen"

    .line 188
    .line 189
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Ljava/lang/Long;

    .line 194
    .line 195
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->safelyUnbox(Ljava/lang/Long;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v1

    .line 199
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenBaseAfterMs:J

    .line 200
    .line 201
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 202
    .line 203
    const-string v1, "avGap"

    .line 204
    .line 205
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Ljava/lang/Long;

    .line 210
    .line 211
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTHelper;->safelyUnbox(Ljava/lang/Long;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v1

    .line 215
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoAudioGap:J

    .line 216
    .line 217
    :cond_3
    new-instance p1, Ljava/util/HashMap;

    .line 218
    .line 219
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 223
    .line 224
    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoPos:I

    .line 225
    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const-string v1, "p"

    .line 231
    .line 232
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 236
    .line 237
    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEndT:J

    .line 238
    .line 239
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const-string/jumbo v1, "t"

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 250
    .line 251
    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCostTime:J

    .line 252
    .line 253
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const-string v1, "c"

    .line 258
    .line 259
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mRebufList:Ljava/util/ArrayList;

    .line 263
    .line 264
    new-instance v1, Lorg/json/JSONObject;

    .line 265
    .line 266
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->sendOneEvent()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->_triggerBufferEndCb()V

    .line 280
    .line 281
    .line 282
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 283
    .line 284
    const/4 v0, 0x0

    .line 285
    invoke-direct {p1, p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneEvent;Lcom/ss/ttvideoengine/log/VideoEventOneEvent$1;)V

    .line 286
    .line 287
    .line 288
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 289
    .line 290
    return-void

    .line 291
    :cond_4
    :goto_0
    const-string p1, "movieStallEnd without movieStalled, return."

    .line 292
    .line 293
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 297
    .line 298
    const-wide/32 v0, -0x80000000

    .line 299
    .line 300
    .line 301
    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPreStartT:J

    .line 302
    .line 303
    const/4 v0, -0x1

    .line 304
    iput v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mBufferingType:I

    .line 305
    .line 306
    return-void
.end method

.method public movieStalled(II)V
    .locals 5

    .line 1
    const-string v0, "VideoEventOneEvent"

    .line 2
    .line 3
    const-string v1, "movieStalled"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mStartT:J

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 17
    .line 18
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoPos:I

    .line 19
    .line 20
    iput p2, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mIndex:I

    .line 21
    .line 22
    const-string p1, "block_net"

    .line 23
    .line 24
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEventType:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 27
    .line 28
    if-eqz p1, :cond_b

    .line 29
    .line 30
    iget-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 31
    .line 32
    if-eqz p2, :cond_b

    .line 33
    .line 34
    iget-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p2, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mResolutionBefore:Ljava/lang/String;

    .line 37
    .line 38
    iget p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentConfigBitrate:I

    .line 39
    .line 40
    iput p2, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mConfigBitrateBefore:I

    .line 41
    .line 42
    iget-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentQualityDesc:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p2, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mQualityDescBefore:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->abrInfo:Ljava/util/Map;

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    const-string p2, "abr_used"

    .line 51
    .line 52
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 59
    .line 60
    check-cast p1, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iput p1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mIsABR:I

    .line 67
    .line 68
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 69
    .line 70
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 71
    .line 72
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 73
    .line 74
    const/16 v0, 0x38

    .line 75
    .line 76
    invoke-interface {p2, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mBytesFromMDL:J

    .line 81
    .line 82
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 85
    .line 86
    const/16 p2, 0x37

    .line 87
    .line 88
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->parsePlayerBufferString(Ljava/lang/String;)Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string p2, "fvl"

    .line 97
    .line 98
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 105
    .line 106
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    check-cast p2, Ljava/lang/Long;

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 113
    .line 114
    .line 115
    move-result-wide v1

    .line 116
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenBeforeMS:J

    .line 117
    .line 118
    :cond_1
    const-string p2, "fal"

    .line 119
    .line 120
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 127
    .line 128
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    check-cast p2, Ljava/lang/Long;

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenBeforeMS:J

    .line 139
    .line 140
    :cond_2
    const-string p2, "dvl"

    .line 141
    .line 142
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_3

    .line 147
    .line 148
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 149
    .line 150
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    check-cast p2, Ljava/lang/Long;

    .line 155
    .line 156
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 157
    .line 158
    .line 159
    move-result-wide v1

    .line 160
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenDecBeforeMs:J

    .line 161
    .line 162
    :cond_3
    const-string p2, "dal"

    .line 163
    .line 164
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_4

    .line 169
    .line 170
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 171
    .line 172
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    check-cast p2, Ljava/lang/Long;

    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 179
    .line 180
    .line 181
    move-result-wide v1

    .line 182
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenDecBeforeMs:J

    .line 183
    .line 184
    :cond_4
    const-string p2, "bvl"

    .line 185
    .line 186
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-eqz v0, :cond_5

    .line 191
    .line 192
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 193
    .line 194
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    check-cast p2, Ljava/lang/Long;

    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 201
    .line 202
    .line 203
    move-result-wide v1

    .line 204
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenBaseBeforeMs:J

    .line 205
    .line 206
    :cond_5
    const-string p2, "bal"

    .line 207
    .line 208
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-eqz v0, :cond_6

    .line 213
    .line 214
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 215
    .line 216
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    check-cast p2, Ljava/lang/Long;

    .line 221
    .line 222
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 223
    .line 224
    .line 225
    move-result-wide v1

    .line 226
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenBaseBeforeMs:J

    .line 227
    .line 228
    :cond_6
    const-string p2, "fvlim"

    .line 229
    .line 230
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-eqz v0, :cond_7

    .line 235
    .line 236
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 237
    .line 238
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    check-cast p2, Ljava/lang/Long;

    .line 243
    .line 244
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 245
    .line 246
    .line 247
    move-result-wide v1

    .line 248
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenOnlyBefore:J

    .line 249
    .line 250
    :cond_7
    const-string p2, "falim"

    .line 251
    .line 252
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    if-eqz v0, :cond_8

    .line 257
    .line 258
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 259
    .line 260
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    check-cast p1, Ljava/lang/Long;

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 267
    .line 268
    .line 269
    move-result-wide p1

    .line 270
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenOnlyBefore:J

    .line 271
    .line 272
    :cond_8
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 273
    .line 274
    invoke-static {}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getNetType()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetworkType:Ljava/lang/String;

    .line 279
    .line 280
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 281
    .line 282
    iget-boolean p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 283
    .line 284
    if-eqz p2, :cond_a

    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCPURate()D

    .line 287
    .line 288
    .line 289
    move-result-wide p1

    .line 290
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCPUSpeed()D

    .line 293
    .line 294
    .line 295
    move-result-wide v0

    .line 296
    const-wide/16 v2, 0x0

    .line 297
    .line 298
    cmpl-double v4, p1, v2

    .line 299
    .line 300
    if-lez v4, :cond_9

    .line 301
    .line 302
    cmpl-double v2, v0, v2

    .line 303
    .line 304
    if-lez v2, :cond_9

    .line 305
    .line 306
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 307
    .line 308
    iput-wide p1, v2, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCpuRate:D

    .line 309
    .line 310
    iput-wide v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCpuSpeed:D

    .line 311
    .line 312
    goto :goto_0

    .line 313
    :cond_9
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$StatisticDataRunnable;

    .line 314
    .line 315
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 316
    .line 317
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 318
    .line 319
    invoke-direct {p1, p2, v0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$StatisticDataRunnable;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 320
    .line 321
    .line 322
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 323
    .line 324
    .line 325
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 326
    .line 327
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 328
    .line 329
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getBatteryCurrent()F

    .line 330
    .line 331
    .line 332
    move-result p2

    .line 333
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCurrent:F

    .line 334
    .line 335
    :cond_a
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEngineOptimizeFlag()J

    .line 340
    .line 341
    .line 342
    move-result-wide p1

    .line 343
    const-wide/16 v0, 0x2

    .line 344
    .line 345
    invoke-static {p1, p2, v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->isFlagOn(JJ)Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    if-nez p1, :cond_b

    .line 350
    .line 351
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 352
    .line 353
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 354
    .line 355
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->isPowerSaveMode(Landroid/content/Context;)I

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    if-ltz p1, :cond_b

    .line 360
    .line 361
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 362
    .line 363
    iput p1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPowerSaveMode:I

    .line 364
    .line 365
    :cond_b
    return-void
.end method

.method public onAVBadInterlaced()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mIsAVBadInterlaced:I

    .line 3
    .line 4
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mLastEventTimeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mLastEventTimeMap:Ljava/util/HashMap;

    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mAccuCostTime:J

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mRebufList:Ljava/util/ArrayList;

    .line 22
    .line 23
    const-wide/32 v0, -0x80000000

    .line 24
    .line 25
    .line 26
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mFirstFrameTime:J

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mIsAVBadInterlaced:I

    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw v1
.end method

.method public sendOneEvent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->updateVideoInfo(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "VideoEventOneEvent"

    .line 8
    .line 9
    const-string v1, "report async"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;

    .line 21
    .line 22
    invoke-direct {v0, v2, p0, v1, v3}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$AsyncGetLogDataRunnable;-><init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOneEvent;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public showedFirstFrame()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mFirstFrameTime:J

    .line 6
    .line 7
    return-void
.end method

.method public triggerBufferStartCb()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 15
    .line 16
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableMDL:I

    .line 17
    .line 18
    const-string v3, "cur_ip"

    .line 19
    .line 20
    const-string v4, "cur_url"

    .line 21
    .line 22
    if-lez v2, :cond_0

    .line 23
    .line 24
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_url:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_ip:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_url:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurIP:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 62
    .line 63
    :goto_0
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "cur_host"

    .line 72
    .line 73
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception v1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string/jumbo v3, "triggerBufferStartCb:"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v2, "VideoEventOneEvent"

    .line 101
    .line 102
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    invoke-interface {v1, v2, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->onInfo(ILjava/util/Map;)V

    .line 111
    .line 112
    .line 113
    :cond_1
    return-void
.end method

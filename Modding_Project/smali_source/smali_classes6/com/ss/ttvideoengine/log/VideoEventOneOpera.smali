.class public Lcom/ss/ttvideoengine/log/VideoEventOneOpera;
.super Ljava/lang/Object;
.source "VideoEventOneOpera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;,
        Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;
    }
.end annotation


# static fields
.field public static final END_TYPE_EPISODE:Ljava/lang/String; = "episode"

.field public static final END_TYPE_ERROR:Ljava/lang/String; = "error"

.field public static final END_TYPE_EXIT:Ljava/lang/String; = "exit"

.field public static final END_TYPE_SEEK:Ljava/lang/String; = "seek"

.field public static final END_TYPE_SPEED:Ljava/lang/String; = "speed"

.field public static final END_TYPE_SWITCH:Ljava/lang/String; = "switch"

.field public static final END_TYPE_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final END_TYPE_WAIT:Ljava/lang/String; = "wait"

.field public static final OPERA_TYPE_SEEK:Ljava/lang/String; = "seek"

.field public static final OPERA_TYPE_SWITCH:Ljava/lang/String; = "switch"

.field private static final TAG:Ljava/lang/String; = "VideoEventOneOpera"

.field public static final monitorName:Ljava/lang/String; = "videoplayer_oneopera"


# instance fields
.field public mAccuCostTime:I

.field public mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field public mLastBufferEndT:J

.field public mLastBufferStartT:J

.field private mLastOperaTimeMap:Ljava/util/HashMap;

.field public mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

.field public mReportSeek:Z

.field public mSeekList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastOperaTimeMap:Ljava/util/HashMap;

    .line 6
    .line 7
    const-wide/32 v1, -0x80000000

    .line 8
    .line 9
    .line 10
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastBufferStartT:J

    .line 11
    .line 12
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastBufferEndT:J

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mAccuCostTime:I

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mSeekList:Ljava/util/ArrayList;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 25
    .line 26
    new-instance p1, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastOperaTimeMap:Ljava/util/HashMap;

    .line 32
    .line 33
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 34
    .line 35
    invoke-direct {p1, p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneOpera;Lcom/ss/ttvideoengine/log/VideoEventOneOpera$1;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 39
    .line 40
    return-void
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/log/VideoEventOneOpera;Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;
    .locals 4

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
    const-string/jumbo v1, "source_type"

    .line 64
    .line 65
    .line 66
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v1, "v"

    .line 72
    .line 73
    .line 74
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVid:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v1, "pv"

    .line 80
    .line 81
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->pv:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "pc"

    .line 87
    .line 88
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->pc:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string/jumbo v1, "sv"

    .line 94
    .line 95
    .line 96
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->sv:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v1, "sdk_version"

    .line 102
    .line 103
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->sdk_version:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string/jumbo v1, "vtype"

    .line 109
    .line 110
    .line 111
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string/jumbo v1, "tag"

    .line 117
    .line 118
    .line 119
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTag:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string/jumbo v1, "subtag"

    .line 125
    .line 126
    .line 127
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSubTag:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v1, "p2p_cdn_type"

    .line 133
    .line 134
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mP2PCDNType:I

    .line 135
    .line 136
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    const-string v1, "codec"

    .line 140
    .line 141
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string/jumbo v1, "video_codec_nameid"

    .line 147
    .line 148
    .line 149
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->videoCodecNameId:I

    .line 150
    .line 151
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    const-string v1, "audio_codec_nameid"

    .line 155
    .line 156
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->audioCodecNameId:I

    .line 157
    .line 158
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    const-string v1, "format_type"

    .line 162
    .line 163
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->formatType:I

    .line 164
    .line 165
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    const-string v1, "drm_type"

    .line 169
    .line 170
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDrmType:I

    .line 171
    .line 172
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 176
    .line 177
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_speed:I

    .line 178
    .line 179
    const-string v2, "mdl_speed"

    .line 180
    .line 181
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    const-string v1, "net_type"

    .line 185
    .line 186
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetworkType:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v1, "reuse_socket"

    .line 192
    .line 193
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mReuseSocket:I

    .line 194
    .line 195
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    const-string v1, "mdl_version"

    .line 199
    .line 200
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mMdlVersion:Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v1, "enable_mdl"

    .line 206
    .line 207
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableMDL:I

    .line 208
    .line 209
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 210
    .line 211
    .line 212
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 213
    .line 214
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_t:J

    .line 215
    .line 216
    const-string v3, "mdl_req_t"

    .line 217
    .line 218
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 219
    .line 220
    .line 221
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 222
    .line 223
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_end_t:J

    .line 224
    .line 225
    const-string v3, "mdl_end_t"

    .line 226
    .line 227
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 228
    .line 229
    .line 230
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 231
    .line 232
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_dns_t:J

    .line 233
    .line 234
    const-string v3, "mdl_dns_t"

    .line 235
    .line 236
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 237
    .line 238
    .line 239
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 240
    .line 241
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_start_t:J

    .line 242
    .line 243
    const-string v3, "mdl_tcp_start_t"

    .line 244
    .line 245
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 246
    .line 247
    .line 248
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 249
    .line 250
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_end_t:J

    .line 251
    .line 252
    const-string v3, "mdl_tcp_end_t"

    .line 253
    .line 254
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 255
    .line 256
    .line 257
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 258
    .line 259
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ttfp:J

    .line 260
    .line 261
    const-string v3, "mdl_ttfp"

    .line 262
    .line 263
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 264
    .line 265
    .line 266
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 267
    .line 268
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_httpfb:J

    .line 269
    .line 270
    const-string v3, "mdl_httpfb"

    .line 271
    .line 272
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 273
    .line 274
    .line 275
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 276
    .line 277
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_ip:Ljava/lang/String;

    .line 278
    .line 279
    const-string v2, "mdl_cur_ip"

    .line 280
    .line 281
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 285
    .line 286
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_req_pos:J

    .line 287
    .line 288
    const-string v3, "mdl_cur_req_pos"

    .line 289
    .line 290
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 291
    .line 292
    .line 293
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 294
    .line 295
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_end_pos:J

    .line 296
    .line 297
    const-string v3, "mdl_cur_end_pos"

    .line 298
    .line 299
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 300
    .line 301
    .line 302
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 303
    .line 304
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_cache_pos:J

    .line 305
    .line 306
    const-string v3, "mdl_cur_cache_pos"

    .line 307
    .line 308
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 309
    .line 310
    .line 311
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 312
    .line 313
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cache_type:I

    .line 314
    .line 315
    const-string v2, "mdl_cache_type"

    .line 316
    .line 317
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 318
    .line 319
    .line 320
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 321
    .line 322
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_reply_size:J

    .line 323
    .line 324
    const-string v3, "mdl_reply_size"

    .line 325
    .line 326
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 327
    .line 328
    .line 329
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 330
    .line 331
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_down_pos:J

    .line 332
    .line 333
    const-string v3, "mdl_down_pos"

    .line 334
    .line 335
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 336
    .line 337
    .line 338
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 339
    .line 340
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_error_code:I

    .line 341
    .line 342
    const-string v2, "mdl_error_code"

    .line 343
    .line 344
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 345
    .line 346
    .line 347
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 348
    .line 349
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_http_code:I

    .line 350
    .line 351
    const-string v2, "mdl_http_code"

    .line 352
    .line 353
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 354
    .line 355
    .line 356
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 357
    .line 358
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ip_list:Ljava/lang/String;

    .line 359
    .line 360
    const-string v2, "mdl_ip_list"

    .line 361
    .line 362
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 366
    .line 367
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_blocked_ips:Ljava/lang/String;

    .line 368
    .line 369
    const-string v2, "mdl_blocked_ips"

    .line 370
    .line 371
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 375
    .line 376
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_t:J

    .line 377
    .line 378
    const-string v3, "a_mdl_req_t"

    .line 379
    .line 380
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 381
    .line 382
    .line 383
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 384
    .line 385
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_end_t:J

    .line 386
    .line 387
    const-string v3, "a_mdl_end_t"

    .line 388
    .line 389
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 390
    .line 391
    .line 392
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 393
    .line 394
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_dns_t:J

    .line 395
    .line 396
    const-string v3, "a_mdl_dns_t"

    .line 397
    .line 398
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 399
    .line 400
    .line 401
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 402
    .line 403
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_start_t:J

    .line 404
    .line 405
    const-string v3, "a_mdl_tcp_start_t"

    .line 406
    .line 407
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 408
    .line 409
    .line 410
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 411
    .line 412
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_end_t:J

    .line 413
    .line 414
    const-string v3, "a_mdl_tcp_end_t"

    .line 415
    .line 416
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 417
    .line 418
    .line 419
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 420
    .line 421
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ttfp:J

    .line 422
    .line 423
    const-string v3, "a_mdl_ttfp"

    .line 424
    .line 425
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 426
    .line 427
    .line 428
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 429
    .line 430
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_httpfb:J

    .line 431
    .line 432
    const-string v3, "a_mdl_httpfb"

    .line 433
    .line 434
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 435
    .line 436
    .line 437
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 438
    .line 439
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_ip:Ljava/lang/String;

    .line 440
    .line 441
    const-string v2, "a_mdl_cur_ip"

    .line 442
    .line 443
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 447
    .line 448
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_req_pos:J

    .line 449
    .line 450
    const-string v3, "a_mdl_cur_req_pos"

    .line 451
    .line 452
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 453
    .line 454
    .line 455
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 456
    .line 457
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_end_pos:J

    .line 458
    .line 459
    const-string v3, "a_mdl_cur_end_pos"

    .line 460
    .line 461
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 462
    .line 463
    .line 464
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 465
    .line 466
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_cache_pos:J

    .line 467
    .line 468
    const-string v3, "a_mdl_cur_cache_pos"

    .line 469
    .line 470
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 471
    .line 472
    .line 473
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 474
    .line 475
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cache_type:I

    .line 476
    .line 477
    const-string v2, "a_mdl_cache_type"

    .line 478
    .line 479
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 480
    .line 481
    .line 482
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 483
    .line 484
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_reply_size:J

    .line 485
    .line 486
    const-string v3, "a_mdl_reply_size"

    .line 487
    .line 488
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 489
    .line 490
    .line 491
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 492
    .line 493
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_down_pos:J

    .line 494
    .line 495
    const-string v3, "a_mdl_down_pos"

    .line 496
    .line 497
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 498
    .line 499
    .line 500
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 501
    .line 502
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_error_code:I

    .line 503
    .line 504
    const-string v2, "a_mdl_error_code"

    .line 505
    .line 506
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 507
    .line 508
    .line 509
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 510
    .line 511
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_http_code:I

    .line 512
    .line 513
    const-string v2, "a_mdl_http_code"

    .line 514
    .line 515
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 516
    .line 517
    .line 518
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 519
    .line 520
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ip_list:Ljava/lang/String;

    .line 521
    .line 522
    const-string v2, "a_mdl_ip_list"

    .line 523
    .line 524
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 528
    .line 529
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_blocked_ips:Ljava/lang/String;

    .line 530
    .line 531
    const-string v1, "a_mdl_blocked_ips"

    .line 532
    .line 533
    invoke-static {v0, v1, p2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    :cond_4
    iget-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mOperaType:Ljava/lang/String;

    .line 537
    .line 538
    const-string v1, "opera_type"

    .line 539
    .line 540
    invoke-static {v0, v1, p2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    const-string/jumbo p2, "state_before"

    .line 544
    .line 545
    .line 546
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mStateBefore:Ljava/lang/String;

    .line 547
    .line 548
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    const-string/jumbo p2, "state_after"

    .line 552
    .line 553
    .line 554
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mStateAfter:Ljava/lang/String;

    .line 555
    .line 556
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    const-string p2, "cost_time"

    .line 560
    .line 561
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mCostTime:J

    .line 562
    .line 563
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 564
    .line 565
    .line 566
    const-string p2, "end_type"

    .line 567
    .line 568
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mEndType:Ljava/lang/String;

    .line 569
    .line 570
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    const-string p2, "index"

    .line 574
    .line 575
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->access$300(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)I

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 580
    .line 581
    .line 582
    const-string p2, "last_interval"

    .line 583
    .line 584
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mLastInterval:J

    .line 585
    .line 586
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 587
    .line 588
    .line 589
    const-string p2, "retry_count"

    .line 590
    .line 591
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)I

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 596
    .line 597
    .line 598
    const-string p2, "is_seek_in_buffer"

    .line 599
    .line 600
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->access$400(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)I

    .line 601
    .line 602
    .line 603
    move-result v1

    .line 604
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 605
    .line 606
    .line 607
    const-string/jumbo p2, "video_len_after"

    .line 608
    .line 609
    .line 610
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mVideoLenAfterMS:J

    .line 611
    .line 612
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 613
    .line 614
    .line 615
    const-string p2, "audio_len_after"

    .line 616
    .line 617
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mAudioLenAfterMS:J

    .line 618
    .line 619
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 620
    .line 621
    .line 622
    const-string/jumbo p2, "video_len_before"

    .line 623
    .line 624
    .line 625
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mVideoLenBeforeMS:J

    .line 626
    .line 627
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 628
    .line 629
    .line 630
    const-string p2, "audio_len_before"

    .line 631
    .line 632
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mAudioLenBeforeMS:J

    .line 633
    .line 634
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 635
    .line 636
    .line 637
    const-string p2, "loadtype_when_seek"

    .line 638
    .line 639
    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mLoadTypeWhenSeek:I

    .line 640
    .line 641
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 642
    .line 643
    .line 644
    const-string/jumbo p2, "st"

    .line 645
    .line 646
    .line 647
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->access$200(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)J

    .line 648
    .line 649
    .line 650
    move-result-wide v1

    .line 651
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 652
    .line 653
    .line 654
    const-string p2, "et"

    .line 655
    .line 656
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mEndT:J

    .line 657
    .line 658
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 659
    .line 660
    .line 661
    const-string p2, "resolution_before"

    .line 662
    .line 663
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mResolutionBefore:Ljava/lang/String;

    .line 664
    .line 665
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    const-string p2, "resolution_after"

    .line 669
    .line 670
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mResolutionAfter:Ljava/lang/String;

    .line 671
    .line 672
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    const-string p2, "bitrate_before"

    .line 676
    .line 677
    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mConfigBitrateBefore:I

    .line 678
    .line 679
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 680
    .line 681
    .line 682
    const-string p2, "bitrate_after"

    .line 683
    .line 684
    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mConfigBitrateAfter:I

    .line 685
    .line 686
    invoke-static {v0, p2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 687
    .line 688
    .line 689
    const-string p2, "s_looper_t"

    .line 690
    .line 691
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekLooperTime:J

    .line 692
    .line 693
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 694
    .line 695
    .line 696
    const-string p2, "s_operate_t"

    .line 697
    .line 698
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekOperateTime:J

    .line 699
    .line 700
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 701
    .line 702
    .line 703
    const-string p2, "s_exe_begin_t"

    .line 704
    .line 705
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekExeBeginTime:J

    .line 706
    .line 707
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 708
    .line 709
    .line 710
    const-string p2, "s_avformat_seek_t"

    .line 711
    .line 712
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekAVFormatSeekTime:J

    .line 713
    .line 714
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 715
    .line 716
    .line 717
    const-string p2, "s_c_complete_t"

    .line 718
    .line 719
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekCoreCompleteTime:J

    .line 720
    .line 721
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 722
    .line 723
    .line 724
    const-string p2, "s_complete_t"

    .line 725
    .line 726
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekCompleteTime:J

    .line 727
    .line 728
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 729
    .line 730
    .line 731
    const-string p2, "s_re_f_packet_t"

    .line 732
    .line 733
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekReceiveFirstPacketTime:J

    .line 734
    .line 735
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 736
    .line 737
    .line 738
    const-string p2, "s_de_f_audiopacket_t"

    .line 739
    .line 740
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekDecoderFirstAudioPacketTime:J

    .line 741
    .line 742
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 743
    .line 744
    .line 745
    const-string p2, "s_de_f_audioframe_t"

    .line 746
    .line 747
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekDecoderFirstAudioFrameTime:J

    .line 748
    .line 749
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 750
    .line 751
    .line 752
    const-string p2, "s_loading_begin_t"

    .line 753
    .line 754
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekLoadingBeginTime:J

    .line 755
    .line 756
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 757
    .line 758
    .line 759
    const-string p2, "s_loading_end_t"

    .line 760
    .line 761
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekLoadingEndTime:J

    .line 762
    .line 763
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 764
    .line 765
    .line 766
    const-string p2, "s_render_f_t"

    .line 767
    .line 768
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekRenderFirstFrameTime:J

    .line 769
    .line 770
    invoke-static {v0, p2, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 771
    .line 772
    .line 773
    const-string p1, "last_buf_start_t"

    .line 774
    .line 775
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastBufferStartT:J

    .line 776
    .line 777
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 778
    .line 779
    .line 780
    const-string p1, "last_buf_end_t"

    .line 781
    .line 782
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastBufferEndT:J

    .line 783
    .line 784
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 785
    .line 786
    .line 787
    new-instance p1, Lorg/json/JSONObject;

    .line 788
    .line 789
    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 790
    .line 791
    .line 792
    return-object p1
.end method


# virtual methods
.method public beginSeek(III)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "brian beginSeek from "

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
    const-string v1, " to "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "VideoEventOneOpera"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->access$202(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;J)J

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 41
    .line 42
    const-string v1, "seek"

    .line 43
    .line 44
    iput-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mOperaType:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mStateBefore:Ljava/lang/String;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 53
    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mStateAfter:Ljava/lang/String;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 61
    .line 62
    const-wide/16 v0, 0x0

    .line 63
    .line 64
    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mCostTime:J

    .line 65
    .line 66
    invoke-static {p1, p3}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->access$302(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;I)I

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 70
    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 74
    .line 75
    iget-object p3, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 76
    .line 77
    iput-object p3, p2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mResolutionBefore:Ljava/lang/String;

    .line 78
    .line 79
    iget p3, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentConfigBitrate:I

    .line 80
    .line 81
    iput p3, p2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mConfigBitrateBefore:I

    .line 82
    .line 83
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 84
    .line 85
    if-eqz p1, :cond_0

    .line 86
    .line 87
    const/16 p3, 0x69

    .line 88
    .line 89
    invoke-interface {p1, p3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    iput-wide v0, p2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mVideoLenBeforeMS:J

    .line 94
    .line 95
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 96
    .line 97
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 98
    .line 99
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 100
    .line 101
    const/16 p3, 0x68

    .line 102
    .line 103
    invoke-interface {p2, p3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 104
    .line 105
    .line 106
    move-result-wide p2

    .line 107
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mAudioLenBeforeMS:J

    .line 108
    .line 109
    :cond_0
    return-void
.end method

.method public endSeek(Ljava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->access$200(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    const-string v1, "VideoEventOneOpera"

    .line 12
    .line 13
    if-lez v0, :cond_c

    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mOperaType:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v4, "endSeek, from "

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 38
    .line 39
    iget-object v4, v4, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mStateBefore:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v4, " to "

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 50
    .line 51
    iget-object v4, v4, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mStateAfter:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    iget-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 68
    .line 69
    iput-wide v0, v4, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mEndT:J

    .line 70
    .line 71
    invoke-static {v4}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->access$200(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v5

    .line 75
    sub-long/2addr v0, v5

    .line 76
    iput-wide v0, v4, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mCostTime:J

    .line 77
    .line 78
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 79
    .line 80
    iget-wide v4, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mCostTime:J

    .line 81
    .line 82
    cmp-long v1, v4, v2

    .line 83
    .line 84
    if-lez v1, :cond_1

    .line 85
    .line 86
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mAccuCostTime:I

    .line 87
    .line 88
    int-to-long v1, v1

    .line 89
    add-long/2addr v1, v4

    .line 90
    long-to-int v1, v1

    .line 91
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mAccuCostTime:I

    .line 92
    .line 93
    :cond_1
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mEndType:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v0, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->access$402(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;I)I

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 99
    .line 100
    if-eqz p1, :cond_b

    .line 101
    .line 102
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 103
    .line 104
    if-eqz p1, :cond_b

    .line 105
    .line 106
    const/16 p2, 0x97

    .line 107
    .line 108
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string p2, ";|="

    .line 113
    .line 114
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->parsePlayerStringToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string p2, "s_looper_t"

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

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
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekLooperTime:J

    .line 139
    .line 140
    :cond_2
    const-string p2, "s_operate_t"

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

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
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekOperateTime:J

    .line 161
    .line 162
    :cond_3
    const-string p2, "s_exe_begin_t"

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

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
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekExeBeginTime:J

    .line 183
    .line 184
    :cond_4
    const-string p2, "s_avformat_seek_t"

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

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
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekAVFormatSeekTime:J

    .line 205
    .line 206
    :cond_5
    const-string p2, "s_c_complete_t"

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

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
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekCoreCompleteTime:J

    .line 227
    .line 228
    :cond_6
    const-string p2, "s_re_f_packet_t"

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

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
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekReceiveFirstPacketTime:J

    .line 249
    .line 250
    :cond_7
    const-string p2, "s_de_f_audiopacket_t"

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 259
    .line 260
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    check-cast p2, Ljava/lang/Long;

    .line 265
    .line 266
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 267
    .line 268
    .line 269
    move-result-wide v1

    .line 270
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekDecoderFirstAudioPacketTime:J

    .line 271
    .line 272
    :cond_8
    const-string p2, "s_de_f_audioframe_t"

    .line 273
    .line 274
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    if-eqz v0, :cond_9

    .line 279
    .line 280
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 281
    .line 282
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    check-cast p2, Ljava/lang/Long;

    .line 287
    .line 288
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 289
    .line 290
    .line 291
    move-result-wide v1

    .line 292
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekDecoderFirstAudioFrameTime:J

    .line 293
    .line 294
    :cond_9
    const-string p2, "s_render_f_t"

    .line 295
    .line 296
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    if-eqz v0, :cond_a

    .line 301
    .line 302
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 303
    .line 304
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    check-cast p1, Ljava/lang/Long;

    .line 309
    .line 310
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 311
    .line 312
    .line 313
    move-result-wide p1

    .line 314
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekRenderFirstFrameTime:J

    .line 315
    .line 316
    :cond_a
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 317
    .line 318
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 319
    .line 320
    iget-object v0, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 321
    .line 322
    iput-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mResolutionAfter:Ljava/lang/String;

    .line 323
    .line 324
    iget v0, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentConfigBitrate:I

    .line 325
    .line 326
    iput v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mConfigBitrateAfter:I

    .line 327
    .line 328
    iget-object p1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 329
    .line 330
    invoke-interface {p1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->bytesInfo()Ljava/util/Map;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    if-eqz p1, :cond_b

    .line 335
    .line 336
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 337
    .line 338
    const-string/jumbo v0, "vlen"

    .line 339
    .line 340
    .line 341
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 346
    .line 347
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mVideoLenAfterMS:J

    .line 348
    .line 349
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->nonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    check-cast v0, Ljava/lang/Long;

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 360
    .line 361
    .line 362
    move-result-wide v0

    .line 363
    iput-wide v0, p2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mVideoLenAfterMS:J

    .line 364
    .line 365
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 366
    .line 367
    const-string v0, "alen"

    .line 368
    .line 369
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 374
    .line 375
    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mAudioLenAfterMS:J

    .line 376
    .line 377
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->nonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    check-cast p1, Ljava/lang/Long;

    .line 386
    .line 387
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 388
    .line 389
    .line 390
    move-result-wide v0

    .line 391
    iput-wide v0, p2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mAudioLenAfterMS:J

    .line 392
    .line 393
    :cond_b
    new-instance p1, Ljava/util/HashMap;

    .line 394
    .line 395
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 396
    .line 397
    .line 398
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 399
    .line 400
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mStateBefore:Ljava/lang/String;

    .line 401
    .line 402
    const-string v0, "fr"

    .line 403
    .line 404
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 408
    .line 409
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mStateAfter:Ljava/lang/String;

    .line 410
    .line 411
    const-string/jumbo v0, "to"

    .line 412
    .line 413
    .line 414
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 418
    .line 419
    iget-wide v0, p2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mEndT:J

    .line 420
    .line 421
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 422
    .line 423
    .line 424
    move-result-object p2

    .line 425
    const-string/jumbo v0, "t"

    .line 426
    .line 427
    .line 428
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 432
    .line 433
    iget-wide v0, p2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mCostTime:J

    .line 434
    .line 435
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 436
    .line 437
    .line 438
    move-result-object p2

    .line 439
    const-string v0, "c"

    .line 440
    .line 441
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mSeekList:Ljava/util/ArrayList;

    .line 445
    .line 446
    new-instance v0, Lorg/json/JSONObject;

    .line 447
    .line 448
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->sendOperaEvent()V

    .line 459
    .line 460
    .line 461
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 462
    .line 463
    const/4 p2, 0x0

    .line 464
    invoke-direct {p1, p0, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneOpera;Lcom/ss/ttvideoengine/log/VideoEventOneOpera$1;)V

    .line 465
    .line 466
    .line 467
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 468
    .line 469
    return-void

    .line 470
    :cond_c
    :goto_0
    const-string p1, "endSeek without beginSeek, return."

    .line 471
    .line 472
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    return-void
.end method

.method public getLastSeekTime()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->access$200(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    return-wide v2

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastOperaTimeMap:Ljava/util/HashMap;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastOperaTimeMap:Ljava/util/HashMap;

    .line 18
    .line 19
    const-string v2, "seek"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastOperaTimeMap:Ljava/util/HashMap;

    .line 28
    .line 29
    const-string v2, "seek"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    monitor-exit v0

    .line 42
    return-wide v1

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    monitor-exit v0

    .line 46
    const-wide/16 v0, -0x1

    .line 47
    .line 48
    return-wide v0

    .line 49
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw v1
.end method

.method public movieShouldRetry()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->access$108(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastOperaTimeMap:Ljava/util/HashMap;

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
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastOperaTimeMap:Ljava/util/HashMap;

    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mAccuCostTime:I

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mSeekList:Ljava/util/ArrayList;

    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v1
.end method

.method public sendOperaEvent()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->updateVideoInfo(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastOperaTimeMap:Ljava/util/HashMap;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastOperaTimeMap:Ljava/util/HashMap;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mOperaType:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastOperaTimeMap:Ljava/util/HashMap;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mOperaType:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    cmp-long v3, v1, v3

    .line 41
    .line 42
    if-lez v3, :cond_0

    .line 43
    .line 44
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 45
    .line 46
    invoke-static {v3}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->access$200(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    sub-long/2addr v4, v1

    .line 51
    iput-wide v4, v3, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mLastInterval:J

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastOperaTimeMap:Ljava/util/HashMap;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mOperaType:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastOperaTimeMap:Ljava/util/HashMap;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 68
    .line 69
    iget-object v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mOperaType:Ljava/lang/String;

    .line 70
    .line 71
    iget-wide v4, v2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mEndT:J

    .line 72
    .line 73
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    const-wide/32 v0, -0x80000000

    .line 82
    .line 83
    .line 84
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastBufferStartT:J

    .line 85
    .line 86
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastBufferEndT:J

    .line 87
    .line 88
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mReportSeek:Z

    .line 89
    .line 90
    if-nez v0, :cond_1

    .line 91
    .line 92
    return-void

    .line 93
    :cond_1
    const-string v0, "VideoEventOneOpera"

    .line 94
    .line 95
    const-string v1, "report async"

    .line 96
    .line 97
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 103
    .line 104
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 107
    .line 108
    invoke-direct {v0, v2, p0, v1, v3}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$AsyncGetLogDataRunnable;-><init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOneOpera;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    throw v1
.end method

.method public setLoadTypeWhenSeek(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mLoadTypeWhenSeek:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setSeekCompleteTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekCompleteTime:J

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setSeekLoadingBeginTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekLoadingBeginTime:J

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setSeekLoadingEndTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mOperaContext:Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekLoadingEndTime:J

    .line 6
    .line 7
    :cond_0
    return-void
.end method

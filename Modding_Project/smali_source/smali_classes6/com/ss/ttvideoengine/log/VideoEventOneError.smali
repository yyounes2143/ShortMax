.class public Lcom/ss/ttvideoengine/log/VideoEventOneError;
.super Ljava/lang/Object;
.source "VideoEventOneError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoEventOneError"

.field public static final monitorName:Ljava/lang/String; = "videoplayer_oneerror"


# instance fields
.field public mCDNIP:Ljava/lang/String;

.field public mCDNUrl:Ljava/lang/String;

.field public mDisAbleV3Async:I

.field public mErrorCode:I

.field public mErrorStage:Ljava/lang/String;

.field public mErrorType:I

.field public mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field public mFirstFrameShown:Z

.field public mRetryCount:I

.field public vsc:I

.field public vscMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mErrorCode:I

    .line 7
    .line 8
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mErrorType:I

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mErrorStage:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mCDNUrl:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mCDNIP:Ljava/lang/String;

    .line 17
    .line 18
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->vsc:I

    .line 19
    .line 20
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->vscMessage:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mDisAbleV3Async:I

    .line 24
    .line 25
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 26
    .line 27
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mRetryCount:I

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mFirstFrameShown:Z

    .line 30
    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/log/VideoEventOneError;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneError;->toJsonObject()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private toJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    const-string v2, "player_sessionid"

    .line 11
    .line 12
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "cdn_url"

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mInitialURL:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurIP:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, "cdn_ip"

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurIP:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mInitialIP:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_3
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 80
    .line 81
    const-string v2, "resolution"

    .line 82
    .line 83
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 89
    .line 90
    const-string/jumbo v2, "source_type"

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVid:Ljava/lang/String;

    .line 99
    .line 100
    const-string/jumbo v2, "v"

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->pv:Ljava/lang/String;

    .line 109
    .line 110
    const-string v2, "pv"

    .line 111
    .line 112
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->pc:Ljava/lang/String;

    .line 118
    .line 119
    const-string v2, "pc"

    .line 120
    .line 121
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 125
    .line 126
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->sv:Ljava/lang/String;

    .line 127
    .line 128
    const-string/jumbo v2, "sv"

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 135
    .line 136
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTag:Ljava/lang/String;

    .line 137
    .line 138
    const-string/jumbo v2, "tag"

    .line 139
    .line 140
    .line 141
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 145
    .line 146
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSubTag:Ljava/lang/String;

    .line 147
    .line 148
    const-string/jumbo v2, "subtag"

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 155
    .line 156
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->sdk_version:Ljava/lang/String;

    .line 157
    .line 158
    const-string v2, "sdk_version"

    .line 159
    .line 160
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 164
    .line 165
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    .line 166
    .line 167
    const-string/jumbo v2, "video_hw"

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 174
    .line 175
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 176
    .line 177
    const-string/jumbo v2, "vtype"

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 184
    .line 185
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mP2PCDNType:I

    .line 186
    .line 187
    const-string v2, "p2p_cdn_type"

    .line 188
    .line 189
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 193
    .line 194
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    .line 195
    .line 196
    const-string v2, "codec"

    .line 197
    .line 198
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 202
    .line 203
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->videoCodecNameId:I

    .line 204
    .line 205
    const-string/jumbo v2, "video_codec_nameid"

    .line 206
    .line 207
    .line 208
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 212
    .line 213
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->audioCodecNameId:I

    .line 214
    .line 215
    const-string v2, "audio_codec_nameid"

    .line 216
    .line 217
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 221
    .line 222
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->formatType:I

    .line 223
    .line 224
    const-string v2, "format_type"

    .line 225
    .line 226
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 230
    .line 231
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDrmType:I

    .line 232
    .line 233
    const-string v2, "drm_type"

    .line 234
    .line 235
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 236
    .line 237
    .line 238
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 239
    .line 240
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDrmTokenUrl:Ljava/lang/String;

    .line 241
    .line 242
    const-string v2, "drm_token_url"

    .line 243
    .line 244
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 248
    .line 249
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 250
    .line 251
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_req_pos:J

    .line 252
    .line 253
    const-string v3, "cur_req_pos"

    .line 254
    .line 255
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 256
    .line 257
    .line 258
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 259
    .line 260
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 261
    .line 262
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_end_pos:J

    .line 263
    .line 264
    const-string v3, "cur_end_pos"

    .line 265
    .line 266
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 267
    .line 268
    .line 269
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 270
    .line 271
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 272
    .line 273
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_cache_pos:J

    .line 274
    .line 275
    const-string v3, "cur_cache_pos"

    .line 276
    .line 277
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 278
    .line 279
    .line 280
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 281
    .line 282
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 283
    .line 284
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cache_type:I

    .line 285
    .line 286
    const-string v2, "cache_type"

    .line 287
    .line 288
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 289
    .line 290
    .line 291
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 292
    .line 293
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 294
    .line 295
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_ip:Ljava/lang/String;

    .line 296
    .line 297
    const-string v2, "cur_ip"

    .line 298
    .line 299
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 303
    .line 304
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 305
    .line 306
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_host:Ljava/lang/String;

    .line 307
    .line 308
    const-string v2, "cur_host"

    .line 309
    .line 310
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 314
    .line 315
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 316
    .line 317
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_reply_size:J

    .line 318
    .line 319
    const-string v3, "reply_size"

    .line 320
    .line 321
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 322
    .line 323
    .line 324
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 325
    .line 326
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 327
    .line 328
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_down_pos:J

    .line 329
    .line 330
    const-string v3, "down_pos"

    .line 331
    .line 332
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 333
    .line 334
    .line 335
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 336
    .line 337
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 338
    .line 339
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_time:J

    .line 340
    .line 341
    const-string v3, "player_wait_time"

    .line 342
    .line 343
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 344
    .line 345
    .line 346
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 347
    .line 348
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 349
    .line 350
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_num:I

    .line 351
    .line 352
    const-string v2, "player_wait_num"

    .line 353
    .line 354
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 355
    .line 356
    .line 357
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 358
    .line 359
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 360
    .line 361
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_stage:I

    .line 362
    .line 363
    const-string v2, "mdl_stage"

    .line 364
    .line 365
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 366
    .line 367
    .line 368
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 369
    .line 370
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 371
    .line 372
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_error_code:I

    .line 373
    .line 374
    const-string v2, "mdl_ec"

    .line 375
    .line 376
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 377
    .line 378
    .line 379
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 380
    .line 381
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 382
    .line 383
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_speed:I

    .line 384
    .line 385
    const-string v2, "mdl_speed"

    .line 386
    .line 387
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 388
    .line 389
    .line 390
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 391
    .line 392
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 393
    .line 394
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_file_key:Ljava/lang/String;

    .line 395
    .line 396
    const-string v2, "mdl_file_key"

    .line 397
    .line 398
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 402
    .line 403
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 404
    .line 405
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_is_socrf:I

    .line 406
    .line 407
    const-string v2, "mdl_is_socrf"

    .line 408
    .line 409
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 410
    .line 411
    .line 412
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 413
    .line 414
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 415
    .line 416
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_num:I

    .line 417
    .line 418
    const-string v2, "mdl_req_num"

    .line 419
    .line 420
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 421
    .line 422
    .line 423
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 424
    .line 425
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 426
    .line 427
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_url_index:I

    .line 428
    .line 429
    const-string v2, "mdl_url_index"

    .line 430
    .line 431
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 432
    .line 433
    .line 434
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 435
    .line 436
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 437
    .line 438
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_re_url:Ljava/lang/String;

    .line 439
    .line 440
    const-string v2, "mdl_re_url"

    .line 441
    .line 442
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 446
    .line 447
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetworkType:Ljava/lang/String;

    .line 448
    .line 449
    const-string v2, "net_type"

    .line 450
    .line 451
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 455
    .line 456
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 457
    .line 458
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_fs:J

    .line 459
    .line 460
    const-string v3, "mdl_fs"

    .line 461
    .line 462
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 463
    .line 464
    .line 465
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 466
    .line 467
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 468
    .line 469
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_t:J

    .line 470
    .line 471
    const-string v3, "req_t"

    .line 472
    .line 473
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 474
    .line 475
    .line 476
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 477
    .line 478
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 479
    .line 480
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_end_t:J

    .line 481
    .line 482
    const-string v3, "end_t"

    .line 483
    .line 484
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 485
    .line 486
    .line 487
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 488
    .line 489
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 490
    .line 491
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_dns_t:J

    .line 492
    .line 493
    const-string v3, "dns_t"

    .line 494
    .line 495
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 496
    .line 497
    .line 498
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 499
    .line 500
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 501
    .line 502
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_start_t:J

    .line 503
    .line 504
    const-string/jumbo v3, "tcp_con_start_t"

    .line 505
    .line 506
    .line 507
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 508
    .line 509
    .line 510
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 511
    .line 512
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 513
    .line 514
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_end_t:J

    .line 515
    .line 516
    const-string/jumbo v3, "tcp_con_t"

    .line 517
    .line 518
    .line 519
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 520
    .line 521
    .line 522
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 523
    .line 524
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 525
    .line 526
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ttfp:J

    .line 527
    .line 528
    const-string/jumbo v3, "tcp_first_pack_t"

    .line 529
    .line 530
    .line 531
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 532
    .line 533
    .line 534
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 535
    .line 536
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 537
    .line 538
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_httpfb:J

    .line 539
    .line 540
    const-string v3, "http_first_body_t"

    .line 541
    .line 542
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 543
    .line 544
    .line 545
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 546
    .line 547
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 548
    .line 549
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_http_open_end_t:J

    .line 550
    .line 551
    const-string v3, "http_open_end_t"

    .line 552
    .line 553
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 554
    .line 555
    .line 556
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 557
    .line 558
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 559
    .line 560
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_http_code:I

    .line 561
    .line 562
    const-string v2, "http_code"

    .line 563
    .line 564
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 565
    .line 566
    .line 567
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 568
    .line 569
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 570
    .line 571
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_extra_info:Ljava/lang/String;

    .line 572
    .line 573
    const-string v2, "mdl_extra_info"

    .line 574
    .line 575
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 579
    .line 580
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mMdlVersion:Ljava/lang/String;

    .line 581
    .line 582
    const-string v2, "mdl_version"

    .line 583
    .line 584
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 588
    .line 589
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 590
    .line 591
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ip_list:Ljava/lang/String;

    .line 592
    .line 593
    const-string v2, "mdl_ip_list"

    .line 594
    .line 595
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 599
    .line 600
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 601
    .line 602
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_blocked_ips:Ljava/lang/String;

    .line 603
    .line 604
    const-string v2, "mdl_blocked_ips"

    .line 605
    .line 606
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    :cond_4
    const-string v1, "errt"

    .line 610
    .line 611
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mErrorType:I

    .line 612
    .line 613
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 614
    .line 615
    .line 616
    const-string v1, "errc"

    .line 617
    .line 618
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mErrorCode:I

    .line 619
    .line 620
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 621
    .line 622
    .line 623
    const-string v1, "es"

    .line 624
    .line 625
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mErrorStage:Ljava/lang/String;

    .line 626
    .line 627
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    const-string/jumbo v1, "vsc"

    .line 631
    .line 632
    .line 633
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->vsc:I

    .line 634
    .line 635
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 636
    .line 637
    .line 638
    const-string/jumbo v1, "vsc_message"

    .line 639
    .line 640
    .line 641
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->vscMessage:Ljava/lang/String;

    .line 642
    .line 643
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    const-string v1, "retry_count"

    .line 647
    .line 648
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mRetryCount:I

    .line 649
    .line 650
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 651
    .line 652
    .line 653
    new-instance v1, Lorg/json/JSONObject;

    .line 654
    .line 655
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 656
    .line 657
    .line 658
    return-object v1
.end method


# virtual methods
.method public errorHappened(ILjava/lang/String;)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->vsc:I

    .line 5
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->vscMessage:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneError;->sendErrorEvent()V

    return-void
.end method

.method public errorHappened(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/ss/ttvideoengine/utils/Error;->code:I

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mErrorCode:I

    .line 2
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/utils/Error;->getType()I

    move-result p1

    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mErrorType:I

    .line 3
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneError;->sendErrorEvent()V

    return-void
.end method

.method public movieShouldRetry(Lcom/ss/ttvideoengine/utils/Error;II)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mRetryCount:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mRetryCount:I

    .line 6
    .line 7
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mRetryCount:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mFirstFrameShown:Z

    .line 5
    .line 6
    return-void
.end method

.method public sendErrorEvent()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mFirstFrameShown:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "playing"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mErrorStage:Ljava/lang/String;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "beforePlay"

    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mErrorStage:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mDisAbleV3Async:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v2, "VideoEventOneError"

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    const-string v0, "report sync"

    .line 22
    .line 23
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventManager;->instance:Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 29
    .line 30
    iget-boolean v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->isUploadLogEnabled:Z

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneError;->toJsonObject()Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string/jumbo v3, "videoplayer_oneerror"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/VideoEventManager;->addEventV2(ZLorg/json/JSONObject;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string v0, "report async"

    .line 44
    .line 45
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 51
    .line 52
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-direct {v0, v2, p0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneError$AsyncGetLogDataRunnable;-><init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOneError;Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 58
    .line 59
    .line 60
    :goto_1
    return-void
.end method

.method public showedFirstFrame()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneError;->mFirstFrameShown:Z

    .line 3
    .line 4
    return-void
.end method

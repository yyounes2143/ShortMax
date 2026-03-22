.class public Lcom/ss/ttvideoengine/log/VegaCollector;
.super Ljava/lang/Object;
.source "VegaCollector.java"


# instance fields
.field private mParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VegaCollector;->mParamMap:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public get()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VegaCollector;->mParamMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VegaCollector;->mParamMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VegaCollector;->mParamMap:Ljava/util/Map;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public retrieveEventParam(Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOnePlay;)V
    .locals 4
    .param p1    # Lcom/ss/ttvideoengine/log/VideoEventBase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/log/VideoEventOnePlay;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->setds_t:J

    .line 7
    .line 8
    const-string/jumbo v3, "setds_t"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "surface_set_time"

    .line 15
    .line 16
    .line 17
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->surfaceSetTime:J

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    const-string v1, "ps_t"

    .line 23
    .line 24
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ps_t:J

    .line 25
    .line 26
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    const-string v1, "pt"

    .line 30
    .line 31
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt:J

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 34
    .line 35
    .line 36
    const-string v1, "at"

    .line 37
    .line 38
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->at:J

    .line 39
    .line 40
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 41
    .line 42
    .line 43
    const-string v1, "prepare_start_time"

    .line 44
    .line 45
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_start_time:J

    .line 46
    .line 47
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    const-string v1, "formater_create_t"

    .line 51
    .line 52
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->formater_create_t:J

    .line 53
    .line 54
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 55
    .line 56
    .line 57
    const-string v1, "demuxer_begin_t"

    .line 58
    .line 59
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->demuxer_begin_t:J

    .line 60
    .line 61
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    const-string/jumbo v1, "tran_ct"

    .line 65
    .line 66
    .line 67
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranConnectT:J

    .line 68
    .line 69
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 70
    .line 71
    .line 72
    const-string v1, "a_tran_ct"

    .line 73
    .line 74
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranConnectT:J

    .line 75
    .line 76
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v1, "tran_ft"

    .line 80
    .line 81
    .line 82
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranFirstPacketT:J

    .line 83
    .line 84
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 85
    .line 86
    .line 87
    const-string v1, "a_tran_ft"

    .line 88
    .line 89
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranFirstPacketT:J

    .line 90
    .line 91
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 92
    .line 93
    .line 94
    const-string v1, "avformat_open_t"

    .line 95
    .line 96
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->avformat_open_t:J

    .line 97
    .line 98
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 99
    .line 100
    .line 101
    const-string v1, "demuxer_create_t"

    .line 102
    .line 103
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->demuxer_create_t:J

    .line 104
    .line 105
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 106
    .line 107
    .line 108
    const-string v1, "dec_create_t"

    .line 109
    .line 110
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dec_create_t:J

    .line 111
    .line 112
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 113
    .line 114
    .line 115
    const-string v1, "outlet_create_t"

    .line 116
    .line 117
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->outlet_create_t:J

    .line 118
    .line 119
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 120
    .line 121
    .line 122
    const-string v1, "prepare_end_time"

    .line 123
    .line 124
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_end_time:J

    .line 125
    .line 126
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 127
    .line 128
    .line 129
    const-string v1, "dns_start_t"

    .line 130
    .line 131
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_start_t:J

    .line 132
    .line 133
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 134
    .line 135
    .line 136
    const-string v1, "a_dns_start_t"

    .line 137
    .line 138
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dns_start_t:J

    .line 139
    .line 140
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 141
    .line 142
    .line 143
    const-string v1, "dns_end_t"

    .line 144
    .line 145
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_end_t:J

    .line 146
    .line 147
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 148
    .line 149
    .line 150
    const-string v1, "a_dns_t"

    .line 151
    .line 152
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDnsT:J

    .line 153
    .line 154
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 155
    .line 156
    .line 157
    const-string/jumbo v1, "v_dec_start_t"

    .line 158
    .line 159
    .line 160
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_dec_start_t:J

    .line 161
    .line 162
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 163
    .line 164
    .line 165
    const-string v1, "a_dec_start_t"

    .line 166
    .line 167
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dec_start_t:J

    .line 168
    .line 169
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 170
    .line 171
    .line 172
    const-string/jumbo v1, "v_dec_opened_t"

    .line 173
    .line 174
    .line 175
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_dec_opened_t:J

    .line 176
    .line 177
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 178
    .line 179
    .line 180
    const-string v1, "a_dec_opened_t"

    .line 181
    .line 182
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dec_opened_t:J

    .line 183
    .line 184
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 185
    .line 186
    .line 187
    const-string/jumbo v1, "video_device_start_t"

    .line 188
    .line 189
    .line 190
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceStartTime:J

    .line 191
    .line 192
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 193
    .line 194
    .line 195
    const-string/jumbo v1, "video_device_opened_t"

    .line 196
    .line 197
    .line 198
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceOpenedTime:J

    .line 199
    .line 200
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 201
    .line 202
    .line 203
    const-string v1, "audio_device_start_t"

    .line 204
    .line 205
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceStartTime:J

    .line 206
    .line 207
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 208
    .line 209
    .line 210
    const-string v1, "audio_device_opened_t"

    .line 211
    .line 212
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceOpenedTime:J

    .line 213
    .line 214
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 215
    .line 216
    .line 217
    const-string v1, "re_f_videoframet"

    .line 218
    .line 219
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstVideoFrameT:J

    .line 220
    .line 221
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 222
    .line 223
    .line 224
    const-string v1, "re_f_audioframet"

    .line 225
    .line 226
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstAudioFrameT:J

    .line 227
    .line 228
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 229
    .line 230
    .line 231
    const-string v1, "de_f_videoframet"

    .line 232
    .line 233
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstVideoFrameT:J

    .line 234
    .line 235
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 236
    .line 237
    .line 238
    const-string v1, "de_f_audioframet"

    .line 239
    .line 240
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstAudioFrameT:J

    .line 241
    .line 242
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 243
    .line 244
    .line 245
    const-string/jumbo v1, "v_render_f_t"

    .line 246
    .line 247
    .line 248
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_render_f_t:J

    .line 249
    .line 250
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 251
    .line 252
    .line 253
    const-string v1, "a_render_f_t"

    .line 254
    .line 255
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_render_f_t:J

    .line 256
    .line 257
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 258
    .line 259
    .line 260
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VegaCollector;->mParamMap:Ljava/util/Map;

    .line 261
    .line 262
    iget p2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 263
    .line 264
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    const-string v2, "req_phase"

    .line 269
    .line 270
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VegaCollector;->mParamMap:Ljava/util/Map;

    .line 274
    .line 275
    const-string v1, "req_phase_cost"

    .line 276
    .line 277
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VegaCollector;->mParamMap:Ljava/util/Map;

    .line 281
    .line 282
    iget v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    .line 283
    .line 284
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    const-string v1, "hw"

    .line 289
    .line 290
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VegaCollector;->mParamMap:Ljava/util/Map;

    .line 294
    .line 295
    iget p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHWUser:I

    .line 296
    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    const-string v0, "hw_user"

    .line 302
    .line 303
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    return-void
.end method

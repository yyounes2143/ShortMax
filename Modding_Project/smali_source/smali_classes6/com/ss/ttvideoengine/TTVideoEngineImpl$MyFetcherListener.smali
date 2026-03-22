.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFetcherListener;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyFetcherListener"
.end annotation


# instance fields
.field private final mVideoEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngineImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFetcherListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFetcherListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4902(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Z)Z

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_b

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_1
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5002(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttvideoengine/model/IVideoModel;)Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v2, "fetch info success"

    .line 30
    .line 31
    invoke-static {p2, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttvideoengine/model/IVideoModel;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    const/4 v2, 0x1

    .line 42
    if-ne p2, v2, :cond_2

    .line 43
    .line 44
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-interface {p2}, Lcom/ss/ttvideoengine/model/IVideoModel;->toMediaInfoJsonString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {v0, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5300(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/model/VideoModel;->isDashSource()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-static {v0, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5402(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Z)Z

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-static {v0, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5502(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Z)Z

    .line 67
    .line 68
    .line 69
    iget-object p2, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mEngineConfig:Lcom/ss/ttvideoengine/configcenter/IEngineConfig;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/16 v4, 0x11

    .line 76
    .line 77
    invoke-interface {p2, v4, v3}, Lcom/ss/ttvideoengine/configcenter/IEngineConfig;->setIntOption(II)Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->isCodecStrategyValid()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2, p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->correctStrategy(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5600(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttvideoengine/model/IVideoModel;)V

    .line 105
    .line 106
    .line 107
    iget-object p2, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mVideoInfoListener:Lcom/ss/ttvideoengine/VideoInfoListener;

    .line 108
    .line 109
    if-eqz p2, :cond_9

    .line 110
    .line 111
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->checkSendMainLooper()Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-eqz p2, :cond_7

    .line 120
    .line 121
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5900(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    const/16 v3, 0x22e

    .line 126
    .line 127
    invoke-virtual {v0, v3, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    const/16 v3, 0x19b

    .line 132
    .line 133
    if-eqz p2, :cond_5

    .line 134
    .line 135
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {p2, v3, v1, v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->sendMainLooperMessage(IIILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    iget-object p2, p2, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainMsgRetValue:Landroid/os/Parcel;

    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-ne p2, v2, :cond_6

    .line 157
    .line 158
    move p2, v2

    .line 159
    goto :goto_0

    .line 160
    :cond_5
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {p2, v3, v1, v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->postMainLooperMessage(IIILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_6
    move p2, v1

    .line 172
    goto :goto_0

    .line 173
    :cond_7
    iget-object p2, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mVideoInfoListener:Lcom/ss/ttvideoengine/VideoInfoListener;

    .line 174
    .line 175
    invoke-interface {p2, p1}, Lcom/ss/ttvideoengine/VideoInfoListener;->onFetchedVideoInfo(Lcom/ss/ttvideoengine/model/VideoModel;)Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    :goto_0
    if-eqz p2, :cond_8

    .line 180
    .line 181
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-interface {p1, v2}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->fetchedAndLeaveByUser(I)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_8
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-interface {p2, v1}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->fetchedAndLeaveByUser(I)V

    .line 194
    .line 195
    .line 196
    :cond_9
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->isFetchSmartUrl()Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    if-eqz p2, :cond_a

    .line 205
    .line 206
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-static {p2}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;->findTargetResolution(Lcom/ss/ttvideoengine/model/IVideoModel;)Lcom/ss/ttvideoengine/Resolution;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-virtual {v0, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->configResolution(Lcom/ss/ttvideoengine/Resolution;)V

    .line 215
    .line 216
    .line 217
    :cond_a
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttvideoengine/model/IVideoModel;)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_b
    :goto_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v2, "fetch info failed:"

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/utils/Error;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-static {p1, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object p1, p2, Lcom/ss/ttvideoengine/utils/Error;->parameters:Ljava/util/Map;

    .line 250
    .line 251
    const-string v1, "log_id"

    .line 252
    .line 253
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-eqz p1, :cond_c

    .line 258
    .line 259
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    iget-object v2, p2, Lcom/ss/ttvideoengine/utils/Error;->parameters:Ljava/util/Map;

    .line 264
    .line 265
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Ljava/lang/String;

    .line 270
    .line 271
    const/16 v2, 0xf

    .line 272
    .line 273
    invoke-interface {p1, v2, v1}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setStringOption(ILjava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_c
    invoke-static {v0, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->receivedError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 280
    .line 281
    .line 282
    return-void
.end method

.method public onLog(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFetcherListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "fetcher cancelled"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onRetry(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFetcherListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "fetcher should retry, error:"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/utils/Error;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-interface {v1, p1, v0}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->needRetryToFetch(Lcom/ss/ttvideoengine/utils/Error;I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onStatusException(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFetcherListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v3, "video status exception:"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4902(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Z)Z

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2, p1, p2}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->movieFinish(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->checkSendMainLooper()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const/16 v0, 0x19a

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->postMainLooperMessage(IIILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p2, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 76
    .line 77
    invoke-virtual {p2, p1}, Lcom/ss/ttvideoengine/ListenerCompact;->onVideoStatusException(I)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

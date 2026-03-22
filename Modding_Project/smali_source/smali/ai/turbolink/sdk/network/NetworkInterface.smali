.class public abstract Lai/turbolink/sdk/network/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final processNetworkResponseToServer(Lai/turbolink/sdk/network/TurboLinkNetworkResponse;Ljava/lang/String;Ljava/lang/String;)Lai/turbolink/sdk/request/ServerResponse;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;->getResponseData()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;->getResponseCode()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    new-instance v1, Lai/turbolink/sdk/request/ServerResponse;

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-direct {v1, p2, p1, p3, v2}, Lai/turbolink/sdk/request/ServerResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x2

    .line 27
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p2, "API server returned: status[%d]; Data:[%s]"

    .line 32
    .line 33
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "format(format, *args)"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lai/turbolink/sdk/request/ServerResponse;->setResponseBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string p3, "Json parser exception:"

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-object v1
.end method


# virtual methods
.method public abstract doGet(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract doPost(Ljava/lang/String;Lorg/json/JSONObject;)Lai/turbolink/sdk/network/TurboLinkNetworkResponse;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final doRestfulPost(Ljava/lang/String;Lorg/json/JSONObject;)Lai/turbolink/sdk/request/ServerResponse;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, " ms"

    .line 2
    .line 3
    const-string v1, "Request time is: "

    .line 4
    .line 5
    const-string v2, "url"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "payload"

    .line 11
    .line 12
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v5, "[POST] The submitted post request url is: "

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v5, "[POST] The post request body is: "

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v4}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v4, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 60
    .line 61
    invoke-virtual {v4}, Lai/turbolink/sdk/TurboLink$Companion;->getProjectStatus()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const/4 v6, 0x1

    .line 66
    const-string v7, ""

    .line 67
    .line 68
    if-eq v5, v6, :cond_8

    .line 69
    .line 70
    invoke-virtual {v4}, Lai/turbolink/sdk/TurboLink$Companion;->getDeviceStatus()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    const/16 v6, 0xa

    .line 75
    .line 76
    if-ne v5, v6, :cond_0

    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_0
    const-string v5, "request_id"

    .line 81
    .line 82
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_1

    .line 87
    .line 88
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    const-string v6, "payload.getString(\"request_id\")"

    .line 93
    .line 94
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    move-object v5, v7

    .line 99
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/network/NetworkInterface;->doPost(Ljava/lang/String;Lorg/json/JSONObject;)Lai/turbolink/sdk/network/TurboLinkNetworkResponse;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;->getRequestID()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-direct {p0, p1, v7, p2}, Lai/turbolink/sdk/network/NetworkInterface;->processNetworkResponseToServer(Lai/turbolink/sdk/network/TurboLinkNetworkResponse;Ljava/lang/String;Ljava/lang/String;)Lai/turbolink/sdk/request/ServerResponse;

    .line 108
    .line 109
    .line 110
    move-result-object p1
    :try_end_0
    .catch Lai/turbolink/sdk/network/TurboLinkNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v4}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    if-eqz p2, :cond_3

    .line 116
    .line 117
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-nez p2, :cond_2

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v6

    .line 128
    sub-long/2addr v6, v2

    .line 129
    sget-object p2, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 130
    .line 131
    invoke-virtual {p2, v5}, Lai/turbolink/sdk/TurboLink$SessionObj;->setPreviousRequestId(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, v6, v7}, Lai/turbolink/sdk/TurboLink$SessionObj;->setPreviousRequestTotalTime(J)V

    .line 135
    .line 136
    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {p2}, Lai/turbolink/sdk/utils/TurboLinkLogger;->i(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    :goto_1
    return-object p1

    .line 159
    :catchall_0
    move-exception p1

    .line 160
    goto :goto_3

    .line 161
    :catch_0
    move-exception p1

    .line 162
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v4, "Exception: "

    .line 168
    .line 169
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lai/turbolink/sdk/network/TurboLinkNetworkException;->getTurboLinkErrMessage()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-static {p2}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    new-instance p2, Lai/turbolink/sdk/request/ServerResponse;

    .line 187
    .line 188
    invoke-virtual {p1}, Lai/turbolink/sdk/network/TurboLinkNetworkException;->getTurboLinkErrCode()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    invoke-virtual {p1}, Lai/turbolink/sdk/network/TurboLinkNetworkException;->getTurboLinkErrMessage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-direct {p2, v7, v4, v7, p1}, Lai/turbolink/sdk/request/ServerResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .line 198
    .line 199
    sget-object p1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 200
    .line 201
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    if-eqz p1, :cond_5

    .line 206
    .line 207
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-nez p1, :cond_4

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 215
    .line 216
    .line 217
    move-result-wide v6

    .line 218
    sub-long/2addr v6, v2

    .line 219
    sget-object p1, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 220
    .line 221
    invoke-virtual {p1, v5}, Lai/turbolink/sdk/TurboLink$SessionObj;->setPreviousRequestId(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v6, v7}, Lai/turbolink/sdk/TurboLink$SessionObj;->setPreviousRequestTotalTime(J)V

    .line 225
    .line 226
    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->i(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_5
    :goto_2
    return-object p2

    .line 249
    :goto_3
    sget-object p2, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 250
    .line 251
    invoke-virtual {p2}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    if-eqz p2, :cond_7

    .line 256
    .line 257
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    if-nez p2, :cond_6

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 265
    .line 266
    .line 267
    move-result-wide v6

    .line 268
    sub-long/2addr v6, v2

    .line 269
    sget-object p2, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 270
    .line 271
    invoke-virtual {p2, v5}, Lai/turbolink/sdk/TurboLink$SessionObj;->setPreviousRequestId(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2, v6, v7}, Lai/turbolink/sdk/TurboLink$SessionObj;->setPreviousRequestTotalTime(J)V

    .line 275
    .line 276
    .line 277
    new-instance p2, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-static {p2}, Lai/turbolink/sdk/utils/TurboLinkLogger;->i(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_7
    :goto_4
    throw p1

    .line 299
    :cond_8
    :goto_5
    new-instance p1, Lai/turbolink/sdk/request/ServerResponse;

    .line 300
    .line 301
    const/16 p2, 0x7d1

    .line 302
    .line 303
    const-string v0, "Prohibited user."

    .line 304
    .line 305
    invoke-direct {p1, v7, p2, v7, v0}, Lai/turbolink/sdk/request/ServerResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    return-object p1
.end method

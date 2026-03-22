.class public final Lcom/appsflyer/internal/AFf1qSDK;
.super Lcom/appsflyer/internal/AFe1mSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1mSDK<",
        "Lcom/appsflyer/internal/AFf1pSDK;",
        ">;"
    }
.end annotation


# instance fields
.field public areAllFieldsValid:Lcom/appsflyer/internal/AFi1wSDK;

.field private final component1:Lcom/appsflyer/internal/AFc1oSDK;

.field public final component2:Lcom/appsflyer/internal/AFf1mSDK;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public component3:Lcom/appsflyer/internal/AFf1pSDK;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final component4:Lcom/appsflyer/internal/AFf1nSDK;

.field private final copy:Lcom/appsflyer/internal/AFd1nSDK;

.field private final copydefault:Lcom/appsflyer/internal/AFf1jSDK;

.field private final equals:Ljava/lang/String;

.field private final hashCode:Lcom/appsflyer/internal/AFf1hSDK;

.field private final toString:Lcom/appsflyer/internal/AFf1eSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFf1nSDK;Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFf1eSDK;Lcom/appsflyer/internal/AFf1hSDK;Lcom/appsflyer/internal/AFd1nSDK;Lcom/appsflyer/internal/AFf1jSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFf1mSDK;)V
    .locals 3
    .param p1    # Lcom/appsflyer/internal/AFf1nSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFc1oSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/appsflyer/internal/AFf1eSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/appsflyer/internal/AFf1hSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/appsflyer/internal/AFd1nSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/appsflyer/internal/AFf1jSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/appsflyer/internal/AFf1mSDK;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFe1pSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1pSDK;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lcom/appsflyer/internal/AFe1pSDK;

    .line 5
    .line 6
    const-string v2, "UpdateRemoteConfiguration"

    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Lcom/appsflyer/internal/AFe1pSDK;[Lcom/appsflyer/internal/AFe1pSDK;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/appsflyer/internal/AFf1qSDK;->component3:Lcom/appsflyer/internal/AFf1pSDK;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1qSDK;->component4:Lcom/appsflyer/internal/AFf1nSDK;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/appsflyer/internal/AFf1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/appsflyer/internal/AFf1qSDK;->toString:Lcom/appsflyer/internal/AFf1eSDK;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/appsflyer/internal/AFf1qSDK;->hashCode:Lcom/appsflyer/internal/AFf1hSDK;

    .line 21
    .line 22
    iput-object p5, p0, Lcom/appsflyer/internal/AFf1qSDK;->copy:Lcom/appsflyer/internal/AFd1nSDK;

    .line 23
    .line 24
    iput-object p6, p0, Lcom/appsflyer/internal/AFf1qSDK;->copydefault:Lcom/appsflyer/internal/AFf1jSDK;

    .line 25
    .line 26
    iput-object p7, p0, Lcom/appsflyer/internal/AFf1qSDK;->equals:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p8, p0, Lcom/appsflyer/internal/AFf1qSDK;->component2:Lcom/appsflyer/internal/AFf1mSDK;

    .line 29
    .line 30
    return-void
.end method

.method private component3()Lcom/appsflyer/internal/AFf1pSDK;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    const-string v0, " seconds"

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v8

    .line 9
    iget-object v1, v10, Lcom/appsflyer/internal/AFf1qSDK;->equals:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, v10, Lcom/appsflyer/internal/AFf1qSDK;->toString:Lcom/appsflyer/internal/AFf1eSDK;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "Dev key is not set, SDK is not started."

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    if-nez v1, :cond_1

    .line 33
    .line 34
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 35
    .line 36
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFg1cSDK;

    .line 37
    .line 38
    const-string v4, "Can\'t create CDN token, domain or version is not provided."

    .line 39
    .line 40
    invoke-virtual {v1, v2, v4}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    const/4 v12, 0x0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    iget-object v4, v10, Lcom/appsflyer/internal/AFf1qSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    .line 46
    .line 47
    iget-object v4, v4, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1hSDK;

    .line 48
    .line 49
    iget-object v4, v4, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const-string v5, "appsflyersdk.com"

    .line 56
    .line 57
    filled-new-array {v5, v1, v4}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string/jumbo v4, "\u2063"

    .line 62
    .line 63
    .line 64
    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFj1dSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v12, v1

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    :goto_1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 75
    .line 76
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFg1cSDK;

    .line 77
    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :goto_2
    if-nez v12, :cond_3

    .line 83
    .line 84
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 85
    .line 86
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFg1cSDK;

    .line 87
    .line 88
    const-string v2, "can\'t create CDN token, skipping fetch config"

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->v(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFf1pSDK;

    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_3
    :try_start_0
    iget-object v1, v10, Lcom/appsflyer/internal/AFf1qSDK;->copydefault:Lcom/appsflyer/internal/AFf1jSDK;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFf1jSDK;->AFAdRevenueData()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_8

    .line 103
    .line 104
    sget-object v13, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 105
    .line 106
    sget-object v14, Lcom/appsflyer/internal/AFg1cSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFg1cSDK;

    .line 107
    .line 108
    const-string v1, "Cached config is expired, updating..."

    .line 109
    .line 110
    invoke-virtual {v13, v14, v1}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v10, Lcom/appsflyer/internal/AFf1qSDK;->copydefault:Lcom/appsflyer/internal/AFf1jSDK;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFf1jSDK;->getMonetizationNetwork()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    iget-object v2, v10, Lcom/appsflyer/internal/AFf1qSDK;->copydefault:Lcom/appsflyer/internal/AFf1jSDK;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFf1jSDK;->getMediationNetwork()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    iget-object v4, v10, Lcom/appsflyer/internal/AFf1qSDK;->copy:Lcom/appsflyer/internal/AFd1nSDK;

    .line 126
    .line 127
    const/16 v5, 0x5dc

    .line 128
    .line 129
    invoke-virtual {v4, v1, v2, v12, v5}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(ZZLjava/lang/String;I)Lcom/appsflyer/internal/AFd1hSDK;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFd1hSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFe1wSDK;

    .line 134
    .line 135
    .line 136
    move-result-object v15

    .line 137
    invoke-virtual {v15}, Lcom/appsflyer/internal/AFe1wSDK;->isSuccessful()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    invoke-virtual {v15}, Lcom/appsflyer/internal/AFe1wSDK;->getBody()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Lcom/appsflyer/internal/AFi1vSDK;

    .line 148
    .line 149
    const-string/jumbo v2, "x-amz-meta-af-auth-v1"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v15, v2}, Lcom/appsflyer/internal/AFe1wSDK;->getRevenue(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const-string v4, "CF-Cache-Status"

    .line 157
    .line 158
    invoke-virtual {v15, v4}, Lcom/appsflyer/internal/AFe1wSDK;->getRevenue(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    iget-object v4, v10, Lcom/appsflyer/internal/AFf1qSDK;->toString:Lcom/appsflyer/internal/AFf1eSDK;

    .line 163
    .line 164
    invoke-virtual {v4}, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    if-eqz v4, :cond_4

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-nez v5, :cond_5

    .line 179
    .line 180
    :cond_4
    move-object/from16 v16, v12

    .line 181
    .line 182
    goto/16 :goto_3

    .line 183
    .line 184
    :cond_5
    iget-object v3, v10, Lcom/appsflyer/internal/AFf1qSDK;->component4:Lcom/appsflyer/internal/AFf1nSDK;

    .line 185
    .line 186
    invoke-virtual {v3, v1, v2, v12, v4}, Lcom/appsflyer/internal/AFf1nSDK;->getRevenue(Lcom/appsflyer/internal/AFi1vSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFi1sSDK;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFi1sSDK;->getCurrencyIso4217Code()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_6

    .line 195
    .line 196
    iget-object v3, v10, Lcom/appsflyer/internal/AFf1qSDK;->copydefault:Lcom/appsflyer/internal/AFf1jSDK;

    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/appsflyer/internal/AFf1jSDK;->getCurrencyIso4217Code()J

    .line 199
    .line 200
    .line 201
    move-result-wide v3

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string/jumbo v7, "using max-age fallback: "

    .line 205
    .line 206
    .line 207
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-virtual {v13, v14, v5}, Lcom/appsflyer/internal/AFh1ySDK;->v(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    .line 222
    .line 223
    move-object/from16 v16, v12

    .line 224
    .line 225
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 226
    .line 227
    .line 228
    move-result-wide v11

    .line 229
    iget-object v5, v10, Lcom/appsflyer/internal/AFf1qSDK;->hashCode:Lcom/appsflyer/internal/AFf1hSDK;

    .line 230
    .line 231
    iget-object v7, v1, Lcom/appsflyer/internal/AFi1vSDK;->getMediationNetwork:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    const/4 v10, 0x2

    .line 242
    invoke-static {v7, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    iget-object v10, v5, Lcom/appsflyer/internal/AFf1hSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1qSDK;

    .line 247
    .line 248
    move-object/from16 v17, v15

    .line 249
    .line 250
    const-string v15, "af_remote_config"

    .line 251
    .line 252
    invoke-interface {v10, v15, v7}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object v7, v5, Lcom/appsflyer/internal/AFf1hSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1vSDK;

    .line 256
    .line 257
    iput-object v7, v5, Lcom/appsflyer/internal/AFf1hSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFi1vSDK;

    .line 258
    .line 259
    iget-object v7, v5, Lcom/appsflyer/internal/AFf1hSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1qSDK;

    .line 260
    .line 261
    const-string v10, "af_rc_timestamp"

    .line 262
    .line 263
    invoke-interface {v7, v10, v11, v12}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;J)V

    .line 264
    .line 265
    .line 266
    iget-object v7, v5, Lcom/appsflyer/internal/AFf1hSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1qSDK;

    .line 267
    .line 268
    const-string v10, "af_rc_max_age"

    .line 269
    .line 270
    invoke-interface {v7, v10, v3, v4}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;J)V

    .line 271
    .line 272
    .line 273
    iput-object v1, v5, Lcom/appsflyer/internal/AFf1hSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1vSDK;

    .line 274
    .line 275
    iput-wide v11, v5, Lcom/appsflyer/internal/AFf1hSDK;->getRevenue:J

    .line 276
    .line 277
    iput-wide v3, v5, Lcom/appsflyer/internal/AFf1hSDK;->getMonetizationNetwork:J

    .line 278
    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    const-string v5, "Config successfully updated, timeToLive: "

    .line 282
    .line 283
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v13, v14, v0}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object v5, v2, Lcom/appsflyer/internal/AFi1sSDK;->getRevenue:Lcom/appsflyer/internal/AFi1ySDK;

    .line 300
    .line 301
    move-object/from16 v1, p0

    .line 302
    .line 303
    move-object/from16 v2, v16

    .line 304
    .line 305
    move-wide v3, v8

    .line 306
    move-object/from16 v7, v17

    .line 307
    .line 308
    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFf1qSDK;->getCurrencyIso4217Code(Ljava/lang/String;JLcom/appsflyer/internal/AFi1ySDK;Ljava/lang/String;Lcom/appsflyer/internal/AFe1wSDK;)V

    .line 309
    .line 310
    .line 311
    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1pSDK;

    .line 312
    .line 313
    return-object v0

    .line 314
    :catchall_0
    move-exception v0

    .line 315
    goto :goto_4

    .line 316
    :catch_0
    move-exception v0

    .line 317
    goto/16 :goto_5

    .line 318
    .line 319
    :catchall_1
    move-exception v0

    .line 320
    move-object/from16 v16, v12

    .line 321
    .line 322
    goto :goto_4

    .line 323
    :catch_1
    move-exception v0

    .line 324
    move-object/from16 v16, v12

    .line 325
    .line 326
    goto/16 :goto_5

    .line 327
    .line 328
    :cond_6
    move-object/from16 v16, v12

    .line 329
    .line 330
    move-object/from16 v17, v15

    .line 331
    .line 332
    iget-object v5, v2, Lcom/appsflyer/internal/AFi1sSDK;->getRevenue:Lcom/appsflyer/internal/AFi1ySDK;

    .line 333
    .line 334
    move-object/from16 v1, p0

    .line 335
    .line 336
    move-object/from16 v2, v16

    .line 337
    .line 338
    move-wide v3, v8

    .line 339
    move-object/from16 v7, v17

    .line 340
    .line 341
    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFf1qSDK;->getCurrencyIso4217Code(Ljava/lang/String;JLcom/appsflyer/internal/AFi1ySDK;Ljava/lang/String;Lcom/appsflyer/internal/AFe1wSDK;)V

    .line 342
    .line 343
    .line 344
    const-string v0, "fetched config is not valid (MITM?) refuse to use it."

    .line 345
    .line 346
    invoke-virtual {v13, v14, v0}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFf1pSDK;

    .line 350
    .line 351
    return-object v0

    .line 352
    :goto_3
    invoke-virtual {v13, v14, v3}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFf1pSDK;

    .line 356
    .line 357
    return-object v0

    .line 358
    :cond_7
    move-object/from16 v16, v12

    .line 359
    .line 360
    move-object/from16 v17, v15

    .line 361
    .line 362
    const/4 v5, 0x0

    .line 363
    const/4 v6, 0x0

    .line 364
    move-object/from16 v1, p0

    .line 365
    .line 366
    move-object/from16 v2, v16

    .line 367
    .line 368
    move-wide v3, v8

    .line 369
    move-object/from16 v7, v17

    .line 370
    .line 371
    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFf1qSDK;->getCurrencyIso4217Code(Ljava/lang/String;JLcom/appsflyer/internal/AFi1ySDK;Ljava/lang/String;Lcom/appsflyer/internal/AFe1wSDK;)V

    .line 372
    .line 373
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v1, "failed to fetch remote config from CDN with status code: "

    .line 377
    .line 378
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual/range {v17 .. v17}, Lcom/appsflyer/internal/AFe1wSDK;->getStatusCode()I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v13, v14, v0}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFf1pSDK;

    .line 396
    .line 397
    return-object v0

    .line 398
    :cond_8
    move-object/from16 v16, v12

    .line 399
    .line 400
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 401
    .line 402
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFg1cSDK;

    .line 403
    .line 404
    const-string v2, "active config is valid, skipping fetch"

    .line 405
    .line 406
    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFf1pSDK;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    .line 411
    return-object v0

    .line 412
    :goto_4
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 413
    .line 414
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFg1cSDK;

    .line 415
    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v4, "failed to update remote config: "

    .line 419
    .line 420
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    const/4 v6, 0x0

    .line 435
    const/4 v7, 0x0

    .line 436
    const/4 v5, 0x1

    .line 437
    move-object v4, v0

    .line 438
    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    .line 439
    .line 440
    .line 441
    const/4 v7, 0x0

    .line 442
    const/4 v10, 0x0

    .line 443
    const/4 v5, 0x0

    .line 444
    const/4 v6, 0x0

    .line 445
    move-object/from16 v1, p0

    .line 446
    .line 447
    move-object/from16 v2, v16

    .line 448
    .line 449
    move-wide v3, v8

    .line 450
    move-object v8, v10

    .line 451
    move-object v9, v0

    .line 452
    invoke-direct/range {v1 .. v9}, Lcom/appsflyer/internal/AFf1qSDK;->getMonetizationNetwork(Ljava/lang/String;JLcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFi1vSDK;Lcom/appsflyer/internal/AFi1ySDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    instance-of v1, v1, Ljava/lang/InterruptedException;

    .line 460
    .line 461
    if-nez v1, :cond_9

    .line 462
    .line 463
    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFf1pSDK;

    .line 464
    .line 465
    return-object v0

    .line 466
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    check-cast v0, Ljava/lang/InterruptedException;

    .line 471
    .line 472
    throw v0

    .line 473
    :goto_5
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 474
    .line 475
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFg1cSDK;

    .line 476
    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    const-string v4, "failed to fetch remote config: "

    .line 480
    .line 481
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    const/4 v6, 0x0

    .line 496
    const/4 v7, 0x0

    .line 497
    const/4 v5, 0x1

    .line 498
    move-object v4, v0

    .line 499
    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    .line 500
    .line 501
    .line 502
    instance-of v1, v0, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    .line 503
    .line 504
    if-eqz v1, :cond_a

    .line 505
    .line 506
    move-object v1, v0

    .line 507
    check-cast v1, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    .line 508
    .line 509
    invoke-virtual {v1}, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;->getRawResponse()Lcom/appsflyer/internal/AFe1wSDK;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    move-object v5, v1

    .line 514
    goto :goto_6

    .line 515
    :cond_a
    const/4 v5, 0x0

    .line 516
    :goto_6
    const/4 v7, 0x0

    .line 517
    const/4 v10, 0x0

    .line 518
    const/4 v6, 0x0

    .line 519
    move-object/from16 v1, p0

    .line 520
    .line 521
    move-object/from16 v2, v16

    .line 522
    .line 523
    move-wide v3, v8

    .line 524
    move-object v8, v10

    .line 525
    move-object v9, v0

    .line 526
    invoke-direct/range {v1 .. v9}, Lcom/appsflyer/internal/AFf1qSDK;->getMonetizationNetwork(Ljava/lang/String;JLcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFi1vSDK;Lcom/appsflyer/internal/AFi1ySDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    instance-of v1, v1, Ljava/io/InterruptedIOException;

    .line 534
    .line 535
    if-nez v1, :cond_b

    .line 536
    .line 537
    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFf1pSDK;

    .line 538
    .line 539
    return-object v0

    .line 540
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    check-cast v0, Ljava/io/InterruptedIOException;

    .line 545
    .line 546
    throw v0
.end method

.method private getCurrencyIso4217Code(Ljava/lang/String;JLcom/appsflyer/internal/AFi1ySDK;Ljava/lang/String;Lcom/appsflyer/internal/AFe1wSDK;)V
    .locals 11
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/appsflyer/internal/AFe1wSDK;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/appsflyer/internal/AFi1ySDK;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/AFe1wSDK<",
            "Lcom/appsflyer/internal/AFi1vSDK;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p6, :cond_0

    .line 3
    .line 4
    invoke-virtual/range {p6 .. p6}, Lcom/appsflyer/internal/AFe1wSDK;->getBody()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/appsflyer/internal/AFi1vSDK;

    .line 9
    .line 10
    move-object v7, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v7, v0

    .line 13
    :goto_0
    if-eqz p5, :cond_1

    .line 14
    .line 15
    move-object/from16 v9, p5

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object v9, v0

    .line 19
    :goto_1
    const/4 v10, 0x0

    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    move-wide v4, p2

    .line 23
    move-object/from16 v6, p6

    .line 24
    .line 25
    move-object v8, p4

    .line 26
    invoke-direct/range {v2 .. v10}, Lcom/appsflyer/internal/AFf1qSDK;->getMonetizationNetwork(Ljava/lang/String;JLcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFi1vSDK;Lcom/appsflyer/internal/AFi1ySDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private getMonetizationNetwork(Ljava/lang/String;JLcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFi1vSDK;Lcom/appsflyer/internal/AFi1ySDK;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 16
    .param p4    # Lcom/appsflyer/internal/AFe1wSDK;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/appsflyer/internal/AFe1wSDK<",
            "*>;",
            "Lcom/appsflyer/internal/AFi1vSDK;",
            "Lcom/appsflyer/internal/AFi1ySDK;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    if-eqz v0, :cond_0

    .line 2
    iget-object v3, v0, Lcom/appsflyer/internal/AFe1wSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFd1aSDK;

    .line 3
    iget-wide v3, v3, Lcom/appsflyer/internal/AFd1aSDK;->getMediationNetwork:J

    .line 4
    invoke-virtual/range {p4 .. p4}, Lcom/appsflyer/internal/AFe1wSDK;->getStatusCode()I

    move-result v0

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :goto_1
    instance-of v0, v2, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 7
    check-cast v2, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;

    invoke-virtual {v2}, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;->getMetrics()Lcom/appsflyer/internal/AFd1aSDK;

    move-result-object v2

    iget-wide v2, v2, Lcom/appsflyer/internal/AFd1aSDK;->getMediationNetwork:J

    move-object v15, v0

    move-wide v8, v2

    goto :goto_2

    :cond_1
    move-object v15, v2

    move-wide v8, v3

    :goto_2
    if-eqz v1, :cond_2

    .line 8
    iget-object v0, v1, Lcom/appsflyer/internal/AFi1vSDK;->AFAdRevenueData:Ljava/lang/String;

    :goto_3
    move-object v6, v0

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 9
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v10, v0, p2

    .line 10
    new-instance v0, Lcom/appsflyer/internal/AFi1wSDK;

    move-object v5, v0

    move-object/from16 v7, p1

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v5 .. v15}, Lcom/appsflyer/internal/AFi1wSDK;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/appsflyer/internal/AFi1ySDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appsflyer/internal/AFf1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFi1wSDK;

    return-void
.end method


# virtual methods
.method public final AFAdRevenueData()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x5dc

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMonetizationNetwork()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final getRevenue()Lcom/appsflyer/internal/AFe1uSDK;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1qSDK;->component3()Lcom/appsflyer/internal/AFf1pSDK;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/appsflyer/internal/AFf1qSDK;->component3:Lcom/appsflyer/internal/AFf1pSDK;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    sget-object v1, Lcom/appsflyer/internal/AFf1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFf1pSDK;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1uSDK;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1uSDK;

    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    :goto_0
    move-object v4, v0

    .line 19
    goto :goto_1

    .line 20
    :catch_1
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 23
    .line 24
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFg1cSDK;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const-string v3, "RC update config failed"

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFf1pSDK;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/appsflyer/internal/AFf1qSDK;->component3:Lcom/appsflyer/internal/AFf1pSDK;

    .line 37
    .line 38
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    .line 39
    .line 40
    return-object v0

    .line 41
    :catch_2
    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFf1pSDK;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/appsflyer/internal/AFf1qSDK;->component3:Lcom/appsflyer/internal/AFf1pSDK;

    .line 44
    .line 45
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    .line 46
    .line 47
    return-object v0
.end method

.class final Lcom/appsflyer/internal/AFj1uSDK$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFj1uSDK;->getMonetizationNetwork(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic getMediationNetwork:Landroid/content/Context;

.field private synthetic getRevenue:Lcom/appsflyer/internal/AFj1uSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFj1uSDK;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getMediationNetwork:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iput-wide v1, v0, Lcom/appsflyer/internal/AFj1tSDK;->component1:J

    .line 8
    .line 9
    sget-object v1, Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;->getRevenue:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    .line 10
    .line 11
    iput-object v1, v0, Lcom/appsflyer/internal/AFj1tSDK;->component4:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    .line 12
    .line 13
    new-instance v1, Lcom/appsflyer/internal/AFj1tSDK$1;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFj1tSDK$1;-><init>(Lcom/appsflyer/internal/AFj1tSDK;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "content://"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/appsflyer/internal/AFj1uSDK;->getCurrencyIso4217Code:Landroid/content/pm/ProviderInfo;

    .line 31
    .line 32
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "/transaction_id"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getMediationNetwork:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0, v2}, Lcom/appsflyer/internal/AFj1uSDK;->B_(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v3, "app_id="

    .line 61
    .line 62
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getMediationNetwork:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v3, 0x0

    .line 81
    move-object v1, v0

    .line 82
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 83
    .line 84
    .line 85
    move-result-object v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 87
    .line 88
    .line 89
    goto :goto_6

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    move-object v5, v1

    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    move-object v5, v1

    .line 95
    goto :goto_2

    .line 96
    :catch_1
    move-exception v1

    .line 97
    move-object v5, v1

    .line 98
    goto :goto_3

    .line 99
    :goto_0
    :try_start_1
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 100
    .line 101
    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 102
    .line 103
    const-string v4, "Error to get data from providerClient "

    .line 104
    .line 105
    const/4 v7, 0x1

    .line 106
    const/4 v8, 0x0

    .line 107
    const/4 v6, 0x0

    .line 108
    invoke-virtual/range {v2 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :catchall_1
    move-exception v1

    .line 116
    goto :goto_4

    .line 117
    :goto_2
    :try_start_2
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 118
    .line 119
    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 120
    .line 121
    const-string v4, "Failed to query unstable content providerClient"

    .line 122
    .line 123
    const/4 v7, 0x1

    .line 124
    const/4 v8, 0x0

    .line 125
    const/4 v6, 0x0

    .line 126
    invoke-virtual/range {v2 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :goto_3
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 131
    .line 132
    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 133
    .line 134
    const-string v4, "Failed to acquire unstable content providerClient"

    .line 135
    .line 136
    const/4 v7, 0x1

    .line 137
    const/4 v8, 0x0

    .line 138
    const/4 v6, 0x0

    .line 139
    invoke-virtual/range {v2 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :goto_4
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 144
    .line 145
    .line 146
    throw v1

    .line 147
    :cond_0
    :goto_5
    const/4 v1, 0x0

    .line 148
    :goto_6
    const-string v0, "response"

    .line 149
    .line 150
    if-eqz v1, :cond_3

    .line 151
    .line 152
    const-string/jumbo v2, "transaction_id"

    .line 153
    .line 154
    .line 155
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    const/4 v3, -0x1

    .line 160
    if-ne v2, v3, :cond_1

    .line 161
    .line 162
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 163
    .line 164
    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 165
    .line 166
    const-string v4, "Wrong column name"

    .line 167
    .line 168
    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 172
    .line 173
    iget-object v2, v2, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 174
    .line 175
    const-string v3, "FEATURE_NOT_SUPPORTED"

    .line 176
    .line 177
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 182
    .line 183
    iget-object v3, v3, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 184
    .line 185
    const-string v4, "OK"

    .line 186
    .line 187
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_2

    .line 195
    .line 196
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 201
    .line 202
    .line 203
    if-eqz v0, :cond_2

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-nez v2, :cond_2

    .line 210
    .line 211
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 212
    .line 213
    iget-object v2, v2, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 214
    .line 215
    const-string v3, "referrer"

    .line 216
    .line 217
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    :cond_2
    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 221
    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_3
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 225
    .line 226
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1cSDK;

    .line 227
    .line 228
    const-string v3, "ContentProvider query failed, got null Cursor"

    .line 229
    .line 230
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 234
    .line 235
    iget-object v1, v1, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 236
    .line 237
    const-string v2, "SERVICE_UNAVAILABLE"

    .line 238
    .line 239
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    :goto_8
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 243
    .line 244
    iget-object v1, v0, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 245
    .line 246
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getMediationNetwork:Landroid/content/Context;

    .line 247
    .line 248
    iget-object v0, v0, Lcom/appsflyer/internal/AFj1uSDK;->getCurrencyIso4217Code:Landroid/content/pm/ProviderInfo;

    .line 249
    .line 250
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 251
    .line 252
    invoke-static {v2, v0}, Lcom/appsflyer/internal/AFj1kSDK;->AFAdRevenueData(Landroid/content/Context;Ljava/lang/String;)J

    .line 253
    .line 254
    .line 255
    move-result-wide v2

    .line 256
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    const-string v2, "api_ver"

    .line 261
    .line 262
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 266
    .line 267
    iget-object v1, v0, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 268
    .line 269
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getMediationNetwork:Landroid/content/Context;

    .line 270
    .line 271
    iget-object v0, v0, Lcom/appsflyer/internal/AFj1uSDK;->getCurrencyIso4217Code:Landroid/content/pm/ProviderInfo;

    .line 272
    .line 273
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {v2, v0}, Lcom/appsflyer/internal/AFj1kSDK;->getRevenue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    const-string v2, "api_ver_name"

    .line 280
    .line 281
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1uSDK$5;->getRevenue:Lcom/appsflyer/internal/AFj1uSDK;

    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork()V

    .line 287
    .line 288
    .line 289
    return-void
.end method

.class public final Lcom/appsflyer/internal/AFj1rSDK;
.super Lcom/appsflyer/internal/AFi1cSDK;
.source ""


# instance fields
.field private final getMonetizationNetwork:Ljava/util/concurrent/ExecutorService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFc1oSDK;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFc1oSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "preload"

    .line 13
    .line 14
    const-string v1, "samsung"

    .line 15
    .line 16
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/appsflyer/internal/AFi1cSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/AFc1oSDK;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    return-void
.end method

.method private static C_(Landroid/database/Cursor;)Z
    .locals 6

    .line 1
    const-string v0, "RESULT"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 20
    .line 21
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    const/4 v5, 0x0

    .line 25
    const-string v2, "No such column"

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v0 .. v5}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public static synthetic a(Lcom/appsflyer/internal/AFj1rSDK;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFj1rSDK;->getRevenue(Lcom/appsflyer/internal/AFj1rSDK;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getCurrencyIso4217Code(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.samsung.android.mapsagent.providers.apptracking"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    return v1
.end method

.method private final getMediationNetwork(Landroid/content/Context;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFi1cSDK;->getRevenue()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 9
    .line 10
    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    .line 11
    .line 12
    const/4 v6, 0x4

    .line 13
    const/4 v7, 0x0

    .line 14
    const-string v4, "Referrer collection disallowed by counter."

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    invoke-static {p1}, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 28
    .line 29
    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    .line 30
    .line 31
    const/4 v6, 0x4

    .line 32
    const/4 v7, 0x0

    .line 33
    const-string v4, "Referrer collection disallowed by missing content provider."

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_1
    const/4 p1, 0x1

    .line 41
    return p1
.end method

.method private static final getRevenue(Lcom/appsflyer/internal/AFj1rSDK;Landroid/content/Context;)V
    .locals 11

    .line 1
    const-string v0, "com.samsung.android.mapsagent"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iput-wide v2, p0, Lcom/appsflyer/internal/AFj1tSDK;->component1:J

    .line 16
    .line 17
    sget-object v2, Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;->getRevenue:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    .line 18
    .line 19
    iput-object v2, p0, Lcom/appsflyer/internal/AFj1tSDK;->component4:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    .line 20
    .line 21
    new-instance v2, Lcom/appsflyer/internal/AFj1tSDK$1;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/appsflyer/internal/AFj1tSDK$1;-><init>(Lcom/appsflyer/internal/AFj1tSDK;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    :try_start_0
    const-string v3, "content://com.samsung.android.mapsagent.providers.apptracking/info"

    .line 31
    .line 32
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 41
    .line 42
    .line 43
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const-string v4, "appsflyer001"

    .line 51
    .line 52
    filled-new-array {v4}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    move-object v4, v3

    .line 59
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 60
    .line 61
    .line 62
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    move-object v6, p1

    .line 66
    move-object p1, v3

    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :cond_0
    move-object v4, v2

    .line 70
    :goto_0
    if-eqz v4, :cond_a

    .line 71
    .line 72
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_1

    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_1
    invoke-static {v4}, Lcom/appsflyer/internal/AFj1rSDK;->C_(Landroid/database/Cursor;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_9

    .line 85
    .line 86
    const-string v5, "INSTALLED_TIME_TEXT"

    .line 87
    .line 88
    invoke-static {v4, v5}, Lcom/appsflyer/internal/AFj1eSDK;->P_(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    const-string/jumbo v6, "yy:MM:dd:hh:mm"

    .line 95
    .line 96
    .line 97
    invoke-static {v5, v6}, Lcom/appsflyer/internal/AFj1jSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    if-eqz v5, :cond_2

    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 104
    .line 105
    .line 106
    move-result-wide v5

    .line 107
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 108
    .line 109
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    goto :goto_1

    .line 118
    :catchall_1
    move-exception p1

    .line 119
    move-object v6, p1

    .line 120
    move-object p1, v3

    .line 121
    move-object v2, v4

    .line 122
    goto/16 :goto_5

    .line 123
    .line 124
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 127
    .line 128
    .line 129
    move-result-wide v5

    .line 130
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 131
    .line 132
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string v7, "install_begin_ts"

    .line 136
    .line 137
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :cond_3
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v5, "MAPS_ID"

    .line 150
    .line 151
    invoke-static {v4, v5}, Lcom/appsflyer/internal/AFj1eSDK;->P_(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    if-eqz v5, :cond_4

    .line 156
    .line 157
    const-string v6, "maps_id"

    .line 158
    .line 159
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    :cond_4
    const-string v5, "DEVICE_NAME"

    .line 163
    .line 164
    invoke-static {v4, v5}, Lcom/appsflyer/internal/AFj1eSDK;->P_(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    if-eqz v5, :cond_5

    .line 169
    .line 170
    const-string v6, "device_model"

    .line 171
    .line 172
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    :cond_5
    const-string v5, "COUNTRY"

    .line 176
    .line 177
    invoke-static {v4, v5}, Lcom/appsflyer/internal/AFj1eSDK;->P_(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    if-eqz v5, :cond_6

    .line 182
    .line 183
    const-string v6, "country"

    .line 184
    .line 185
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    :cond_6
    const-string v5, "CAMPAIGN_ID"

    .line 189
    .line 190
    invoke-static {v4, v5}, Lcom/appsflyer/internal/AFj1eSDK;->P_(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    if-eqz v5, :cond_7

    .line 195
    .line 196
    const-string v6, "campaign_id"

    .line 197
    .line 198
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    :cond_7
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-nez v5, :cond_8

    .line 206
    .line 207
    iget-object v5, p0, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 208
    .line 209
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string v6, "samsung_custom"

    .line 213
    .line 214
    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    :cond_8
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 218
    .line 219
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string v5, "api_ver"

    .line 223
    .line 224
    invoke-static {p1, v0}, Lcom/appsflyer/internal/AFj1kSDK;->AFAdRevenueData(Landroid/content/Context;Ljava/lang/String;)J

    .line 225
    .line 226
    .line 227
    move-result-wide v6

    .line 228
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    iget-object v2, p0, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 236
    .line 237
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const-string v1, "api_ver_name"

    .line 241
    .line 242
    invoke-static {p1, v0}, Lcom/appsflyer/internal/AFj1kSDK;->getRevenue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_9
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 251
    .line 252
    sget-object v6, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    .line 253
    .line 254
    const-string v7, "App was not installed via Samsung MAPS."

    .line 255
    .line 256
    const/4 v9, 0x4

    .line 257
    const/4 v10, 0x0

    .line 258
    const/4 v8, 0x0

    .line 259
    invoke-static/range {v5 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    .line 261
    .line 262
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 263
    .line 264
    .line 265
    if-eqz v3, :cond_d

    .line 266
    .line 267
    :goto_3
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    .line 268
    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_a
    :goto_4
    :try_start_3
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 272
    .line 273
    sget-object v6, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    .line 274
    .line 275
    const-string v7, "Content provider returned no data"

    .line 276
    .line 277
    const/4 v9, 0x4

    .line 278
    const/4 v10, 0x0

    .line 279
    const/4 v8, 0x0

    .line 280
    invoke-static/range {v5 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 281
    .line 282
    .line 283
    if-eqz v4, :cond_b

    .line 284
    .line 285
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 286
    .line 287
    .line 288
    :cond_b
    if-eqz v3, :cond_d

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :catchall_2
    move-exception p1

    .line 292
    move-object v6, p1

    .line 293
    move-object p1, v2

    .line 294
    :goto_5
    :try_start_4
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 295
    .line 296
    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    .line 297
    .line 298
    const-string v5, "Error while collecting referrer data"

    .line 299
    .line 300
    const/4 v9, 0x1

    .line 301
    const/4 v10, 0x1

    .line 302
    const/4 v7, 0x0

    .line 303
    const/4 v8, 0x0

    .line 304
    invoke-virtual/range {v3 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 305
    .line 306
    .line 307
    if-eqz v2, :cond_c

    .line 308
    .line 309
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 310
    .line 311
    .line 312
    :cond_c
    if-eqz p1, :cond_d

    .line 313
    .line 314
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    .line 315
    .line 316
    .line 317
    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork()V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :catchall_3
    move-exception p0

    .line 322
    if-eqz v2, :cond_e

    .line 323
    .line 324
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 325
    .line 326
    .line 327
    :cond_e
    if-eqz p1, :cond_f

    .line 328
    .line 329
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    .line 330
    .line 331
    .line 332
    :cond_f
    throw p0
.end method


# virtual methods
.method protected final AFAdRevenueData()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getMonetizationNetwork(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFj1rSDK;->getMediationNetwork(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    new-instance v1, Lcom/appsflyer/internal/e0;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/e0;-><init>(Lcom/appsflyer/internal/AFj1rSDK;Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.class public Lcom/adjust/sdk/meta/MetaReferrerClient;
.super Ljava/lang/Object;
.source "MetaReferrerClient.java"


# static fields
.field private static final COLUMN_ACTUAL_TIMESTAMP:Ljava/lang/String; = "actual_timestamp"

.field private static final COLUMN_INSTALL_REFERRER:Ljava/lang/String; = "install_referrer"

.field private static final COLUMN_IS_CT:Ljava/lang/String; = "is_ct"

.field private static final FACEBOOK_REFERRER_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.facebook.katana.provider.InstallReferrerProvider"

.field private static final FBLITE_REFERRER_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.facebook.lite.provider.InstallReferrerProvider"

.field private static final INSTAGRAM_REFERRER_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.instagram.contentprovider.InstallReferrerProvider"

.field private static final shouldTryToRead:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/adjust/sdk/meta/MetaReferrerClient;->shouldTryToRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getMetaInstallReferrer(Landroid/content/Context;Ljava/lang/String;Lcom/adjust/sdk/ILogger;Z)Lcom/adjust/sdk/meta/MetaInstallReferrerResult;
    .locals 11

    .line 1
    const-string v0, "actual_timestamp"

    .line 2
    .line 3
    const-string v1, "is_ct"

    .line 4
    .line 5
    const-string v2, "install_referrer"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    sget-object p3, Lcom/adjust/sdk/meta/MetaReferrerClient;->shouldTryToRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    new-array p0, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string p1, "Shouldn\'t try to read Meta Install referrer"

    .line 21
    .line 22
    invoke-interface {p2, p1, p0}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    new-array p0, v3, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string p1, "Can\'t read Meta Install referrer with null or empty FBAppId"

    .line 40
    .line 41
    invoke-interface {p2, p1, p0}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;

    .line 45
    .line 46
    invoke-direct {p0, p1}, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_1
    const/4 p3, 0x0

    .line 51
    :try_start_0
    const-string v4, "com.facebook.katana.provider.InstallReferrerProvider"

    .line 52
    .line 53
    invoke-static {p0, v4}, Lcom/adjust/sdk/meta/MetaReferrerClient;->resolveContentProvider(Landroid/content/Context;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v5, "content://com.facebook.katana.provider.InstallReferrerProvider/"

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    :goto_0
    move-object v6, v4

    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto/16 :goto_7

    .line 84
    .line 85
    :catch_0
    move-exception p0

    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_2
    const-string v4, "com.instagram.contentprovider.InstallReferrerProvider"

    .line 89
    .line 90
    invoke-static {p0, v4}, Lcom/adjust/sdk/meta/MetaReferrerClient;->resolveContentProvider(Landroid/content/Context;Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_3

    .line 95
    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v5, "content://com.instagram.contentprovider.InstallReferrerProvider/"

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    goto :goto_0

    .line 118
    :cond_3
    const-string v4, "com.facebook.lite.provider.InstallReferrerProvider"

    .line 119
    .line 120
    invoke-static {p0, v4}, Lcom/adjust/sdk/meta/MetaReferrerClient;->resolveContentProvider(Landroid/content/Context;Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_9

    .line 125
    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v5, "content://com.facebook.lite.provider.InstallReferrerProvider/"

    .line 132
    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    goto :goto_0

    .line 148
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    const/4 v9, 0x0

    .line 157
    const/4 v10, 0x0

    .line 158
    const/4 v8, 0x0

    .line 159
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    if-eqz p3, :cond_7

    .line 164
    .line 165
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-nez p0, :cond_4

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_4
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 189
    .line 190
    .line 191
    move-result-wide v1

    .line 192
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    const/4 v0, 0x1

    .line 197
    if-ne p1, v0, :cond_5

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_5
    move v0, v3

    .line 201
    :goto_2
    const-string p1, "InstallReferrerMeta reads installReferrer[%s] actualTimestampInSec[%d] isClick[%b]"

    .line 202
    .line 203
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    filled-new-array {p0, v4, v5}, [Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-interface {p2, p1, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    invoke-static {p0}, Lcom/adjust/sdk/meta/MetaReferrerClient;->isValidReferrer(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_6

    .line 223
    .line 224
    sget-object p1, Lcom/adjust/sdk/meta/MetaReferrerClient;->shouldTryToRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    .line 226
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    .line 228
    .line 229
    new-instance p1, Lcom/adjust/sdk/meta/MetaInstallReferrerDetails;

    .line 230
    .line 231
    invoke-direct {p1, p0, v1, v2, v0}, Lcom/adjust/sdk/meta/MetaInstallReferrerDetails;-><init>(Ljava/lang/String;JZ)V

    .line 232
    .line 233
    .line 234
    new-instance p0, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;

    .line 235
    .line 236
    invoke-direct {p0, p1}, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;-><init>(Lcom/adjust/sdk/meta/MetaInstallReferrerDetails;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .line 238
    .line 239
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 240
    .line 241
    .line 242
    return-object p0

    .line 243
    :cond_6
    :try_start_1
    const-string p0, "Invalid Meta Install Referrer"

    .line 244
    .line 245
    new-array p1, v3, [Ljava/lang/Object;

    .line 246
    .line 247
    invoke-interface {p2, p0, p1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    .line 249
    .line 250
    :goto_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 251
    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_7
    :goto_4
    :try_start_2
    const-string p0, "Fail to read Meta Install Referrer for FB AppId [%s]"

    .line 255
    .line 256
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    new-array p1, v3, [Ljava/lang/Object;

    .line 265
    .line 266
    invoke-interface {p2, p0, p1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    new-instance p1, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;

    .line 270
    .line 271
    invoke-direct {p1, p0}, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    .line 273
    .line 274
    if-eqz p3, :cond_8

    .line 275
    .line 276
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 277
    .line 278
    .line 279
    :cond_8
    return-object p1

    .line 280
    :cond_9
    :try_start_3
    const-string p0, "Failed to find Meta Install Referrer content provider"

    .line 281
    .line 282
    new-array p1, v3, [Ljava/lang/Object;

    .line 283
    .line 284
    invoke-interface {p2, p0, p1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    new-instance p1, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;

    .line 288
    .line 289
    invoke-direct {p1, p0}, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    .line 291
    .line 292
    return-object p1

    .line 293
    :goto_5
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v0, "Meta Install Referrer error "

    .line 299
    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    new-array p1, v3, [Ljava/lang/Object;

    .line 315
    .line 316
    invoke-interface {p2, p0, p1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 317
    .line 318
    .line 319
    if-eqz p3, :cond_a

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_a
    :goto_6
    new-instance p1, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;

    .line 323
    .line 324
    invoke-direct {p1, p0}, Lcom/adjust/sdk/meta/MetaInstallReferrerResult;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    return-object p1

    .line 328
    :goto_7
    if-eqz p3, :cond_b

    .line 329
    .line 330
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 331
    .line 332
    .line 333
    :cond_b
    throw p0
.end method

.method private static isValidReferrer(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method private static resolveContentProvider(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    :catch_0
    :cond_0
    return v0
.end method

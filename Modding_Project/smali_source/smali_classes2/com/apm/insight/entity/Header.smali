.class public final Lcom/apm/insight/entity/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "aid"

    .line 2
    .line 3
    const-string/jumbo v1, "update_version_code"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "version_code"

    .line 7
    .line 8
    .line 9
    const-string v3, "manifest_version_code"

    .line 10
    .line 11
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/apm/insight/entity/Header;->a:[Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/apm/insight/entity/Header;->d:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    sput v0, Lcom/apm/insight/entity/Header;->e:I

    .line 22
    .line 23
    sput v0, Lcom/apm/insight/entity/Header;->f:I

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/apm/insight/entity/Header;->b:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public static a(J)Lcom/apm/insight/entity/Header;
    .locals 4

    .line 5
    const-string v0, "aid"

    invoke-static {}, Lcom/apm/insight/runtime/o;->a()Lcom/apm/insight/runtime/o;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 7
    :cond_0
    invoke-virtual {v1, p0, p1}, Lcom/apm/insight/runtime/o;->a(J)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x115c

    .line 10
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    :cond_2
    new-instance p1, Lcom/apm/insight/entity/Header;

    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apm/insight/entity/Header;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/apm/insight/entity/Header;->a(Landroid/content/Context;)Lcom/apm/insight/entity/Header;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/apm/insight/entity/Header;->c()Lorg/json/JSONObject;

    .line 14
    :try_start_1
    iget-object v0, p1, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 15
    const-string v1, "errHeader"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :catchall_0
    :goto_1
    invoke-static {p1}, Lcom/apm/insight/entity/Header;->b(Lcom/apm/insight/entity/Header;)V

    .line 17
    invoke-virtual {p1, p0}, Lcom/apm/insight/entity/Header;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/apm/insight/entity/Header;
    .locals 3

    .line 1
    new-instance v0, Lcom/apm/insight/entity/Header;

    invoke-direct {v0, p0}, Lcom/apm/insight/entity/Header;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object p0, v0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 3
    :try_start_0
    const-string v1, "sdk_version"

    const/16 v2, 0x4e79

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v1, "sdk_version_name"

    const-string v2, "2008-20250701130429"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static a(Lcom/apm/insight/entity/Header;)Lcom/apm/insight/entity/Header;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 49
    invoke-static {v0}, Lcom/apm/insight/entity/Header;->addRuntimeHeader(Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public static a()Z
    .locals 2

    .line 18
    sget v0, Lcom/apm/insight/entity/Header;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 19
    invoke-static {}, Lcom/apm/insight/entity/Header;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput v0, Lcom/apm/insight/entity/Header;->e:I

    .line 20
    :cond_0
    sget v0, Lcom/apm/insight/entity/Header;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static addOtherHeader(Lorg/json/JSONObject;)V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lcom/apm/insight/l/d;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const-string v1, "MIUI-"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Lcom/apm/insight/l/d;->c()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    const-string v1, "FLYME-"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-static {}, Lcom/apm/insight/l/d;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/apm/insight/l/d;->a(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    const-string v2, "EMUI-"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "-"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_4
    :goto_0
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-lez v1, :cond_5

    .line 72
    .line 73
    const-string v1, "rom"

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    :cond_5
    const-string v0, "rom_version"

    .line 83
    .line 84
    invoke-static {}, Lcom/apm/insight/l/l;->a()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    :catchall_0
    :try_start_1
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 104
    .line 105
    const/16 v2, 0x78

    .line 106
    .line 107
    if-eq v1, v2, :cond_8

    .line 108
    .line 109
    const/16 v2, 0xf0

    .line 110
    .line 111
    if-eq v1, v2, :cond_7

    .line 112
    .line 113
    const/16 v2, 0x140

    .line 114
    .line 115
    if-eq v1, v2, :cond_6

    .line 116
    .line 117
    const-string v2, "mdpi"

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    const-string/jumbo v2, "xhdpi"

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    const-string v2, "hdpi"

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_8
    const-string v2, "ldpi"

    .line 128
    .line 129
    :goto_1
    const-string v3, "density_dpi"

    .line 130
    .line 131
    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    const-string v1, "display_density"

    .line 135
    .line 136
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    const-string v1, "resolution"

    .line 140
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 147
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string/jumbo v3, "x"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 158
    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    .line 168
    .line 169
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_9

    .line 192
    .line 193
    const-string v1, "language"

    .line 194
    .line 195
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    :cond_9
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    const v1, 0x36ee80

    .line 207
    .line 208
    .line 209
    div-int/2addr v0, v1

    .line 210
    const/16 v1, -0xc

    .line 211
    .line 212
    if-ge v0, v1, :cond_a

    .line 213
    .line 214
    move v0, v1

    .line 215
    :cond_a
    const/16 v1, 0xc

    .line 216
    .line 217
    if-le v0, v1, :cond_b

    .line 218
    .line 219
    move v0, v1

    .line 220
    :cond_b
    const-string/jumbo v1, "timezone"

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 224
    .line 225
    .line 226
    :catch_1
    :try_start_3
    const-string v0, "os"

    .line 227
    .line 228
    const-string v1, "Android"

    .line 229
    .line 230
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    .line 232
    .line 233
    const-string v0, "device_id"

    .line 234
    .line 235
    invoke-static {}, Lcom/apm/insight/e;->c()Lcom/apm/insight/runtime/g;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lcom/apm/insight/runtime/g;->a()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    .line 245
    .line 246
    const-string v0, "os_version"

    .line 247
    .line 248
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 249
    .line 250
    const-string v2, "."

    .line 251
    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_c

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v1, ".0"

    .line 268
    .line 269
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    :goto_2
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    .line 278
    .line 279
    const-string v0, "os_api"

    .line 280
    .line 281
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 282
    .line 283
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 284
    .line 285
    .line 286
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 287
    .line 288
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 289
    .line 290
    if-nez v0, :cond_d

    .line 291
    .line 292
    move-object v0, v1

    .line 293
    goto :goto_3

    .line 294
    :cond_d
    if-eqz v1, :cond_e

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-nez v2, :cond_e

    .line 301
    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const/16 v3, 0x20

    .line 311
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    goto :goto_3

    .line 323
    :catchall_1
    move-exception v0

    .line 324
    goto :goto_4

    .line 325
    :cond_e
    :goto_3
    const-string v2, "device_model"

    .line 326
    .line 327
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    .line 329
    .line 330
    const-string v0, "device_brand"

    .line 331
    .line 332
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    .line 334
    .line 335
    const-string v0, "device_manufacturer"

    .line 336
    .line 337
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    .line 341
    .line 342
    const-string v0, "cpu_abi"

    .line 343
    .line 344
    invoke-static {}, Lcom/apm/insight/entity/Header;->g()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    .line 350
    .line 351
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    const-string v2, "package"

    .line 360
    .line 361
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    const/4 v3, 0x0

    .line 369
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 374
    .line 375
    if-eqz v2, :cond_10

    .line 376
    .line 377
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 378
    .line 379
    const-string v3, "display_name"

    .line 380
    .line 381
    if-lez v2, :cond_f

    .line 382
    .line 383
    :try_start_4
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    .line 389
    .line 390
    goto :goto_5

    .line 391
    :cond_f
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 402
    .line 403
    .line 404
    goto :goto_5

    .line 405
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 406
    .line 407
    .line 408
    :cond_10
    :goto_5
    invoke-static {p0}, Lcom/apm/insight/entity/d;->a(Lorg/json/JSONObject;)V

    .line 409
    .line 410
    .line 411
    return-void
.end method

.method public static addRuntimeHeader(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "access"

    .line 2
    .line 3
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/apm/insight/l/k;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "phone"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    const-string v2, "carrier"

    .line 44
    .line 45
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    const-string v1, "mcc_mnc"

    .line 62
    .line 63
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/apm/insight/entity/Header;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/apm/insight/entity/Header;->a(Landroid/content/Context;)Lcom/apm/insight/entity/Header;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/apm/insight/entity/Header;->a(Lcom/apm/insight/entity/Header;)Lcom/apm/insight/entity/Header;

    .line 3
    invoke-static {p0}, Lcom/apm/insight/entity/Header;->b(Lcom/apm/insight/entity/Header;)V

    .line 4
    invoke-virtual {p0}, Lcom/apm/insight/entity/Header;->c()Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p0}, Lcom/apm/insight/entity/Header;->d()Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p0}, Lcom/apm/insight/entity/Header;->e()Lorg/json/JSONObject;

    return-object p0
.end method

.method public static b(Lcom/apm/insight/entity/Header;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 12
    invoke-static {p0}, Lcom/apm/insight/entity/Header;->addOtherHeader(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static b()Z
    .locals 2

    .line 7
    sget v0, Lcom/apm/insight/entity/Header;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8
    invoke-static {}, Lcom/apm/insight/entity/Header;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput v0, Lcom/apm/insight/entity/Header;->f:I

    .line 9
    :cond_0
    sget v0, Lcom/apm/insight/entity/Header;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Lorg/json/JSONObject;)Z
    .locals 2

    .line 10
    const-string/jumbo v0, "unauthentic_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public static c(Lorg/json/JSONObject;)Z
    .locals 1

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "app_version"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "version_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "version_code"

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "update_version_code"

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Lorg/json/JSONObject;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-string v1, "aid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 7
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :catchall_0
    :cond_3
    :goto_0
    return v0
.end method

.method private static g()Ljava/lang/String;
    .locals 5

    .line 1
    const-string/jumbo v0, "unknown"

    .line 2
    .line 3
    .line 4
    sget-object v1, Lcom/apm/insight/entity/Header;->d:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_4

    .line 7
    .line 8
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 14
    .line 15
    array-length v2, v2

    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 20
    .line 21
    array-length v4, v3

    .line 22
    if-ge v2, v4, :cond_2

    .line 23
    .line 24
    aget-object v4, v3, v2

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    array-length v3, v3

    .line 30
    add-int/lit8 v3, v3, -0x1

    .line 31
    .line 32
    if-eq v2, v3, :cond_0

    .line 33
    .line 34
    const-string v3, ", "

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v1

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    sput-object v0, Lcom/apm/insight/entity/Header;->d:Ljava/lang/String;

    .line 63
    .line 64
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sput-object v1, Lcom/apm/insight/entity/Header;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :goto_2
    invoke-static {v1}, Lcom/apm/insight/a;->b(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lcom/apm/insight/entity/Header;->d:Ljava/lang/String;

    .line 75
    .line 76
    :cond_4
    :goto_3
    sget-object v0, Lcom/apm/insight/entity/Header;->d:Ljava/lang/String;

    .line 77
    .line 78
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 9
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 28
    const-string v0, "manifest_version_code"

    const-string/jumbo v1, "version_code"

    const-string/jumbo v2, "version_name"

    const-string v3, "iid"

    if-nez p1, :cond_0

    .line 29
    :try_start_0
    iget-object p1, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    return-object p1

    .line 30
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 31
    iget-object v6, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 32
    iget-object v6, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 33
    :cond_2
    sget-object v4, Lcom/apm/insight/entity/Header;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x4

    if-ge v5, v6, :cond_4

    aget-object v6, v4, v5

    .line 34
    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v7, :cond_3

    .line 35
    :try_start_1
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 36
    iget-object v8, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 37
    :catchall_0
    :try_start_2
    iget-object v7, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 38
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v4, :cond_5

    .line 39
    :try_start_3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 40
    iget-object v4, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    :catchall_1
    :cond_5
    :try_start_4
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    const-string/jumbo v1, "udid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    :cond_6
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    const-string v1, "app_version"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object p1, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 47
    :catchall_2
    :cond_7
    iget-object p1, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    return-object p1
.end method

.method public final a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    return-object p1
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {}, Lcom/apm/insight/e;->a()Lcom/apm/insight/nativecrash/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apm/insight/entity/Header;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    const-string v1, "device_id"

    invoke-static {}, Lcom/apm/insight/e;->c()Lcom/apm/insight/runtime/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apm/insight/runtime/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/apm/insight/e;->a()Lcom/apm/insight/nativecrash/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/b;->f()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v2, v0, v2

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 16
    .line 17
    const-string/jumbo v3, "user_id"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 29
    .line 30
    return-object v0
.end method

.method public final f()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

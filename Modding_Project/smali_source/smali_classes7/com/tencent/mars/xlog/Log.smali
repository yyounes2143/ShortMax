.class public Lcom/tencent/mars/xlog/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mars/xlog/Log$LogInstance;,
        Lcom/tencent/mars/xlog/Log$LogImp;
    }
.end annotation


# static fields
.field public static final LEVEL_DEBUG:I = 0x1

.field public static final LEVEL_ERROR:I = 0x4

.field public static final LEVEL_FATAL:I = 0x5

.field public static final LEVEL_INFO:I = 0x2

.field public static final LEVEL_NONE:I = 0x6

.field public static final LEVEL_VERBOSE:I = 0x0

.field public static final LEVEL_WARNING:I = 0x3

.field private static final SYS_INFO:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "mars.xlog.log"

.field private static debugLog:Lcom/tencent/mars/xlog/Log$LogImp; = null

.field private static level:I = 0x6

.field private static logImp:Lcom/tencent/mars/xlog/Log$LogImp;

.field private static sLogInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/mars/xlog/Log$LogInstance;",
            ">;"
        }
    .end annotation
.end field

.field public static toastSupportContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/mars/xlog/Log$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/mars/xlog/Log$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/mars/xlog/Log;->debugLog:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 7
    .line 8
    sput-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "VERSION.RELEASE:["

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "] VERSION.CODENAME:["

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v2, "] VERSION.INCREMENTAL:["

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v2, "] BOARD:["

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "] DEVICE:["

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v2, "] DISPLAY:["

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v2, "] FINGERPRINT:["

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v2, "] HOST:["

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v2, "] MANUFACTURER:["

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v2, "] MODEL:["

    .line 219
    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v2, "] PRODUCT:["

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    const-string v2, "] TAGS:["

    .line 263
    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string v2, "] TYPE:["

    .line 285
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    const-string v2, "] USER:["

    .line 307
    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v2, "]"

    .line 317
    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .line 327
    .line 328
    goto :goto_0

    .line 329
    :catchall_0
    move-exception v1

    .line 330
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 331
    .line 332
    .line 333
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    sput-object v0, Lcom/tencent/mars/xlog/Log;->SYS_INFO:Ljava/lang/String;

    .line 338
    .line 339
    new-instance v0, Ljava/util/HashMap;

    .line 340
    .line 341
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 342
    .line 343
    .line 344
    sput-object v0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    .line 345
    .line 346
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

.method static synthetic a()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mars/xlog/Log;->level:I

    .line 2
    .line 3
    return v0
.end method

.method public static appenderClose()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/tencent/mars/xlog/Log$LogImp;->appenderClose()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/tencent/mars/xlog/Log;->closeLogInstance(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public static appenderFlush()V
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mars/xlog/Log$LogImp;->appenderFlush(JZ)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/tencent/mars/xlog/Log$LogInstance;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/tencent/mars/xlog/Log$LogInstance;->appenderFlush()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public static appenderFlushSync(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-interface {v0, v1, v2, p0}, Lcom/tencent/mars/xlog/Log$LogImp;->appenderFlush(JZ)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move v1, p0

    .line 6
    move v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move v6, p5

    .line 11
    invoke-interface/range {v0 .. v6}, Lcom/tencent/mars/xlog/Log$LogImp;->appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method static synthetic b()Lcom/tencent/mars/xlog/Log$LogImp;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 2
    .line 3
    return-object v0
.end method

.method public static closeLogInstance(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    sget-object v1, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/tencent/mars/xlog/Log$LogInstance;

    .line 23
    .line 24
    sget-object v2, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 25
    .line 26
    invoke-interface {v2, p0}, Lcom/tencent/mars/xlog/Log$LogImp;->releaseXlogInstance(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v2, -0x1

    .line 30
    .line 31
    invoke-static {v1, v2, v3}, Lcom/tencent/mars/xlog/Log$LogInstance;->a(Lcom/tencent/mars/xlog/Log$LogInstance;J)J

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/mars/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 13

    .line 2
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 4
    const-string p1, ""

    :cond_1
    move-object v12, p1

    .line 5
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    const-wide/16 v1, 0x0

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lcom/tencent/mars/xlog/Log$LogImp;->logD(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/mars/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 13

    .line 2
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 4
    const-string p1, ""

    :cond_1
    move-object v12, p1

    .line 5
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    const-wide/16 v1, 0x0

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lcom/tencent/mars/xlog/Log$LogImp;->logE(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/mars/xlog/Log;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 13

    .line 2
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    if-nez p2, :cond_0

    :goto_0
    move-object v12, p1

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :goto_1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    const-wide/16 v1, 0x0

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lcom/tencent/mars/xlog/Log$LogImp;->logF(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static getImpl()Lcom/tencent/mars/xlog/Log$LogImp;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getLogInstance(Ljava/lang/String;)Lcom/tencent/mars/xlog/Log$LogInstance;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/tencent/mars/xlog/Log$LogInstance;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public static getLogLevel()I
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x6

    .line 13
    return v0
.end method

.method public static getSysInfo()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->SYS_INFO:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 13

    .line 2
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 4
    const-string p1, ""

    :cond_1
    move-object v12, p1

    .line 5
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    const-wide/16 v1, 0x0

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lcom/tencent/mars/xlog/Log$LogImp;->logI(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static openLogInstance(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/tencent/mars/xlog/Log$LogInstance;
    .locals 10

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/tencent/mars/xlog/Log$LogInstance;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v9, Lcom/tencent/mars/xlog/Log$LogInstance;

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    move-object v1, v9

    .line 28
    move v2, p0

    .line 29
    move v3, p1

    .line 30
    move-object v4, p2

    .line 31
    move-object v5, p3

    .line 32
    move-object v6, p4

    .line 33
    move v7, p5

    .line 34
    invoke-direct/range {v1 .. v8}, Lcom/tencent/mars/xlog/Log$LogInstance;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/mars/xlog/Log$1;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lcom/tencent/mars/xlog/Log;->sLogInstanceMap:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {p0, p4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-object v9

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public static varargs printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 15

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    if-gt v0, v1, :cond_2

    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    move-object/from16 v0, p2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, "  "

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static/range {p1 .. p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v14

    .line 51
    sget-object v2, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 52
    .line 53
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 62
    .line 63
    .line 64
    move-result-wide v10

    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 74
    .line 75
    .line 76
    move-result-wide v12

    .line 77
    const-wide/16 v3, 0x0

    .line 78
    .line 79
    const-string v6, ""

    .line 80
    .line 81
    const-string v7, ""

    .line 82
    .line 83
    const/4 v8, 0x0

    .line 84
    move-object v5, p0

    .line 85
    invoke-interface/range {v2 .. v14}, Lcom/tencent/mars/xlog/Log$LogImp;->logE(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method public static setConsoleLogOpen(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-interface {v0, v1, v2, p0}, Lcom/tencent/mars/xlog/Log$LogImp;->setConsoleLogOpen(JZ)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static setLevel(IZ)V
    .locals 2

    .line 1
    sput p0, Lcom/tencent/mars/xlog/Log;->level:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "new log level: "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "mars.xlog.log"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const-string p0, "no jni log level support"

    .line 28
    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public static setLogImp(Lcom/tencent/mars/xlog/Log$LogImp;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    .line 2
    .line 3
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/mars/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 13

    .line 2
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    if-gtz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 4
    const-string p1, ""

    :cond_1
    move-object v12, p1

    .line 5
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    const-wide/16 v1, 0x0

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lcom/tencent/mars/xlog/Log$LogImp;->logV(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tencent/mars/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 13

    .line 2
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mars/xlog/Log$LogImp;->getLogLevel(J)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 4
    const-string p1, ""

    :cond_1
    move-object v12, p1

    .line 5
    sget-object v0, Lcom/tencent/mars/xlog/Log;->logImp:Lcom/tencent/mars/xlog/Log$LogImp;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    const-wide/16 v1, 0x0

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lcom/tencent/mars/xlog/Log$LogImp;->logW(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    :cond_2
    return-void
.end method

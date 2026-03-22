.class final Lio/bidmachine/v3;
.super Ljava/lang/Object;
.source "DeviceParams.java"


# instance fields
.field private final a:Lio/bidmachine/w2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/w2;)V
    .locals 0
    .param p1    # Lio/bidmachine/w2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/v3;->a:Lio/bidmachine/w2;

    .line 5
    .line 6
    return-void
.end method

.method private c(Landroid/content/Context;Llp/d;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Llp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->newBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lio/bidmachine/v3;->e(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/Device$Builder;Llp/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :catchall_0
    const/4 p1, 0x0

    .line 10
    return-object p1
.end method

.method private d(Landroid/content/Context;Lio/bidmachine/TargetingParams;Lio/bidmachine/TargetingParams;Llp/d;Lcom/explorestack/protobuf/adcom/ConnectionType;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Llp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/explorestack/protobuf/adcom/ConnectionType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, v7

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/v3;->f(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/TargetingParams;Lio/bidmachine/TargetingParams;Llp/d;Lcom/explorestack/protobuf/adcom/ConnectionType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    return-object v7

    .line 16
    :catchall_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method private e(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/Device$Builder;Llp/d;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/protobuf/sdk/Device$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Llp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/j2;->j()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    new-instance v2, Lio/bidmachine/r3;

    .line 13
    .line 14
    invoke-direct {v2, p2}, Lio/bidmachine/r3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lio/bidmachine/core/g;->G(Ljava/lang/String;Lio/bidmachine/Executable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lio/bidmachine/j2;->I(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lfr/c;->e(Landroid/content/Context;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->addAllInputlanguage(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {p1}, Lfr/c;->s(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lio/bidmachine/c3;

    .line 45
    .line 46
    invoke-direct {v1, p2}, Lio/bidmachine/c3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lfr/b;->d(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lio/bidmachine/d3;

    .line 57
    .line 58
    invoke-direct {v1, p2}, Lio/bidmachine/d3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lfr/c;->a(Landroid/content/Context;)Ljava/lang/Double;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p2, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setBatterylevel(F)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-static {p1}, Lfr/c;->r(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v1, Lio/bidmachine/e3;

    .line 82
    .line 83
    invoke-direct {v1, p2}, Lio/bidmachine/e3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lfr/c;->t(Landroid/content/Context;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p2, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setDarkmode(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lfr/c;->q(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Lio/bidmachine/f3;

    .line 101
    .line 102
    invoke-direct {v1, p2}, Lio/bidmachine/f3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lfr/c;->u(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance v1, Lio/bidmachine/g3;

    .line 113
    .line 114
    invoke-direct {v1, p2}, Lio/bidmachine/g3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p3}, Llp/d;->a()Z

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    if-eqz p3, :cond_2

    .line 125
    .line 126
    invoke-static {p1}, Lfr/c;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    new-instance v0, Lio/bidmachine/h3;

    .line 131
    .line 132
    invoke-direct {v0, p2}, Lio/bidmachine/h3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p3, v0}, Lio/bidmachine/core/g;->G(Ljava/lang/String;Lio/bidmachine/Executable;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lfr/c;->b(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/ConnectionType;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    iget-object v0, p0, Lio/bidmachine/v3;->a:Lio/bidmachine/w2;

    .line 143
    .line 144
    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/w2;->b(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/Device$Builder;Lcom/explorestack/protobuf/adcom/ConnectionType;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    invoke-static {p1}, Lfr/c;->k(Landroid/content/Context;)Ljava/lang/Double;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    if-eqz p3, :cond_3

    .line 152
    .line 153
    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    .line 154
    .line 155
    .line 156
    move-result p3

    .line 157
    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setScreenbright(F)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 158
    .line 159
    .line 160
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 161
    .line 162
    .line 163
    move-result-wide v0

    .line 164
    invoke-virtual {p2, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setLastbootup(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 165
    .line 166
    .line 167
    invoke-static {p1}, Lfr/b;->c(Landroid/content/Context;)Ljava/util/Set;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    if-eqz p3, :cond_4

    .line 172
    .line 173
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_4

    .line 178
    .line 179
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    check-cast p3, Ljava/lang/String;

    .line 188
    .line 189
    new-instance v0, Lio/bidmachine/i3;

    .line 190
    .line 191
    invoke-direct {v0, p2}, Lio/bidmachine/i3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 192
    .line 193
    .line 194
    invoke-static {p3, v0}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 195
    .line 196
    .line 197
    :cond_4
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 198
    .line 199
    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setApilevel(I)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lio/bidmachine/core/b;->a()J

    .line 203
    .line 204
    .line 205
    move-result-wide v0

    .line 206
    invoke-virtual {p2, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setTime(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 207
    .line 208
    .line 209
    invoke-static {}, Lio/bidmachine/core/b;->b()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    new-instance v0, Lio/bidmachine/k3;

    .line 214
    .line 215
    invoke-direct {v0, p2}, Lio/bidmachine/k3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 216
    .line 217
    .line 218
    invoke-static {p3, v0}, Lio/bidmachine/core/g;->G(Ljava/lang/String;Lio/bidmachine/Executable;)V

    .line 219
    .line 220
    .line 221
    invoke-static {p1}, Lio/bidmachine/DeviceInfo;->obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;

    .line 222
    .line 223
    .line 224
    move-result-object p3

    .line 225
    invoke-virtual {p3}, Lio/bidmachine/DeviceInfo;->getAvailableDiskSpaceInMB()Ljava/lang/Long;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-eqz v0, :cond_5

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    int-to-long v0, v0

    .line 236
    invoke-virtual {p2, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setDiskspace(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 237
    .line 238
    .line 239
    :cond_5
    invoke-virtual {p3}, Lio/bidmachine/DeviceInfo;->getTotalDiskSpaceInMB()Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    if-eqz v0, :cond_6

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    int-to-long v0, v0

    .line 250
    invoke-virtual {p2, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setTotaldisk(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 251
    .line 252
    .line 253
    :cond_6
    invoke-virtual {p3}, Lio/bidmachine/DeviceInfo;->isDeviceRooted()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    invoke-virtual {p2, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setJailbreak(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p3}, Lio/bidmachine/DeviceInfo;->getAudio()Lio/bidmachine/DeviceInfo$a;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0, p1}, Lio/bidmachine/DeviceInfo$a;->c(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    new-instance v1, Lio/bidmachine/l3;

    .line 269
    .line 270
    invoke-direct {v1, p2}, Lio/bidmachine/l3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 271
    .line 272
    .line 273
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p3}, Lio/bidmachine/DeviceInfo;->getAudio()Lio/bidmachine/DeviceInfo$a;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0, p1}, Lio/bidmachine/DeviceInfo$a;->b(Landroid/content/Context;)Ljava/lang/Float;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    if-eqz v0, :cond_7

    .line 285
    .line 286
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->setVolumelevel(F)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {p2, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setAudioContext(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 303
    .line 304
    .line 305
    :cond_7
    invoke-virtual {p3, p1}, Lio/bidmachine/DeviceInfo;->updateHwInfo(Landroid/content/Context;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p3}, Lio/bidmachine/DeviceInfo;->getRam()Lio/bidmachine/DeviceInfo$d;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p1}, Lio/bidmachine/DeviceInfo$d;->c()Ljava/lang/Long;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    new-instance v0, Lio/bidmachine/s3;

    .line 317
    .line 318
    invoke-direct {v0, p2}, Lio/bidmachine/s3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 319
    .line 320
    .line 321
    invoke-static {p1, v0}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p3}, Lio/bidmachine/DeviceInfo;->getRam()Lio/bidmachine/DeviceInfo$d;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-virtual {p1}, Lio/bidmachine/DeviceInfo$d;->b()Ljava/lang/Long;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    new-instance v0, Lio/bidmachine/t3;

    .line 333
    .line 334
    invoke-direct {v0, p2}, Lio/bidmachine/t3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 335
    .line 336
    .line 337
    invoke-static {p1, v0}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p3}, Lio/bidmachine/DeviceInfo;->getCpu()Lio/bidmachine/DeviceInfo$b;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-virtual {p1}, Lio/bidmachine/DeviceInfo$b;->c()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    new-instance v0, Lio/bidmachine/u3;

    .line 349
    .line 350
    invoke-direct {v0, p2}, Lio/bidmachine/u3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 351
    .line 352
    .line 353
    invoke-static {p1, v0}, Lio/bidmachine/core/g;->G(Ljava/lang/String;Lio/bidmachine/Executable;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p3}, Lio/bidmachine/DeviceInfo;->getCpu()Lio/bidmachine/DeviceInfo$b;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p1}, Lio/bidmachine/DeviceInfo$b;->d()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    new-instance v0, Lio/bidmachine/z2;

    .line 365
    .line 366
    invoke-direct {v0, p2}, Lio/bidmachine/z2;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 367
    .line 368
    .line 369
    invoke-static {p1, v0}, Lio/bidmachine/core/g;->G(Ljava/lang/String;Lio/bidmachine/Executable;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p3}, Lio/bidmachine/DeviceInfo;->getGpu()Lio/bidmachine/DeviceInfo$c;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-virtual {p1}, Lio/bidmachine/DeviceInfo$c;->f()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    new-instance v0, Lio/bidmachine/a3;

    .line 381
    .line 382
    invoke-direct {v0, p2}, Lio/bidmachine/a3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 383
    .line 384
    .line 385
    invoke-static {p1, v0}, Lio/bidmachine/core/g;->G(Ljava/lang/String;Lio/bidmachine/Executable;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p3}, Lio/bidmachine/DeviceInfo;->getGpu()Lio/bidmachine/DeviceInfo$c;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-virtual {p1}, Lio/bidmachine/DeviceInfo$c;->g()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    new-instance p3, Lio/bidmachine/b3;

    .line 397
    .line 398
    invoke-direct {p3, p2}, Lio/bidmachine/b3;-><init>(Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    .line 399
    .line 400
    .line 401
    invoke-static {p1, p3}, Lio/bidmachine/core/g;->G(Ljava/lang/String;Lio/bidmachine/Executable;)V

    .line 402
    .line 403
    .line 404
    return-void
.end method

.method private f(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/TargetingParams;Lio/bidmachine/TargetingParams;Llp/d;Lcom/explorestack/protobuf/adcom/ConnectionType;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Llp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/explorestack/protobuf/adcom/ConnectionType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lio/bidmachine/DeviceInfo;->obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lio/bidmachine/DeviceInfo;->isTablet:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_TABLET:Lcom/explorestack/protobuf/adcom/DeviceType;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_PHONE_DEVICE:Lcom/explorestack/protobuf/adcom/DeviceType;

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setType(Lcom/explorestack/protobuf/adcom/DeviceType;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/explorestack/protobuf/adcom/OS;->OS_ANDROID:Lcom/explorestack/protobuf/adcom/OS;

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setOs(Lcom/explorestack/protobuf/adcom/OS;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lfr/c;->h()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setOsv(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 27
    .line 28
    .line 29
    iget v1, v0, Lio/bidmachine/DeviceInfo;->screenDensity:F

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setPxratio(F)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 32
    .line 33
    .line 34
    iget v1, v0, Lio/bidmachine/DeviceInfo;->screenDpi:I

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setPpi(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lio/bidmachine/core/g;->D(Landroid/content/Context;)Landroid/graphics/Point;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 44
    .line 45
    invoke-virtual {p2, v2}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setW(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 46
    .line 47
    .line 48
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 49
    .line 50
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setH(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 51
    .line 52
    .line 53
    invoke-interface {p5}, Llp/d;->b()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x1

    .line 58
    xor-int/2addr v1, v2

    .line 59
    invoke-static {p1, v1}, Lio/bidmachine/AdvertisingDataManager;->a(Landroid/content/Context;Z)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setIfa(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lio/bidmachine/AdvertisingDataManager;->b()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setLmt(Z)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 71
    .line 72
    .line 73
    invoke-interface {p5}, Llp/d;->a()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    if-nez p6, :cond_1

    .line 80
    .line 81
    invoke-static {p1}, Lfr/c;->b(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/ConnectionType;

    .line 82
    .line 83
    .line 84
    move-result-object p6

    .line 85
    :cond_1
    invoke-virtual {p2, p6}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setContype(Lcom/explorestack/protobuf/adcom/ConnectionType;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lfr/c;->f()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setMake(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lio/bidmachine/UserAgentManager;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v3, Lio/bidmachine/y2;

    .line 100
    .line 101
    invoke-direct {v3, p2}, Lio/bidmachine/y2;-><init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v3}, Lio/bidmachine/core/g;->G(Ljava/lang/String;Lio/bidmachine/Executable;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lio/bidmachine/DeviceInfo;->model:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v3, Lio/bidmachine/j3;

    .line 110
    .line 111
    invoke-direct {v3, p2}, Lio/bidmachine/j3;-><init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v3}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getHWV()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    new-instance v3, Lio/bidmachine/n3;

    .line 122
    .line 123
    invoke-direct {v3, p2}, Lio/bidmachine/n3;-><init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v3}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    new-instance v3, Lio/bidmachine/o3;

    .line 138
    .line 139
    invoke-direct {v3, p2}, Lio/bidmachine/o3;-><init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v1, v3}, Lio/bidmachine/core/g;->G(Ljava/lang/String;Lio/bidmachine/Executable;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lio/bidmachine/DeviceInfo;->phoneMCCMNC:Ljava/lang/String;

    .line 146
    .line 147
    new-instance v3, Lio/bidmachine/p3;

    .line 148
    .line 149
    invoke-direct {v3, p2}, Lio/bidmachine/p3;-><init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v1, v3}, Lio/bidmachine/core/g;->G(Ljava/lang/String;Lio/bidmachine/Executable;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, v0, Lio/bidmachine/DeviceInfo;->phoneCarrier:Ljava/lang/String;

    .line 156
    .line 157
    new-instance v1, Lio/bidmachine/q3;

    .line 158
    .line 159
    invoke-direct {v1, p2}, Lio/bidmachine/q3;-><init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->G(Ljava/lang/String;Lio/bidmachine/Executable;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lio/bidmachine/v3;->a:Lio/bidmachine/w2;

    .line 166
    .line 167
    invoke-virtual {v0, p1, p2, p6}, Lio/bidmachine/w2;->a(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lcom/explorestack/protobuf/adcom/ConnectionType;)V

    .line 168
    .line 169
    .line 170
    :cond_2
    invoke-interface {p5}, Llp/d;->c()Z

    .line 171
    .line 172
    .line 173
    move-result p5

    .line 174
    if-eqz p5, :cond_3

    .line 175
    .line 176
    invoke-virtual {p3}, Lio/bidmachine/TargetingParams;->getDeviceLocation()Landroid/location/Location;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    invoke-virtual {p4}, Lio/bidmachine/TargetingParams;->getDeviceLocation()Landroid/location/Location;

    .line 181
    .line 182
    .line 183
    move-result-object p4

    .line 184
    invoke-static {p1, p3, p4, v2}, Lfr/e;->b(Landroid/content/Context;Landroid/location/Location;Landroid/location/Location;Z)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 189
    .line 190
    .line 191
    :cond_3
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Builder;Lio/bidmachine/TargetingParams;Lio/bidmachine/TargetingParams;Llp/d;Lcom/explorestack/protobuf/adcom/ConnectionType;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/explorestack/protobuf/adcom/Context$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Llp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/explorestack/protobuf/adcom/ConnectionType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p3

    .line 4
    move-object v3, p4

    .line 5
    move-object v4, p5

    .line 6
    move-object v5, p6

    .line 7
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/v3;->d(Landroid/content/Context;Lio/bidmachine/TargetingParams;Lio/bidmachine/TargetingParams;Llp/d;Lcom/explorestack/protobuf/adcom/ConnectionType;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, p1, p5}, Lio/bidmachine/v3;->c(Landroid/content/Context;Llp/d;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->build()Lio/bidmachine/protobuf/sdk/Device;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setDevice(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method b(Landroid/content/Context;Lio/bidmachine/protobuf/RequestTokenPayload$Builder;Llp/d;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Llp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p3}, Lio/bidmachine/v3;->c(Landroid/content/Context;Llp/d;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance p3, Lio/bidmachine/m3;

    .line 9
    .line 10
    invoke-direct {p3, p2}, Lio/bidmachine/m3;-><init>(Lio/bidmachine/protobuf/RequestTokenPayload$Builder;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p3}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

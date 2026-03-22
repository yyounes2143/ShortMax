.class public final Lcom/inmobi/media/Ue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/Ve;


# instance fields
.field public final a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/ArrayList;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public j:Lcom/inmobi/media/Le;

.field public k:Ljava/lang/String;

.field public l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;)V
    .locals 1

    const-string v0, "trackers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "companionAds"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoConfig"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p4, p6}, Lcom/inmobi/media/Ue;-><init>(Ljava/util/List;Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;)V

    .line 12
    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    .line 13
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p4, p0, Lcom/inmobi/media/Ue;->i:Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_1

    .line 14
    iget-object p4, p0, Lcom/inmobi/media/Ue;->e:Ljava/util/ArrayList;

    new-instance p5, Lcom/inmobi/media/Me;

    const/16 p6, 0x3e8

    .line 15
    invoke-direct {p5, p1, p6}, Lcom/inmobi/media/Me;-><init>(Ljava/lang/String;I)V

    .line 16
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    iput-object p1, p0, Lcom/inmobi/media/Ue;->f:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/inmobi/media/Ue;->g:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/inmobi/media/Ue;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;)V
    .locals 1

    const-string v0, "trackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/inmobi/media/Ue;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    const/high16 p2, 0x100000

    .line 3
    iput p2, p0, Lcom/inmobi/media/Ue;->b:I

    const/16 p2, 0x2000

    .line 4
    iput p2, p0, Lcom/inmobi/media/Ue;->c:I

    const/16 p2, 0x3c

    .line 5
    iput p2, p0, Lcom/inmobi/media/Ue;->d:I

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/inmobi/media/Ue;->h:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/Ue;->e:Ljava/util/ArrayList;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/Ue;->i:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/inmobi/media/Ue;->l:I

    return-void
.end method

.method public static a(DDD)Z
    .locals 0

    .line 1
    cmpl-double p0, p4, p0

    if-lez p0, :cond_0

    cmpg-double p0, p4, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Ue;->g:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, ":"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lkotlin/text/Regex;->q(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    .line 6
    :try_start_0
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v4, p0, Lcom/inmobi/media/Ue;->d:I

    mul-int/2addr v2, v4

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int v0, v0

    add-int/2addr v2, v0

    return v2

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public final a(Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/Ue;->e:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/Me;

    .line 9
    new-instance v2, Lcom/inmobi/media/Oe;

    .line 10
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;->getHeaderTimeout()I

    move-result v3

    .line 11
    invoke-direct {v2, v1, v3, p2}, Lcom/inmobi/media/Oe;-><init>(Lcom/inmobi/media/Me;ILjava/util/concurrent/CountDownLatch;)V

    .line 12
    invoke-virtual {v2}, Lcom/inmobi/media/Oe;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/inmobi/media/Ue;->f:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Nc;->a()Lcom/inmobi/media/m1;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    const/16 v9, 0x2f

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const-string v7, "created_ts DESC "

    .line 23
    .line 24
    invoke-static/range {v2 .. v9}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/inmobi/media/j;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    const/16 v3, 0xa

    .line 58
    .line 59
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/inmobi/media/j;

    .line 81
    .line 82
    iget-object v3, v3, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/4 v3, 0x0

    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    iget-object v2, v1, Lcom/inmobi/media/Ue;->e:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_6

    .line 107
    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Lcom/inmobi/media/Me;

    .line 113
    .line 114
    iget-object v5, v4, Lcom/inmobi/media/Me;->a:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    :goto_2
    move-object v4, v3

    .line 124
    :goto_3
    if-eqz v4, :cond_7

    .line 125
    .line 126
    iget-object v0, v4, Lcom/inmobi/media/Me;->a:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v0, v1, Lcom/inmobi/media/Ue;->f:Ljava/lang/String;

    .line 129
    .line 130
    return-object v0

    .line 131
    :cond_7
    iget-object v0, v1, Lcom/inmobi/media/Ue;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getOptimalVastVideoSize()J

    .line 134
    .line 135
    .line 136
    move-result-wide v5

    .line 137
    long-to-double v5, v5

    .line 138
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 139
    .line 140
    mul-double/2addr v5, v7

    .line 141
    iget v0, v1, Lcom/inmobi/media/Ue;->b:I

    .line 142
    .line 143
    int-to-double v7, v0

    .line 144
    div-double/2addr v5, v7

    .line 145
    iget-object v0, v1, Lcom/inmobi/media/Ue;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getVastMaxAssetSize()J

    .line 148
    .line 149
    .line 150
    move-result-wide v7

    .line 151
    long-to-double v7, v7

    .line 152
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 153
    .line 154
    mul-double/2addr v7, v15

    .line 155
    iget v0, v1, Lcom/inmobi/media/Ue;->b:I

    .line 156
    .line 157
    int-to-double v9, v0

    .line 158
    div-double/2addr v7, v9

    .line 159
    iget-object v0, v1, Lcom/inmobi/media/Ue;->e:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    const-string v9, "event"

    .line 170
    .line 171
    if-eqz v0, :cond_c

    .line 172
    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    move-object v13, v0

    .line 178
    check-cast v13, Lcom/inmobi/media/Me;

    .line 179
    .line 180
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ue;->a()I

    .line 181
    .line 182
    .line 183
    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_5

    .line 185
    :catch_0
    move-exception v0

    .line 186
    move-object v10, v0

    .line 187
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 188
    .line 189
    new-instance v0, Lcom/inmobi/media/f2;

    .line 190
    .line 191
    invoke-direct {v0, v10}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    sget-object v9, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 198
    .line 199
    invoke-virtual {v9, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 200
    .line 201
    .line 202
    const/4 v0, 0x0

    .line 203
    :goto_5
    iget v9, v13, Lcom/inmobi/media/Me;->b:I

    .line 204
    .line 205
    int-to-double v9, v9

    .line 206
    mul-double/2addr v9, v15

    .line 207
    int-to-double v11, v0

    .line 208
    mul-double/2addr v9, v11

    .line 209
    iget v0, v1, Lcom/inmobi/media/Ue;->c:I

    .line 210
    .line 211
    int-to-double v11, v0

    .line 212
    div-double v11, v9, v11

    .line 213
    .line 214
    iput-wide v11, v13, Lcom/inmobi/media/Me;->c:D

    .line 215
    .line 216
    const-wide/16 v9, 0x0

    .line 217
    .line 218
    move-wide/from16 v17, v11

    .line 219
    .line 220
    move-wide v11, v5

    .line 221
    move-object/from16 v19, v13

    .line 222
    .line 223
    move-wide/from16 v13, v17

    .line 224
    .line 225
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/Ue;->a(DDD)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_a

    .line 230
    .line 231
    if-eqz v4, :cond_9

    .line 232
    .line 233
    iget-wide v9, v4, Lcom/inmobi/media/Me;->c:D

    .line 234
    .line 235
    cmpl-double v0, v17, v9

    .line 236
    .line 237
    if-lez v0, :cond_8

    .line 238
    .line 239
    :cond_9
    move-object/from16 v4, v19

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_a
    move-wide v9, v5

    .line 243
    move-wide v11, v7

    .line 244
    move-wide/from16 v13, v17

    .line 245
    .line 246
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/Ue;->a(DDD)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_8

    .line 251
    .line 252
    if-eqz v3, :cond_b

    .line 253
    .line 254
    iget-wide v9, v3, Lcom/inmobi/media/Me;->c:D

    .line 255
    .line 256
    cmpg-double v0, v17, v9

    .line 257
    .line 258
    if-gez v0, :cond_8

    .line 259
    .line 260
    :cond_b
    move-object/from16 v3, v19

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_c
    if-eqz v4, :cond_d

    .line 264
    .line 265
    iget-object v0, v4, Lcom/inmobi/media/Me;->a:Ljava/lang/String;

    .line 266
    .line 267
    iput-object v0, v1, Lcom/inmobi/media/Ue;->f:Ljava/lang/String;

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_d
    if-eqz v3, :cond_e

    .line 271
    .line 272
    iget-object v0, v3, Lcom/inmobi/media/Me;->a:Ljava/lang/String;

    .line 273
    .line 274
    iput-object v0, v1, Lcom/inmobi/media/Ue;->f:Ljava/lang/String;

    .line 275
    .line 276
    :cond_e
    :goto_6
    iget-object v0, v1, Lcom/inmobi/media/Ue;->f:Ljava/lang/String;

    .line 277
    .line 278
    if-eqz v0, :cond_f

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-nez v0, :cond_1d

    .line 285
    .line 286
    :cond_f
    iget-object v0, v1, Lcom/inmobi/media/Ue;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    .line 287
    .line 288
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getBitRate()Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;->isBitRateMandatory()Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-nez v2, :cond_25

    .line 297
    .line 298
    iget-object v2, v1, Lcom/inmobi/media/Ue;->e:Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-nez v2, :cond_10

    .line 305
    .line 306
    goto/16 :goto_f

    .line 307
    .line 308
    :cond_10
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 309
    .line 310
    iget-object v10, v1, Lcom/inmobi/media/Ue;->e:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 313
    .line 314
    .line 315
    move-result v10

    .line 316
    invoke-direct {v2, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 317
    .line 318
    .line 319
    :try_start_1
    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/Ue;->a(Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;Ljava/util/concurrent/CountDownLatch;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;->getHeaderTimeout()I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    int-to-long v10, v0

    .line 327
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 328
    .line 329
    invoke-virtual {v2, v10, v11, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    .line 331
    .line 332
    iget-object v0, v1, Lcom/inmobi/media/Ue;->e:Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    :cond_11
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-eqz v2, :cond_15

    .line 343
    .line 344
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    check-cast v2, Lcom/inmobi/media/Me;

    .line 349
    .line 350
    iget-wide v13, v2, Lcom/inmobi/media/Me;->c:D

    .line 351
    .line 352
    const-wide/16 v9, 0x0

    .line 353
    .line 354
    move-wide v11, v5

    .line 355
    move-wide v15, v13

    .line 356
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/Ue;->a(DDD)Z

    .line 357
    .line 358
    .line 359
    move-result v9

    .line 360
    if-eqz v9, :cond_13

    .line 361
    .line 362
    if-eqz v4, :cond_12

    .line 363
    .line 364
    iget-wide v9, v4, Lcom/inmobi/media/Me;->c:D

    .line 365
    .line 366
    cmpl-double v9, v15, v9

    .line 367
    .line 368
    if-lez v9, :cond_11

    .line 369
    .line 370
    :cond_12
    move-object v4, v2

    .line 371
    goto :goto_7

    .line 372
    :cond_13
    move-wide v9, v5

    .line 373
    move-wide v11, v7

    .line 374
    move-wide v13, v15

    .line 375
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/Ue;->a(DDD)Z

    .line 376
    .line 377
    .line 378
    move-result v9

    .line 379
    if-eqz v9, :cond_11

    .line 380
    .line 381
    if-eqz v3, :cond_14

    .line 382
    .line 383
    iget-wide v9, v3, Lcom/inmobi/media/Me;->c:D

    .line 384
    .line 385
    cmpg-double v9, v15, v9

    .line 386
    .line 387
    if-gez v9, :cond_11

    .line 388
    .line 389
    :cond_14
    move-object v3, v2

    .line 390
    goto :goto_7

    .line 391
    :cond_15
    if-eqz v4, :cond_16

    .line 392
    .line 393
    goto :goto_9

    .line 394
    :cond_16
    if-eqz v3, :cond_1d

    .line 395
    .line 396
    goto :goto_a

    .line 397
    :catchall_0
    move-exception v0

    .line 398
    goto :goto_c

    .line 399
    :catch_1
    move-exception v0

    .line 400
    :try_start_2
    sget-object v2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 401
    .line 402
    new-instance v2, Lcom/inmobi/media/f2;

    .line 403
    .line 404
    invoke-direct {v2, v0}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 405
    .line 406
    .line 407
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 411
    .line 412
    invoke-virtual {v0, v2}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    .line 414
    .line 415
    iget-object v0, v1, Lcom/inmobi/media/Ue;->e:Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    :cond_17
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-eqz v2, :cond_1b

    .line 426
    .line 427
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    check-cast v2, Lcom/inmobi/media/Me;

    .line 432
    .line 433
    iget-wide v13, v2, Lcom/inmobi/media/Me;->c:D

    .line 434
    .line 435
    const-wide/16 v9, 0x0

    .line 436
    .line 437
    move-wide v11, v5

    .line 438
    move-wide v15, v13

    .line 439
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/Ue;->a(DDD)Z

    .line 440
    .line 441
    .line 442
    move-result v9

    .line 443
    if-eqz v9, :cond_19

    .line 444
    .line 445
    if-eqz v4, :cond_18

    .line 446
    .line 447
    iget-wide v9, v4, Lcom/inmobi/media/Me;->c:D

    .line 448
    .line 449
    cmpl-double v9, v15, v9

    .line 450
    .line 451
    if-lez v9, :cond_17

    .line 452
    .line 453
    :cond_18
    move-object v4, v2

    .line 454
    goto :goto_8

    .line 455
    :cond_19
    move-wide v9, v5

    .line 456
    move-wide v11, v7

    .line 457
    move-wide v13, v15

    .line 458
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/Ue;->a(DDD)Z

    .line 459
    .line 460
    .line 461
    move-result v9

    .line 462
    if-eqz v9, :cond_17

    .line 463
    .line 464
    if-eqz v3, :cond_1a

    .line 465
    .line 466
    iget-wide v9, v3, Lcom/inmobi/media/Me;->c:D

    .line 467
    .line 468
    cmpg-double v9, v15, v9

    .line 469
    .line 470
    if-gez v9, :cond_17

    .line 471
    .line 472
    :cond_1a
    move-object v3, v2

    .line 473
    goto :goto_8

    .line 474
    :cond_1b
    if-eqz v4, :cond_1c

    .line 475
    .line 476
    :goto_9
    iget-object v0, v4, Lcom/inmobi/media/Me;->a:Ljava/lang/String;

    .line 477
    .line 478
    iput-object v0, v1, Lcom/inmobi/media/Ue;->f:Ljava/lang/String;

    .line 479
    .line 480
    goto :goto_b

    .line 481
    :cond_1c
    if-eqz v3, :cond_1d

    .line 482
    .line 483
    :goto_a
    iget-object v0, v3, Lcom/inmobi/media/Me;->a:Ljava/lang/String;

    .line 484
    .line 485
    iput-object v0, v1, Lcom/inmobi/media/Ue;->f:Ljava/lang/String;

    .line 486
    .line 487
    :cond_1d
    :goto_b
    iget-object v0, v1, Lcom/inmobi/media/Ue;->f:Ljava/lang/String;

    .line 488
    .line 489
    return-object v0

    .line 490
    :goto_c
    iget-object v2, v1, Lcom/inmobi/media/Ue;->e:Ljava/util/ArrayList;

    .line 491
    .line 492
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    :cond_1e
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 497
    .line 498
    .line 499
    move-result v9

    .line 500
    if-eqz v9, :cond_22

    .line 501
    .line 502
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v9

    .line 506
    move-object v15, v9

    .line 507
    check-cast v15, Lcom/inmobi/media/Me;

    .line 508
    .line 509
    iget-wide v13, v15, Lcom/inmobi/media/Me;->c:D

    .line 510
    .line 511
    const-wide/16 v9, 0x0

    .line 512
    .line 513
    move-wide v11, v5

    .line 514
    move-wide/from16 v16, v13

    .line 515
    .line 516
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/Ue;->a(DDD)Z

    .line 517
    .line 518
    .line 519
    move-result v9

    .line 520
    if-eqz v9, :cond_20

    .line 521
    .line 522
    if-eqz v4, :cond_1f

    .line 523
    .line 524
    iget-wide v9, v4, Lcom/inmobi/media/Me;->c:D

    .line 525
    .line 526
    cmpl-double v9, v16, v9

    .line 527
    .line 528
    if-lez v9, :cond_1e

    .line 529
    .line 530
    :cond_1f
    move-object v4, v15

    .line 531
    goto :goto_d

    .line 532
    :cond_20
    move-wide v9, v5

    .line 533
    move-wide v11, v7

    .line 534
    move-wide/from16 v13, v16

    .line 535
    .line 536
    invoke-static/range {v9 .. v14}, Lcom/inmobi/media/Ue;->a(DDD)Z

    .line 537
    .line 538
    .line 539
    move-result v9

    .line 540
    if-eqz v9, :cond_1e

    .line 541
    .line 542
    if-eqz v3, :cond_21

    .line 543
    .line 544
    iget-wide v9, v3, Lcom/inmobi/media/Me;->c:D

    .line 545
    .line 546
    cmpg-double v9, v16, v9

    .line 547
    .line 548
    if-gez v9, :cond_1e

    .line 549
    .line 550
    :cond_21
    move-object v3, v15

    .line 551
    goto :goto_d

    .line 552
    :cond_22
    if-nez v4, :cond_23

    .line 553
    .line 554
    if-eqz v3, :cond_24

    .line 555
    .line 556
    iget-object v2, v3, Lcom/inmobi/media/Me;->a:Ljava/lang/String;

    .line 557
    .line 558
    iput-object v2, v1, Lcom/inmobi/media/Ue;->f:Ljava/lang/String;

    .line 559
    .line 560
    goto :goto_e

    .line 561
    :cond_23
    iget-object v2, v4, Lcom/inmobi/media/Me;->a:Ljava/lang/String;

    .line 562
    .line 563
    iput-object v2, v1, Lcom/inmobi/media/Ue;->f:Ljava/lang/String;

    .line 564
    .line 565
    :cond_24
    :goto_e
    throw v0

    .line 566
    :cond_25
    :goto_f
    iget-object v0, v1, Lcom/inmobi/media/Ue;->f:Ljava/lang/String;

    .line 567
    .line 568
    return-object v0
.end method

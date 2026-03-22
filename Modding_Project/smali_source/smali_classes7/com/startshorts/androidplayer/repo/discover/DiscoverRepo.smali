.class public final Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;
.super Ljava/lang/Object;
.source "DiscoverRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRepo.kt\ncom/startshorts/androidplayer/repo/discover/DiscoverRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,398:1\n1863#2:399\n1863#2,2:400\n1864#2:402\n1863#2:403\n1863#2,2:404\n1864#2:406\n295#2,2:408\n1863#2,2:410\n1863#2,2:412\n1#3:407\n*S KotlinDebug\n*F\n+ 1 DiscoverRepo.kt\ncom/startshorts/androidplayer/repo/discover/DiscoverRepo\n*L\n111#1:399\n114#1:400,2\n111#1:402\n127#1:403\n129#1:404,2\n127#1:406\n291#1:408,2\n335#1:410,2\n378#1:412,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Z

.field private static e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 7
    .line 8
    new-instance v0, Lvg/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lvg/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lvg/c;

    .line 20
    .line 21
    invoke-direct {v0}, Lvg/c;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->c:Lms/i;

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final A(Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    sput-object p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->e:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    return-void
.end method

.method private final C(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryVOList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/Collection;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    return p1
.end method

.method private final D(I)Z
    .locals 6

    .line 1
    int-to-double v0, p1

    .line 2
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->F()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    int-to-double v2, p1

    .line 9
    const-wide v4, 0x3fe999999999999aL    # 0.8

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    mul-double/2addr v2, v4

    .line 15
    cmpl-double p1, v0, v2

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method private static final E()Lvg/a;
    .locals 1

    .line 1
    new-instance v0, Lvg/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lvg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final F()Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final G(Ljava/util/List;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    if-eqz v0, :cond_1f

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_e

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 18
    .line 19
    invoke-virtual {v0}, Lfk/z;->k()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0}, Lfk/z;->k()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/2addr v1, v2

    .line 28
    invoke-virtual {v0}, Lfk/z;->b()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int v8, v1, v2

    .line 33
    .line 34
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 39
    .line 40
    const/4 v9, 0x4

    .line 41
    const/4 v11, 0x3

    .line 42
    const/4 v12, 0x2

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ne v2, v9, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPropagandaPattern()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eq v1, v12, :cond_2

    .line 56
    .line 57
    if-eq v1, v11, :cond_1

    .line 58
    .line 59
    sget-object v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->p:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter$a;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter$a;->c()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0}, Lfk/z;->k()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    :goto_0
    sub-int/2addr v1, v0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->l:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;->c()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0}, Lfk/z;->k()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    sget-object v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->p:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;->c()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0}, Lfk/z;->k()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const/4 v1, 0x0

    .line 94
    :goto_1
    new-instance v13, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v14

    .line 103
    :cond_4
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_1e

    .line 108
    .line 109
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object v6, v0

    .line 114
    check-cast v6, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 115
    .line 116
    invoke-direct {v7, v6}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->C(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-nez v0, :cond_6

    .line 128
    .line 129
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :cond_6
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eq v2, v12, :cond_19

    .line 138
    .line 139
    if-eq v2, v9, :cond_15

    .line 140
    .line 141
    packed-switch v2, :pswitch_data_0

    .line 142
    .line 143
    .line 144
    add-int/2addr v1, v8

    .line 145
    check-cast v0, Ljava/lang/Iterable;

    .line 146
    .line 147
    invoke-static {v0, v11}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Ljava/lang/Iterable;

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_8

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    move-object/from16 v18, v2

    .line 168
    .line 169
    check-cast v18, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 170
    .line 171
    sget-object v16, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 172
    .line 173
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 174
    .line 175
    .line 176
    move-result v17

    .line 177
    const/16 v21, 0xc

    .line 178
    .line 179
    const/16 v22, 0x0

    .line 180
    .line 181
    const/16 v19, 0x0

    .line 182
    .line 183
    const/16 v20, 0x0

    .line 184
    .line 185
    invoke-static/range {v16 .. v22}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->k(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IIILjava/lang/Object;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    if-eqz v2, :cond_7

    .line 190
    .line 191
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_8
    const/high16 v0, 0x43340000    # 180.0f

    .line 196
    .line 197
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    add-int/2addr v1, v0

    .line 202
    goto/16 :goto_d

    .line 203
    .line 204
    :pswitch_0
    add-int/2addr v1, v8

    .line 205
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryConfigItemVOList()Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-eqz v0, :cond_c

    .line 210
    .line 211
    check-cast v0, Ljava/lang/Iterable;

    .line 212
    .line 213
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_b

    .line 222
    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    move-object v3, v2

    .line 228
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;

    .line 229
    .line 230
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;->getCategoryId()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryVOList()Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    if-eqz v4, :cond_a

    .line 239
    .line 240
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    check-cast v4, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 245
    .line 246
    if-eqz v4, :cond_a

    .line 247
    .line 248
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;->getId()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    goto :goto_4

    .line 253
    :cond_a
    const/4 v4, 0x0

    .line 254
    :goto_4
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-eqz v3, :cond_9

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_b
    const/4 v2, 0x0

    .line 262
    :goto_5
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;

    .line 263
    .line 264
    if-eqz v2, :cond_c

    .line 265
    .line 266
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;->getShortPlayResponseList()Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    if-nez v0, :cond_d

    .line 271
    .line 272
    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    :cond_d
    check-cast v0, Ljava/lang/Iterable;

    .line 277
    .line 278
    invoke-static {v0, v11}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v16

    .line 286
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_1d

    .line 291
    .line 292
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    move-object v2, v0

    .line 297
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;

    .line 298
    .line 299
    const/high16 v0, 0x43d70000    # 430.0f

    .line 300
    .line 301
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    add-int v5, v1, v0

    .line 306
    .line 307
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    const/16 v17, 0xc

    .line 312
    .line 313
    const/16 v18, 0x0

    .line 314
    .line 315
    const/4 v3, 0x0

    .line 316
    const/4 v4, 0x0

    .line 317
    move-object/from16 v0, p0

    .line 318
    .line 319
    move v10, v5

    .line 320
    move/from16 v5, v17

    .line 321
    .line 322
    move-object/from16 v17, v6

    .line 323
    .line 324
    move-object/from16 v6, v18

    .line 325
    .line 326
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->k(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IIILjava/lang/Object;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    if-eqz v0, :cond_e

    .line 331
    .line 332
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    :cond_e
    invoke-direct {v7, v10}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->D(I)Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    move v1, v10

    .line 340
    if-eqz v0, :cond_f

    .line 341
    .line 342
    goto/16 :goto_d

    .line 343
    .line 344
    :cond_f
    move-object/from16 v6, v17

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :pswitch_1
    move-object/from16 v17, v6

    .line 348
    .line 349
    add-int/2addr v1, v8

    .line 350
    check-cast v0, Ljava/lang/Iterable;

    .line 351
    .line 352
    const/4 v2, 0x5

    .line 353
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_1d

    .line 366
    .line 367
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    move-object v2, v0

    .line 372
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 373
    .line 374
    const/high16 v0, 0x43dc0000    # 440.0f

    .line 375
    .line 376
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    add-int v6, v1, v0

    .line 381
    .line 382
    invoke-virtual/range {v17 .. v17}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    const/16 v5, 0xc

    .line 387
    .line 388
    const/16 v16, 0x0

    .line 389
    .line 390
    const/4 v3, 0x0

    .line 391
    const/4 v4, 0x0

    .line 392
    move-object/from16 v0, p0

    .line 393
    .line 394
    move v15, v6

    .line 395
    move-object/from16 v6, v16

    .line 396
    .line 397
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->k(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IIILjava/lang/Object;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    if-eqz v0, :cond_10

    .line 402
    .line 403
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    :cond_10
    invoke-direct {v7, v15}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->D(I)Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_11

    .line 411
    .line 412
    :goto_8
    move v1, v15

    .line 413
    goto/16 :goto_d

    .line 414
    .line 415
    :cond_11
    move v1, v15

    .line 416
    goto :goto_7

    .line 417
    :pswitch_2
    move-object/from16 v17, v6

    .line 418
    .line 419
    invoke-virtual/range {v17 .. v17}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    const/16 v3, 0x8

    .line 424
    .line 425
    if-ne v2, v3, :cond_12

    .line 426
    .line 427
    move v2, v12

    .line 428
    goto :goto_9

    .line 429
    :cond_12
    move v2, v11

    .line 430
    :goto_9
    add-int/2addr v1, v8

    .line 431
    move-object v3, v0

    .line 432
    check-cast v3, Ljava/util/Collection;

    .line 433
    .line 434
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    const/4 v4, 0x0

    .line 439
    :goto_a
    if-ge v4, v3, :cond_1d

    .line 440
    .line 441
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    move-object/from16 v22, v5

    .line 446
    .line 447
    check-cast v22, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 448
    .line 449
    if-eqz v22, :cond_13

    .line 450
    .line 451
    sget-object v20, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 452
    .line 453
    invoke-virtual/range {v17 .. v17}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 454
    .line 455
    .line 456
    move-result v21

    .line 457
    const/16 v25, 0xc

    .line 458
    .line 459
    const/16 v26, 0x0

    .line 460
    .line 461
    const/16 v23, 0x0

    .line 462
    .line 463
    const/16 v24, 0x0

    .line 464
    .line 465
    invoke-static/range {v20 .. v26}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->k(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IIILjava/lang/Object;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    if-eqz v5, :cond_13

    .line 470
    .line 471
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    :cond_13
    rem-int v5, v4, v2

    .line 475
    .line 476
    const/4 v6, 0x1

    .line 477
    if-ne v5, v6, :cond_14

    .line 478
    .line 479
    sget-object v5, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 480
    .line 481
    invoke-virtual {v5, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->d(I)Landroid/util/Size;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    sget-object v6, Lfk/z;->a:Lfk/z;

    .line 490
    .line 491
    invoke-virtual {v6}, Lfk/z;->a()I

    .line 492
    .line 493
    .line 494
    move-result v10

    .line 495
    add-int/2addr v5, v10

    .line 496
    invoke-virtual {v6}, Lfk/z;->n()I

    .line 497
    .line 498
    .line 499
    move-result v10

    .line 500
    add-int/2addr v5, v10

    .line 501
    invoke-virtual {v6}, Lfk/z;->d()I

    .line 502
    .line 503
    .line 504
    move-result v6

    .line 505
    add-int/2addr v5, v6

    .line 506
    add-int/2addr v1, v5

    .line 507
    invoke-direct {v7, v1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->D(I)Z

    .line 508
    .line 509
    .line 510
    move-result v5

    .line 511
    if-eqz v5, :cond_14

    .line 512
    .line 513
    goto/16 :goto_d

    .line 514
    .line 515
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 516
    .line 517
    goto :goto_a

    .line 518
    :cond_15
    move-object/from16 v17, v6

    .line 519
    .line 520
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 525
    .line 526
    invoke-virtual/range {v17 .. v17}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPropagandaPattern()I

    .line 527
    .line 528
    .line 529
    move-result v2

    .line 530
    if-eq v2, v12, :cond_18

    .line 531
    .line 532
    if-eq v2, v11, :cond_17

    .line 533
    .line 534
    if-eq v2, v9, :cond_16

    .line 535
    .line 536
    sget-object v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->p:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter$a;

    .line 537
    .line 538
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter$a;->b()I

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter$a;->a()I

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    goto :goto_b

    .line 547
    :cond_16
    sget-object v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4;->m:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;

    .line 548
    .line 549
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;->b()I

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;->a()I

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    goto :goto_b

    .line 558
    :cond_17
    sget-object v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->l:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;

    .line 559
    .line 560
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;->b()I

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;->a()I

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    goto :goto_b

    .line 569
    :cond_18
    sget-object v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->p:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;

    .line 570
    .line 571
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;->b()I

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;->a()I

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    :goto_b
    invoke-virtual/range {v17 .. v17}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    invoke-direct {v7, v4, v0, v3, v2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->j(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;II)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    if-eqz v0, :cond_1d

    .line 588
    .line 589
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    goto :goto_d

    .line 593
    :cond_19
    move-object/from16 v17, v6

    .line 594
    .line 595
    add-int/2addr v1, v8

    .line 596
    invoke-direct {v7, v1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->D(I)Z

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    if-nez v0, :cond_1d

    .line 601
    .line 602
    invoke-virtual/range {v17 .. v17}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    if-nez v0, :cond_1a

    .line 607
    .line 608
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    :cond_1a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 613
    .line 614
    .line 615
    move-result-object v10

    .line 616
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    if-eqz v0, :cond_1d

    .line 621
    .line 622
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    move-object v2, v0

    .line 627
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 628
    .line 629
    const/high16 v0, 0x432c0000    # 172.0f

    .line 630
    .line 631
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    add-int v15, v1, v0

    .line 636
    .line 637
    invoke-virtual/range {v17 .. v17}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    const/16 v5, 0xc

    .line 642
    .line 643
    const/4 v6, 0x0

    .line 644
    const/4 v3, 0x0

    .line 645
    const/4 v4, 0x0

    .line 646
    move-object/from16 v0, p0

    .line 647
    .line 648
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->k(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IIILjava/lang/Object;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    if-eqz v0, :cond_1b

    .line 653
    .line 654
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    :cond_1b
    invoke-direct {v7, v15}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->D(I)Z

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    if-eqz v0, :cond_1c

    .line 662
    .line 663
    goto/16 :goto_8

    .line 664
    .line 665
    :cond_1c
    move v1, v15

    .line 666
    goto :goto_c

    .line 667
    :cond_1d
    :goto_d
    invoke-direct {v7, v1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->D(I)Z

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    if-eqz v0, :cond_4

    .line 672
    .line 673
    :cond_1e
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 674
    .line 675
    const/4 v1, 0x0

    .line 676
    const/4 v2, 0x0

    .line 677
    invoke-static {v0, v13, v1, v12, v2}, Lkk/f;->x(Lkk/f;Ljava/util/List;ZILjava/lang/Object;)V

    .line 678
    .line 679
    .line 680
    :cond_1f
    :goto_e
    return-void

    .line 681
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final I(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->d:Z

    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 5
    .line 6
    invoke-static {p0}, Ljk/v;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->A(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final N(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleId(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleName(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->I(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()Lvg/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->E()Lvg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->F()Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;)Lvg/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->w()Lvg/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->A(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->G(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method private final j(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;II)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    sget-object v0, Lid/a;->a:Lid/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "preloadCover -> style("

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ") url("

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 p1, 0x29

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v1, "DiscoverRepo"

    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 55
    .line 56
    new-instance v0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lkk/f;->m(Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method

.method static synthetic k(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IIILjava/lang/Object;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    sget-object p3, Lid/c;->a:Lid/c;

    .line 6
    .line 7
    invoke-virtual {p3}, Lid/c;->b()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 12
    .line 13
    if-eqz p5, :cond_1

    .line 14
    .line 15
    sget-object p4, Lid/c;->a:Lid/c;

    .line 16
    .line 17
    invoke-virtual {p4}, Lid/c;->a()I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->j(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;II)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private final w()Lvg/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lvg/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final x()Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;

    .line 8
    .line 9
    return-object v0
.end method

.method private final y()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->w()Lvg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lvg/a;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private final z(Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;)V
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_8

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;->getBannerResponseList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_8

    .line 10
    .line 11
    check-cast v2, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_8

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v5, 0x4

    .line 34
    if-ne v4, v5, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getContentResponseList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/util/Collection;

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getContentResponseList()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Ljava/lang/Iterable;

    .line 61
    .line 62
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_7

    .line 71
    .line 72
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    if-nez v7, :cond_2

    .line 83
    .line 84
    move v7, v0

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    :goto_2
    invoke-virtual {v6, v7}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->setRecommendId(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v6, v7}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->setModuleId(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance v7, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 108
    .line 109
    invoke-direct {v7}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setBannerContent(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getShortPlayResponse()Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    if-eqz v8, :cond_3

    .line 120
    .line 121
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    goto :goto_3

    .line 126
    :cond_3
    move-object v8, v1

    .line 127
    :goto_3
    invoke-virtual {v7, v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->setShortPlayName(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getShortPlayResponse()Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    if-eqz v8, :cond_4

    .line 135
    .line 136
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    goto :goto_4

    .line 141
    :cond_4
    move-object v8, v1

    .line 142
    :goto_4
    invoke-virtual {v7, v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->setShortPlayCode(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getShortPlayResponse()Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    if-eqz v6, :cond_5

    .line 150
    .line 151
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    if-nez v6, :cond_6

    .line 156
    .line 157
    :cond_5
    const-string v6, ""

    .line 158
    .line 159
    :cond_6
    invoke-virtual {v7, v6}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->setUpack(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_7
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->setShortPlayResponseList(Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_8
    if-eqz p1, :cond_c

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;->getBannerResponseList()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    if-eqz v2, :cond_c

    .line 178
    .line 179
    check-cast v2, Ljava/lang/Iterable;

    .line 180
    .line 181
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_c

    .line 190
    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 196
    .line 197
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    const/16 v5, 0xd

    .line 202
    .line 203
    if-ne v4, v5, :cond_9

    .line 204
    .line 205
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getContentResponseList()Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    check-cast v4, Ljava/util/Collection;

    .line 210
    .line 211
    if-eqz v4, :cond_9

    .line 212
    .line 213
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-eqz v4, :cond_a

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_a
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getContentResponseList()Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    check-cast v4, Ljava/lang/Iterable;

    .line 225
    .line 226
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-eqz v5, :cond_9

    .line 235
    .line 236
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    check-cast v5, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 241
    .line 242
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    if-nez v6, :cond_b

    .line 247
    .line 248
    move v6, v0

    .line 249
    goto :goto_7

    .line 250
    :cond_b
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    :goto_7
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->setRecommendId(I)V

    .line 262
    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_c
    if-eqz p1, :cond_f

    .line 266
    .line 267
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;->getBannerResponseList()Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    if-eqz p1, :cond_f

    .line 272
    .line 273
    check-cast p1, Ljava/lang/Iterable;

    .line 274
    .line 275
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_e

    .line 284
    .line 285
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    move-object v2, v0

    .line 290
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 291
    .line 292
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    const/16 v3, 0xe

    .line 297
    .line 298
    if-ne v2, v3, :cond_d

    .line 299
    .line 300
    move-object v1, v0

    .line 301
    :cond_e
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 302
    .line 303
    :cond_f
    if-eqz v1, :cond_10

    .line 304
    .line 305
    sget-object p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 306
    .line 307
    sget-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 308
    .line 309
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 310
    .line 311
    .line 312
    :cond_10
    return-void
.end method


# virtual methods
.method public final B(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of p1, p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 7
    .line 8
    return p1
.end method

.method public final H()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lfk/a;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    sget-boolean v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->d:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    sget-object v0, Lud/a;->a:Lud/a;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lud/a;->n0(Z)V

    .line 28
    .line 29
    .line 30
    sput-boolean v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->d:Z

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->y()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "preloadModules modulesCacheKey="

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    new-instance v5, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-direct {v5, v0, v2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$preloadModules$1;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Lvg/d;

    .line 62
    .line 63
    invoke-direct {v6}, Lvg/d;-><init>()V

    .line 64
    .line 65
    .line 66
    const/4 v7, 0x5

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final J(Ljava/lang/String;Ljava/lang/String;ILrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1;->j:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p4, v7, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1;->j:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p4, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->x()Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->r()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->s()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    iput v2, v7, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1;->j:I

    .line 74
    .line 75
    move-object v2, p1

    .line 76
    move-object v3, p2

    .line 77
    move v4, p3

    .line 78
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;->g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v0, :cond_3

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_3
    :goto_2
    return-object p1
.end method

.method public final K(Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->w()Lvg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lvg/a;->b()Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->y()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final L(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final M(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "discoverModule"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->N(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->w()Lvg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lvg/a;->b()Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->w()Lvg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lvg/a;->c()Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final l(ILrs/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetch$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetch$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetch$1;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetch$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetch$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetch$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetch$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetch$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetch$1;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast p2, Lkotlin/Result;

    .line 46
    .line 47
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->x()Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->r()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->s()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iput-object p0, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetch$1;->h:Ljava/lang/Object;

    .line 76
    .line 77
    iput v3, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetch$1;->k:I

    .line 78
    .line 79
    invoke-virtual {p2, p1, v2, v4, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;->e(ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    if-ne p2, v1, :cond_3

    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_3
    move-object p1, p0

    .line 87
    :goto_1
    invoke-static {p2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    invoke-static {p2}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move-object v0, p2

    .line 102
    :goto_2
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    .line 103
    .line 104
    invoke-direct {p1, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->z(Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    return-object p2
.end method

.method public final m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILrs/c;)Ljava/lang/Object;
    .locals 13
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverModulesCategoryMore$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverModulesCategoryMore$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverModulesCategoryMore$1;->j:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverModulesCategoryMore$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    :goto_0
    move-object v12, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverModulesCategoryMore$1;

    .line 25
    .line 26
    move-object v2, p0

    .line 27
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverModulesCategoryMore$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v12, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverModulesCategoryMore$1;->h:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget v3, v12, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverModulesCategoryMore$1;->j:I

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    if-ne v3, v4, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    check-cast v0, Lkotlin/Result;

    .line 48
    .line 49
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->x()Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->r()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->s()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    iput v4, v12, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverModulesCategoryMore$1;->j:I

    .line 78
    .line 79
    move v4, p1

    .line 80
    move v5, p2

    .line 81
    move-object/from16 v6, p3

    .line 82
    .line 83
    move-object/from16 v7, p4

    .line 84
    .line 85
    move-object/from16 v8, p5

    .line 86
    .line 87
    move/from16 v9, p6

    .line 88
    .line 89
    invoke-virtual/range {v3 .. v12}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-ne v0, v1, :cond_3

    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_3
    :goto_2
    return-object v0
.end method

.method public final n(Ljava/lang/String;IIILrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p5, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverRankingBanner$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverRankingBanner$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverRankingBanner$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverRankingBanner$1;->j:I

    .line 18
    .line 19
    :goto_0
    move-object v8, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverRankingBanner$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p5}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverRankingBanner$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p5, v8, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverRankingBanner$1;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v8, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverRankingBanner$1;->j:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p5, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p5}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->x()Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->r()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->s()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    iput v2, v8, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchDiscoverRankingBanner$1;->j:I

    .line 74
    .line 75
    move-object v2, p1

    .line 76
    move v3, p2

    .line 77
    move v4, p3

    .line 78
    move v5, p4

    .line 79
    invoke-virtual/range {v1 .. v8}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;->b(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-ne p1, v0, :cond_3

    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_3
    :goto_2
    return-object p1
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;ILrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMore$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMore$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMore$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMore$1;->j:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMore$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMore$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p4, v7, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMore$1;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMore$1;->j:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p4, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->x()Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->r()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->s()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    iput v2, v7, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMore$1;->j:I

    .line 74
    .line 75
    move-object v2, p1

    .line 76
    move-object v3, p2

    .line 77
    move v4, p3

    .line 78
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;->c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v0, :cond_3

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_3
    :goto_2
    return-object p1
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;IIIILrs/c;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMorePage$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMorePage$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMorePage$1;->j:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMorePage$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    :goto_0
    move-object v12, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMorePage$1;

    .line 25
    .line 26
    move-object v2, p0

    .line 27
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMorePage$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v12, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMorePage$1;->h:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget v3, v12, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMorePage$1;->j:I

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    if-ne v3, v4, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    check-cast v0, Lkotlin/Result;

    .line 48
    .line 49
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->x()Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->r()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->s()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    iput v4, v12, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchModuleMorePage$1;->j:I

    .line 78
    .line 79
    move-object v4, p1

    .line 80
    move-object v5, p2

    .line 81
    move/from16 v6, p3

    .line 82
    .line 83
    move/from16 v9, p4

    .line 84
    .line 85
    move/from16 v10, p5

    .line 86
    .line 87
    move/from16 v11, p6

    .line 88
    .line 89
    invoke-virtual/range {v3 .. v12}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;->d(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILrs/c;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-ne v0, v1, :cond_3

    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_3
    :goto_2
    return-object v0
.end method

.method public final q(ZLrs/c;)Ljava/lang/Object;
    .locals 10
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchTabs$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchTabs$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchTabs$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchTabs$1;->l:I

    .line 18
    .line 19
    :goto_0
    move-object v8, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchTabs$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchTabs$1;-><init>(Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p2, v8, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchTabs$1;->j:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v8, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchTabs$1;->l:I

    .line 34
    .line 35
    const/4 v9, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v9, :cond_1

    .line 39
    .line 40
    iget-boolean p1, v8, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchTabs$1;->i:Z

    .line 41
    .line 42
    iget-object v0, v8, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchTabs$1;->h:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 45
    .line 46
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    check-cast p2, Lkotlin/Result;

    .line 50
    .line 51
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->x()Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sget-object p2, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->f1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_3

    .line 92
    .line 93
    const/4 p2, 0x2

    .line 94
    move v2, p2

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    move v2, v9

    .line 97
    :goto_2
    sget-object p2, Lud/b;->a:Lud/b;

    .line 98
    .line 99
    invoke-virtual {p2}, Lud/b;->M0()J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    sget-object p2, Lud/a;->a:Lud/a;

    .line 104
    .line 105
    invoke-virtual {p2}, Lud/a;->N()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->r()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->s()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    iput-object p0, v8, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchTabs$1;->h:Ljava/lang/Object;

    .line 118
    .line 119
    iput-boolean p1, v8, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchTabs$1;->i:Z

    .line 120
    .line 121
    iput v9, v8, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo$fetchTabs$1;->l:I

    .line 122
    .line 123
    invoke-virtual/range {v1 .. v8}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;->f(IJZLjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    if-ne p2, v0, :cond_4

    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_4
    move-object v0, p0

    .line 131
    :goto_3
    invoke-static {p2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_a

    .line 136
    .line 137
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 138
    .line 139
    new-instance v4, Landroid/os/Bundle;

    .line 140
    .line 141
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v1, "api_url"

    .line 145
    .line 146
    const-string v3, "app/homeData/getTabHomeData"

    .line 147
    .line 148
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v1, "preload"

    .line 152
    .line 153
    invoke-virtual {v4, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 157
    .line 158
    const/4 v7, 0x4

    .line 159
    const/4 v8, 0x0

    .line 160
    const-string v3, "api_request"

    .line 161
    .line 162
    const-wide/16 v5, 0x0

    .line 163
    .line 164
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    sget-object p1, Lud/a;->a:Lud/a;

    .line 168
    .line 169
    invoke-static {p2}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    const/4 v2, 0x0

    .line 174
    if-eqz v1, :cond_5

    .line 175
    .line 176
    move-object v1, v2

    .line 177
    goto :goto_4

    .line 178
    :cond_5
    move-object v1, p2

    .line 179
    :goto_4
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    if-eqz v1, :cond_7

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->getAutoPlay()Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-nez v1, :cond_6

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-ne v1, v9, :cond_7

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_7
    :goto_5
    move v9, v3

    .line 199
    :goto_6
    invoke-virtual {p1, v9}, Lud/a;->b0(Z)V

    .line 200
    .line 201
    .line 202
    invoke-static {p2}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_8

    .line 207
    .line 208
    move-object p1, v2

    .line 209
    goto :goto_7

    .line 210
    :cond_8
    move-object p1, p2

    .line 211
    :goto_7
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;

    .line 212
    .line 213
    if-eqz p1, :cond_9

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->getTabPageResponse()Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    :cond_9
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->z(Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;)V

    .line 220
    .line 221
    .line 222
    :cond_a
    return-object p2
.end method

.method public final r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->N0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->getAbTestKey()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->N0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_0
    return-object v0
.end method

.method public final t()Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->w()Lvg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lvg/a;->b()Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->y()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    .line 19
    .line 20
    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->w()Lvg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lvg/a;->c()Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->y()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/util/List;

    .line 19
    .line 20
    return-object v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->d:Z

    .line 2
    .line 3
    return v0
.end method

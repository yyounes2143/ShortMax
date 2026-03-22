.class public final Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;
.super Ljava/lang/Object;
.source "SubsRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 7
    .line 8
    new-instance v0, Lig/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lig/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lig/c;

    .line 20
    .line 21
    invoke-direct {v0}, Lig/c;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->c:Lms/i;

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

.method public static synthetic a()Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->m()Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lig/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->l()Lig/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final g()Lig/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lig/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final h()Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final l()Lig/a;
    .locals 1

    .line 1
    new-instance v0, Lig/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lig/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final m()Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 19
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lzc/f;",
            "Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p10

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->o:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->o:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->m:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v12

    .line 37
    iget v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->o:I

    .line 38
    .line 39
    const/4 v13, 0x5

    .line 40
    const/4 v14, 0x4

    .line 41
    const/4 v15, 0x3

    .line 42
    const/4 v11, 0x2

    .line 43
    const/4 v10, 0x1

    .line 44
    const/4 v9, 0x0

    .line 45
    if-eqz v3, :cond_5

    .line 46
    .line 47
    if-eq v3, v10, :cond_4

    .line 48
    .line 49
    if-eq v3, v11, :cond_3

    .line 50
    .line 51
    if-eq v3, v15, :cond_3

    .line 52
    .line 53
    if-eq v3, v14, :cond_2

    .line 54
    .line 55
    if-ne v3, v13, :cond_1

    .line 56
    .line 57
    iget-object v1, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->i:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Ljava/lang/Throwable;

    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_9

    .line 65
    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_2
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->j:Ljava/lang/Object;

    .line 75
    .line 76
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->i:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 79
    .line 80
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->h:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v5, Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    move-object v13, v9

    .line 88
    goto/16 :goto_6

    .line 89
    .line 90
    :cond_3
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->l:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;

    .line 93
    .line 94
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->k:Ljava/lang/Object;

    .line 95
    .line 96
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->j:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v5, Lzc/f;

    .line 99
    .line 100
    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->i:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v6, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 103
    .line 104
    iget-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->h:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v7, Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    move-object v13, v9

    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_4
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->k:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 117
    .line 118
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->j:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v4, Lzc/f;

    .line 121
    .line 122
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->i:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 125
    .line 126
    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->h:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v6, Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    check-cast v0, Lkotlin/Result;

    .line 134
    .line 135
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    move-object v13, v9

    .line 140
    move v14, v11

    .line 141
    goto :goto_1

    .line 142
    :cond_5
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->h()Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    move-object/from16 v0, p2

    .line 150
    .line 151
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->h:Ljava/lang/Object;

    .line 152
    .line 153
    move-object/from16 v8, p5

    .line 154
    .line 155
    iput-object v8, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->i:Ljava/lang/Object;

    .line 156
    .line 157
    move-object/from16 v7, p6

    .line 158
    .line 159
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->j:Ljava/lang/Object;

    .line 160
    .line 161
    move-object/from16 v6, p7

    .line 162
    .line 163
    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->k:Ljava/lang/Object;

    .line 164
    .line 165
    iput v10, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->o:I

    .line 166
    .line 167
    move-object/from16 v4, p1

    .line 168
    .line 169
    move-object/from16 v5, p3

    .line 170
    .line 171
    move-object/from16 v6, p4

    .line 172
    .line 173
    move-object/from16 v7, p5

    .line 174
    .line 175
    move-object/from16 v8, p6

    .line 176
    .line 177
    move-object v13, v9

    .line 178
    move-object/from16 v9, p8

    .line 179
    .line 180
    move v14, v10

    .line 181
    move-object/from16 v10, p9

    .line 182
    .line 183
    move v14, v11

    .line 184
    move-object v11, v1

    .line 185
    invoke-virtual/range {v3 .. v11}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    if-ne v3, v12, :cond_6

    .line 190
    .line 191
    return-object v12

    .line 192
    :cond_6
    move-object/from16 v5, p5

    .line 193
    .line 194
    move-object/from16 v4, p6

    .line 195
    .line 196
    move-object v6, v0

    .line 197
    move-object v0, v3

    .line 198
    move-object/from16 v3, p7

    .line 199
    .line 200
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-eqz v7, :cond_12

    .line 205
    .line 206
    move-object v7, v0

    .line 207
    check-cast v7, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;

    .line 208
    .line 209
    if-eqz v7, :cond_11

    .line 210
    .line 211
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->isSubscription()Z

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    if-nez v8, :cond_7

    .line 216
    .line 217
    goto/16 :goto_7

    .line 218
    .line 219
    :cond_7
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getCoins()I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    if-gtz v8, :cond_9

    .line 224
    .line 225
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isPro()Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-eqz v8, :cond_8

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_8
    move-object v3, v0

    .line 233
    move-object v0, v7

    .line 234
    move-object v7, v6

    .line 235
    move-object/from16 v18, v5

    .line 236
    .line 237
    move-object v5, v4

    .line 238
    move-object/from16 v4, v18

    .line 239
    .line 240
    goto/16 :goto_5

    .line 241
    .line 242
    :cond_9
    :goto_2
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getRechargeUserInfo()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    sget-object v9, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 247
    .line 248
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    if-eqz v8, :cond_b

    .line 253
    .line 254
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;->getUserCode()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v11

    .line 258
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    if-nez v11, :cond_b

    .line 263
    .line 264
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getUserCodeHaveRight()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v11

    .line 268
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v10

    .line 272
    if-nez v10, :cond_b

    .line 273
    .line 274
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    new-instance v9, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$2$1;

    .line 279
    .line 280
    invoke-direct {v9, v6, v8, v13}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$2$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;Lrs/c;)V

    .line 281
    .line 282
    .line 283
    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->h:Ljava/lang/Object;

    .line 284
    .line 285
    iput-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->i:Ljava/lang/Object;

    .line 286
    .line 287
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->j:Ljava/lang/Object;

    .line 288
    .line 289
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->k:Ljava/lang/Object;

    .line 290
    .line 291
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->l:Ljava/lang/Object;

    .line 292
    .line 293
    iput v14, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->o:I

    .line 294
    .line 295
    invoke-static {v3, v9, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    if-ne v3, v12, :cond_a

    .line 300
    .line 301
    return-object v12

    .line 302
    :cond_a
    move-object v3, v7

    .line 303
    move-object v7, v6

    .line 304
    move-object v6, v5

    .line 305
    move-object v5, v4

    .line 306
    move-object v4, v0

    .line 307
    :goto_3
    move-object v0, v3

    .line 308
    move-object v3, v4

    .line 309
    move-object v4, v6

    .line 310
    goto/16 :goto_5

    .line 311
    .line 312
    :cond_b
    sget-object v8, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 313
    .line 314
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->q()Lkotlinx/coroutines/r;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->u()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getCoins()I

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    const/4 v10, 0x0

    .line 325
    if-lez v8, :cond_c

    .line 326
    .line 327
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getCoins()I

    .line 328
    .line 329
    .line 330
    move-result v8

    .line 331
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getBonus()I

    .line 332
    .line 333
    .line 334
    move-result v11

    .line 335
    invoke-virtual {v9, v8, v11, v10}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->v1(IIZ)V

    .line 336
    .line 337
    .line 338
    :cond_c
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getReceiveType()I

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    invoke-virtual {v9, v8, v10}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Q1(IZ)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getSubscriptionType()I

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getSubscriptionEndTime()J

    .line 350
    .line 351
    .line 352
    move-result-wide v10

    .line 353
    const/4 v14, 0x1

    .line 354
    const/16 v16, 0x1

    .line 355
    .line 356
    move-object/from16 p2, v9

    .line 357
    .line 358
    move/from16 p3, v16

    .line 359
    .line 360
    move/from16 p4, v8

    .line 361
    .line 362
    move-wide/from16 p5, v10

    .line 363
    .line 364
    move/from16 p7, v14

    .line 365
    .line 366
    invoke-virtual/range {p2 .. p7}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->N1(ZIJZ)V

    .line 367
    .line 368
    .line 369
    sget-object v8, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 370
    .line 371
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->m()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    if-eqz v9, :cond_d

    .line 376
    .line 377
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    goto :goto_4

    .line 382
    :cond_d
    move-object v9, v13

    .line 383
    :goto_4
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v10

    .line 387
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v9

    .line 391
    if-eqz v9, :cond_e

    .line 392
    .line 393
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->j()V

    .line 394
    .line 395
    .line 396
    :cond_e
    sget-object v8, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 397
    .line 398
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->e()V

    .line 399
    .line 400
    .line 401
    sget-object v8, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 402
    .line 403
    const/4 v9, 0x6

    .line 404
    const/4 v10, 0x0

    .line 405
    const-string v11, "update_premium_success"

    .line 406
    .line 407
    const/4 v14, 0x0

    .line 408
    const-wide/16 v16, 0x0

    .line 409
    .line 410
    move-object/from16 p2, v8

    .line 411
    .line 412
    move-object/from16 p3, v11

    .line 413
    .line 414
    move-object/from16 p4, v14

    .line 415
    .line 416
    move-wide/from16 p5, v16

    .line 417
    .line 418
    move/from16 p7, v9

    .line 419
    .line 420
    move-object/from16 p8, v10

    .line 421
    .line 422
    invoke-static/range {p2 .. p8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    new-instance v9, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;

    .line 430
    .line 431
    invoke-direct {v9}, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v8, v9}, Lau/c;->l(Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 438
    .line 439
    .line 440
    move-result-object v8

    .line 441
    new-instance v9, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$2$2;

    .line 442
    .line 443
    move-object/from16 p2, v9

    .line 444
    .line 445
    move-object/from16 p3, v6

    .line 446
    .line 447
    move-object/from16 p4, v5

    .line 448
    .line 449
    move-object/from16 p5, v4

    .line 450
    .line 451
    move-object/from16 p6, v3

    .line 452
    .line 453
    move-object/from16 p7, v10

    .line 454
    .line 455
    invoke-direct/range {p2 .. p7}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$2$2;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lrs/c;)V

    .line 456
    .line 457
    .line 458
    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->h:Ljava/lang/Object;

    .line 459
    .line 460
    iput-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->i:Ljava/lang/Object;

    .line 461
    .line 462
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->j:Ljava/lang/Object;

    .line 463
    .line 464
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->k:Ljava/lang/Object;

    .line 465
    .line 466
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->l:Ljava/lang/Object;

    .line 467
    .line 468
    iput v15, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->o:I

    .line 469
    .line 470
    invoke-static {v8, v9, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    if-ne v3, v12, :cond_a

    .line 475
    .line 476
    return-object v12

    .line 477
    :goto_5
    sget-object v6, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 478
    .line 479
    const/4 v8, 0x1

    .line 480
    invoke-virtual {v6, v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->h1(Z)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getSubscriptionConfirm()Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-eqz v0, :cond_10

    .line 488
    .line 489
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 490
    .line 491
    new-instance v6, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;

    .line 492
    .line 493
    sget-object v8, Lle/h;->a:Lle/h;

    .line 494
    .line 495
    invoke-virtual {v8}, Lle/h;->b()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v8

    .line 499
    invoke-virtual {v5}, Lzc/f;->f()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v5

    .line 503
    invoke-direct {v6, v8, v5}, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->h:Ljava/lang/Object;

    .line 507
    .line 508
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->i:Ljava/lang/Object;

    .line 509
    .line 510
    iput-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->j:Ljava/lang/Object;

    .line 511
    .line 512
    iput-object v13, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->k:Ljava/lang/Object;

    .line 513
    .line 514
    iput-object v13, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->l:Ljava/lang/Object;

    .line 515
    .line 516
    const/4 v5, 0x4

    .line 517
    iput v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->o:I

    .line 518
    .line 519
    invoke-virtual {v0, v6, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->u(Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    if-ne v0, v12, :cond_f

    .line 524
    .line 525
    return-object v12

    .line 526
    :cond_f
    move-object v5, v7

    .line 527
    :goto_6
    move-object v0, v3

    .line 528
    move-object v6, v5

    .line 529
    move-object v5, v4

    .line 530
    goto :goto_8

    .line 531
    :cond_10
    move-object v0, v3

    .line 532
    move-object v5, v4

    .line 533
    move-object v6, v7

    .line 534
    goto :goto_8

    .line 535
    :cond_11
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 536
    .line 537
    return-object v0

    .line 538
    :cond_12
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    if-eqz v3, :cond_14

    .line 543
    .line 544
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    new-instance v7, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$3$1;

    .line 549
    .line 550
    invoke-direct {v7, v6, v5, v3, v13}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$3$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/Throwable;Lrs/c;)V

    .line 551
    .line 552
    .line 553
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->h:Ljava/lang/Object;

    .line 554
    .line 555
    iput-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->i:Ljava/lang/Object;

    .line 556
    .line 557
    iput-object v13, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->j:Ljava/lang/Object;

    .line 558
    .line 559
    iput-object v13, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->k:Ljava/lang/Object;

    .line 560
    .line 561
    iput-object v13, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->l:Ljava/lang/Object;

    .line 562
    .line 563
    const/4 v0, 0x5

    .line 564
    iput v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->o:I

    .line 565
    .line 566
    invoke-static {v4, v7, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    if-ne v0, v12, :cond_13

    .line 571
    .line 572
    return-object v12

    .line 573
    :cond_13
    move-object v1, v3

    .line 574
    :goto_9
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 575
    .line 576
    invoke-static {v1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    const/4 v3, 0x4

    .line 585
    const/4 v4, 0x0

    .line 586
    const-string v5, "update_premium_failed"

    .line 587
    .line 588
    const-wide/16 v6, 0x0

    .line 589
    .line 590
    move-object/from16 p1, v0

    .line 591
    .line 592
    move-object/from16 p2, v5

    .line 593
    .line 594
    move-object/from16 p3, v1

    .line 595
    .line 596
    move-wide/from16 p4, v6

    .line 597
    .line 598
    move/from16 p6, v3

    .line 599
    .line 600
    move-object/from16 p7, v4

    .line 601
    .line 602
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    :cond_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 606
    .line 607
    return-object v0
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 20
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lzc/f;",
            "Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p8

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->o:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->o:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->m:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    iget v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->o:I

    .line 38
    .line 39
    const/4 v11, 0x5

    .line 40
    const/4 v12, 0x4

    .line 41
    const/4 v13, 0x3

    .line 42
    const/4 v14, 0x2

    .line 43
    const/4 v15, 0x1

    .line 44
    const/4 v9, 0x0

    .line 45
    if-eqz v3, :cond_5

    .line 46
    .line 47
    if-eq v3, v15, :cond_4

    .line 48
    .line 49
    if-eq v3, v14, :cond_3

    .line 50
    .line 51
    if-eq v3, v13, :cond_3

    .line 52
    .line 53
    if-eq v3, v12, :cond_2

    .line 54
    .line 55
    if-ne v3, v11, :cond_1

    .line 56
    .line 57
    iget-object v1, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->i:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Ljava/lang/Throwable;

    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_9

    .line 65
    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_2
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->j:Ljava/lang/Object;

    .line 75
    .line 76
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->i:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 79
    .line 80
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->h:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v5, Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    move-object v11, v9

    .line 88
    goto/16 :goto_6

    .line 89
    .line 90
    :cond_3
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->l:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;

    .line 93
    .line 94
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->k:Ljava/lang/Object;

    .line 95
    .line 96
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->j:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v5, Lzc/f;

    .line 99
    .line 100
    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->i:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v6, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 103
    .line 104
    iget-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->h:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v7, Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    move-object v11, v9

    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_4
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->k:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 117
    .line 118
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->j:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v4, Lzc/f;

    .line 121
    .line 122
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->i:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 125
    .line 126
    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->h:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v6, Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    check-cast v0, Lkotlin/Result;

    .line 134
    .line 135
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    move-object v11, v9

    .line 140
    move-object/from16 v18, v6

    .line 141
    .line 142
    move-object v6, v0

    .line 143
    move-object/from16 v0, v18

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->h()Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    move-object/from16 v0, p2

    .line 154
    .line 155
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->h:Ljava/lang/Object;

    .line 156
    .line 157
    move-object/from16 v8, p3

    .line 158
    .line 159
    iput-object v8, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->i:Ljava/lang/Object;

    .line 160
    .line 161
    move-object/from16 v7, p4

    .line 162
    .line 163
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->j:Ljava/lang/Object;

    .line 164
    .line 165
    move-object/from16 v6, p5

    .line 166
    .line 167
    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->k:Ljava/lang/Object;

    .line 168
    .line 169
    iput v15, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->o:I

    .line 170
    .line 171
    move-object/from16 v4, p1

    .line 172
    .line 173
    move-object/from16 v5, p3

    .line 174
    .line 175
    move-object/from16 v6, p4

    .line 176
    .line 177
    move-object/from16 v7, p6

    .line 178
    .line 179
    move-object/from16 v8, p7

    .line 180
    .line 181
    move-object v11, v9

    .line 182
    move-object v9, v1

    .line 183
    invoke-virtual/range {v3 .. v9}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;->b(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    if-ne v3, v10, :cond_6

    .line 188
    .line 189
    return-object v10

    .line 190
    :cond_6
    move-object/from16 v5, p3

    .line 191
    .line 192
    move-object/from16 v4, p4

    .line 193
    .line 194
    move-object v6, v3

    .line 195
    move-object/from16 v3, p5

    .line 196
    .line 197
    :goto_1
    invoke-static {v6}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-eqz v7, :cond_12

    .line 202
    .line 203
    move-object v7, v6

    .line 204
    check-cast v7, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;

    .line 205
    .line 206
    if-eqz v7, :cond_11

    .line 207
    .line 208
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->isSubscription()Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    if-nez v8, :cond_7

    .line 213
    .line 214
    goto/16 :goto_7

    .line 215
    .line 216
    :cond_7
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getCoins()I

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    if-gtz v8, :cond_9

    .line 221
    .line 222
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isPro()Z

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-eqz v8, :cond_8

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_8
    move-object v3, v6

    .line 230
    move-object/from16 v18, v7

    .line 231
    .line 232
    move-object v7, v0

    .line 233
    move-object/from16 v0, v18

    .line 234
    .line 235
    move-object/from16 v19, v5

    .line 236
    .line 237
    move-object v5, v4

    .line 238
    move-object/from16 v4, v19

    .line 239
    .line 240
    goto/16 :goto_5

    .line 241
    .line 242
    :cond_9
    :goto_2
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getRechargeUserInfo()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    sget-object v9, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 247
    .line 248
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    if-eqz v8, :cond_b

    .line 253
    .line 254
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;->getUserCode()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v15

    .line 258
    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v15

    .line 262
    if-nez v15, :cond_b

    .line 263
    .line 264
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getUserCodeHaveRight()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v15

    .line 268
    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v12

    .line 272
    if-nez v12, :cond_b

    .line 273
    .line 274
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    new-instance v9, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$2$1;

    .line 279
    .line 280
    invoke-direct {v9, v0, v8, v11}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$2$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;Lrs/c;)V

    .line 281
    .line 282
    .line 283
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->h:Ljava/lang/Object;

    .line 284
    .line 285
    iput-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->i:Ljava/lang/Object;

    .line 286
    .line 287
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->j:Ljava/lang/Object;

    .line 288
    .line 289
    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->k:Ljava/lang/Object;

    .line 290
    .line 291
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->l:Ljava/lang/Object;

    .line 292
    .line 293
    iput v14, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->o:I

    .line 294
    .line 295
    invoke-static {v3, v9, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    if-ne v3, v10, :cond_a

    .line 300
    .line 301
    return-object v10

    .line 302
    :cond_a
    move-object v3, v7

    .line 303
    move-object v7, v0

    .line 304
    move-object/from16 v18, v5

    .line 305
    .line 306
    move-object v5, v4

    .line 307
    move-object v4, v6

    .line 308
    move-object/from16 v6, v18

    .line 309
    .line 310
    :goto_3
    move-object v0, v3

    .line 311
    move-object v3, v4

    .line 312
    move-object v4, v6

    .line 313
    goto/16 :goto_5

    .line 314
    .line 315
    :cond_b
    sget-object v8, Lud/b;->a:Lud/b;

    .line 316
    .line 317
    const/4 v12, 0x0

    .line 318
    invoke-virtual {v8, v12}, Lud/b;->e5(Z)V

    .line 319
    .line 320
    .line 321
    sget-object v8, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 322
    .line 323
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->q()Lkotlinx/coroutines/r;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->u()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getCoins()I

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    if-lez v8, :cond_c

    .line 334
    .line 335
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getCoins()I

    .line 336
    .line 337
    .line 338
    move-result v8

    .line 339
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getBonus()I

    .line 340
    .line 341
    .line 342
    move-result v14

    .line 343
    invoke-virtual {v9, v8, v14, v12}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->v1(IIZ)V

    .line 344
    .line 345
    .line 346
    :cond_c
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getReceiveType()I

    .line 347
    .line 348
    .line 349
    move-result v8

    .line 350
    invoke-virtual {v9, v8, v12}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Q1(IZ)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getSubscriptionType()I

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getSubscriptionEndTime()J

    .line 358
    .line 359
    .line 360
    move-result-wide v14

    .line 361
    const/4 v12, 0x1

    .line 362
    const/16 v16, 0x1

    .line 363
    .line 364
    move-object/from16 p1, v9

    .line 365
    .line 366
    move/from16 p2, v16

    .line 367
    .line 368
    move/from16 p3, v8

    .line 369
    .line 370
    move-wide/from16 p4, v14

    .line 371
    .line 372
    move/from16 p6, v12

    .line 373
    .line 374
    invoke-virtual/range {p1 .. p6}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->N1(ZIJZ)V

    .line 375
    .line 376
    .line 377
    sget-object v8, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 378
    .line 379
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->m()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 380
    .line 381
    .line 382
    move-result-object v9

    .line 383
    if-eqz v9, :cond_d

    .line 384
    .line 385
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    goto :goto_4

    .line 390
    :cond_d
    move-object v9, v11

    .line 391
    :goto_4
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v12

    .line 395
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v9

    .line 399
    if-eqz v9, :cond_e

    .line 400
    .line 401
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->j()V

    .line 402
    .line 403
    .line 404
    :cond_e
    sget-object v8, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 405
    .line 406
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->e()V

    .line 407
    .line 408
    .line 409
    sget-object v8, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 410
    .line 411
    const/4 v9, 0x6

    .line 412
    const/4 v12, 0x0

    .line 413
    const-string v14, "exchange_premium_success"

    .line 414
    .line 415
    const/4 v15, 0x0

    .line 416
    const-wide/16 v16, 0x0

    .line 417
    .line 418
    move-object/from16 p1, v8

    .line 419
    .line 420
    move-object/from16 p2, v14

    .line 421
    .line 422
    move-object/from16 p3, v15

    .line 423
    .line 424
    move-wide/from16 p4, v16

    .line 425
    .line 426
    move/from16 p6, v9

    .line 427
    .line 428
    move-object/from16 p7, v12

    .line 429
    .line 430
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 434
    .line 435
    .line 436
    move-result-object v8

    .line 437
    new-instance v9, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;

    .line 438
    .line 439
    invoke-direct {v9}, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;-><init>()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v8, v9}, Lau/c;->l(Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 446
    .line 447
    .line 448
    move-result-object v8

    .line 449
    new-instance v9, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$2$2;

    .line 450
    .line 451
    move-object/from16 p1, v9

    .line 452
    .line 453
    move-object/from16 p2, v0

    .line 454
    .line 455
    move-object/from16 p3, v5

    .line 456
    .line 457
    move-object/from16 p4, v4

    .line 458
    .line 459
    move-object/from16 p5, v3

    .line 460
    .line 461
    move-object/from16 p6, v12

    .line 462
    .line 463
    invoke-direct/range {p1 .. p6}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$2$2;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lrs/c;)V

    .line 464
    .line 465
    .line 466
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->h:Ljava/lang/Object;

    .line 467
    .line 468
    iput-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->i:Ljava/lang/Object;

    .line 469
    .line 470
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->j:Ljava/lang/Object;

    .line 471
    .line 472
    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->k:Ljava/lang/Object;

    .line 473
    .line 474
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->l:Ljava/lang/Object;

    .line 475
    .line 476
    iput v13, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->o:I

    .line 477
    .line 478
    invoke-static {v8, v9, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    if-ne v3, v10, :cond_a

    .line 483
    .line 484
    return-object v10

    .line 485
    :goto_5
    sget-object v6, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 486
    .line 487
    const/4 v8, 0x1

    .line 488
    invoke-virtual {v6, v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->h1(Z)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getSubscriptionConfirm()Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_10

    .line 496
    .line 497
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 498
    .line 499
    new-instance v6, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;

    .line 500
    .line 501
    sget-object v8, Lle/h;->a:Lle/h;

    .line 502
    .line 503
    invoke-virtual {v8}, Lle/h;->b()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    invoke-virtual {v5}, Lzc/f;->f()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    invoke-direct {v6, v8, v5}, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->h:Ljava/lang/Object;

    .line 515
    .line 516
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->i:Ljava/lang/Object;

    .line 517
    .line 518
    iput-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->j:Ljava/lang/Object;

    .line 519
    .line 520
    iput-object v11, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->k:Ljava/lang/Object;

    .line 521
    .line 522
    iput-object v11, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->l:Ljava/lang/Object;

    .line 523
    .line 524
    const/4 v5, 0x4

    .line 525
    iput v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->o:I

    .line 526
    .line 527
    invoke-virtual {v0, v6, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->u(Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    if-ne v0, v10, :cond_f

    .line 532
    .line 533
    return-object v10

    .line 534
    :cond_f
    move-object v5, v7

    .line 535
    :goto_6
    move-object v6, v3

    .line 536
    move-object v0, v5

    .line 537
    move-object v5, v4

    .line 538
    goto :goto_8

    .line 539
    :cond_10
    move-object v6, v3

    .line 540
    move-object v5, v4

    .line 541
    move-object v0, v7

    .line 542
    goto :goto_8

    .line 543
    :cond_11
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 544
    .line 545
    return-object v0

    .line 546
    :cond_12
    :goto_8
    invoke-static {v6}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    if-eqz v3, :cond_14

    .line 551
    .line 552
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    new-instance v7, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$3$1;

    .line 557
    .line 558
    invoke-direct {v7, v0, v5, v3, v11}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$3$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/Throwable;Lrs/c;)V

    .line 559
    .line 560
    .line 561
    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->h:Ljava/lang/Object;

    .line 562
    .line 563
    iput-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->i:Ljava/lang/Object;

    .line 564
    .line 565
    iput-object v11, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->j:Ljava/lang/Object;

    .line 566
    .line 567
    iput-object v11, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->k:Ljava/lang/Object;

    .line 568
    .line 569
    iput-object v11, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->l:Ljava/lang/Object;

    .line 570
    .line 571
    const/4 v0, 0x5

    .line 572
    iput v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayExchangePremium$1;->o:I

    .line 573
    .line 574
    invoke-static {v4, v7, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    if-ne v0, v10, :cond_13

    .line 579
    .line 580
    return-object v10

    .line 581
    :cond_13
    move-object v1, v3

    .line 582
    :goto_9
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 583
    .line 584
    invoke-static {v1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    const/4 v3, 0x4

    .line 593
    const/4 v4, 0x0

    .line 594
    const-string v5, "exchange_premium_failed"

    .line 595
    .line 596
    const-wide/16 v6, 0x0

    .line 597
    .line 598
    move-object/from16 p1, v0

    .line 599
    .line 600
    move-object/from16 p2, v5

    .line 601
    .line 602
    move-object/from16 p3, v1

    .line 603
    .line 604
    move-wide/from16 p4, v6

    .line 605
    .line 606
    move/from16 p6, v3

    .line 607
    .line 608
    move-object/from16 p7, v4

    .line 609
    .line 610
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 611
    .line 612
    .line 613
    :cond_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 614
    .line 615
    return-object v0
.end method

.method public final e(ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lrs/c;)Ljava/lang/Object;
    .locals 22
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lzc/f;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    instance-of v2, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->n:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->n:I

    .line 22
    .line 23
    move-object/from16 v3, p0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;

    .line 27
    .line 28
    move-object/from16 v3, p0

    .line 29
    .line 30
    invoke-direct {v2, v3, v1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v1, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->l:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget v5, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->n:I

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v7, 0x1

    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    if-eq v5, v7, :cond_2

    .line 46
    .line 47
    if-ne v5, v6, :cond_1

    .line 48
    .line 49
    iget-object v0, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->j:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->i:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_2
    iget-boolean v0, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->h:Z

    .line 69
    .line 70
    iget-object v5, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->k:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v5, Lzc/f;

    .line 73
    .line 74
    iget-object v8, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->j:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v8, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 77
    .line 78
    iget-object v9, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->i:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v9, Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    check-cast v1, Lkotlin/Result;

    .line 86
    .line 87
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    move-object/from16 v21, v9

    .line 92
    .line 93
    move-object v9, v1

    .line 94
    move-object v1, v5

    .line 95
    move-object/from16 v5, v21

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->h()Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object/from16 v5, p2

    .line 106
    .line 107
    iput-object v5, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->i:Ljava/lang/Object;

    .line 108
    .line 109
    move-object/from16 v8, p3

    .line 110
    .line 111
    iput-object v8, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->j:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object v0, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->k:Ljava/lang/Object;

    .line 114
    .line 115
    move/from16 v9, p1

    .line 116
    .line 117
    iput-boolean v9, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->h:Z

    .line 118
    .line 119
    iput v7, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->n:I

    .line 120
    .line 121
    invoke-virtual {v1, v0, v2}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;->c(Lzc/f;Lrs/c;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-ne v1, v4, :cond_4

    .line 126
    .line 127
    return-object v4

    .line 128
    :cond_4
    move-object/from16 v21, v1

    .line 129
    .line 130
    move-object v1, v0

    .line 131
    move v0, v9

    .line 132
    move-object/from16 v9, v21

    .line 133
    .line 134
    :goto_1
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 135
    .line 136
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-static {v9}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v11

    .line 143
    if-eqz v11, :cond_c

    .line 144
    .line 145
    move-object v11, v9

    .line 146
    check-cast v11, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;

    .line 147
    .line 148
    const/4 v12, 0x0

    .line 149
    if-eqz v11, :cond_b

    .line 150
    .line 151
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->isSubscription()Z

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    if-nez v13, :cond_5

    .line 156
    .line 157
    goto/16 :goto_4

    .line 158
    .line 159
    :cond_5
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getSubscriptionType()I

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    invoke-virtual {v8, v13}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setType(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getCoins()I

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    if-gtz v13, :cond_6

    .line 171
    .line 172
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isPro()Z

    .line 173
    .line 174
    .line 175
    move-result v13

    .line 176
    if-eqz v13, :cond_9

    .line 177
    .line 178
    :cond_6
    iput-boolean v7, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 179
    .line 180
    sget-object v7, Lud/b;->a:Lud/b;

    .line 181
    .line 182
    invoke-virtual {v7, v12}, Lud/b;->e5(Z)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getCoins()I

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    if-lez v7, :cond_7

    .line 190
    .line 191
    sget-object v7, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 192
    .line 193
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getCoins()I

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getBonus()I

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    invoke-virtual {v7, v13, v14, v12}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->v1(IIZ)V

    .line 202
    .line 203
    .line 204
    :cond_7
    sget-object v15, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 205
    .line 206
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getReceiveType()I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    invoke-virtual {v15, v7, v12}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Q1(IZ)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getSubscriptionType()I

    .line 214
    .line 215
    .line 216
    move-result v17

    .line 217
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getSubscriptionEndTime()J

    .line 218
    .line 219
    .line 220
    move-result-wide v18

    .line 221
    const/16 v20, 0x1

    .line 222
    .line 223
    const/16 v16, 0x1

    .line 224
    .line 225
    invoke-virtual/range {v15 .. v20}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->N1(ZIJZ)V

    .line 226
    .line 227
    .line 228
    sget-object v7, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 229
    .line 230
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->e()V

    .line 231
    .line 232
    .line 233
    sget-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 234
    .line 235
    new-instance v15, Landroid/os/Bundle;

    .line 236
    .line 237
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 238
    .line 239
    .line 240
    if-eqz v0, :cond_8

    .line 241
    .line 242
    const-string v0, "auto"

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_8
    const-string v0, "manual"

    .line 246
    .line 247
    :goto_2
    const-string v13, "type"

    .line 248
    .line 249
    invoke-virtual {v15, v13, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const-string v0, "genre"

    .line 253
    .line 254
    const-string v13, "subscription"

    .line 255
    .line 256
    invoke-virtual {v15, v0, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string v0, "result"

    .line 260
    .line 261
    const-string v13, "1"

    .line 262
    .line 263
    invoke-virtual {v15, v0, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string v0, "coins"

    .line 267
    .line 268
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getCoins()I

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    invoke-virtual {v15, v0, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    const-string v0, "tickets"

    .line 276
    .line 277
    invoke-virtual {v15, v0, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 278
    .line 279
    .line 280
    const-string v0, "scene"

    .line 281
    .line 282
    invoke-virtual {v15, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 286
    .line 287
    const/16 v18, 0x4

    .line 288
    .line 289
    const/16 v19, 0x0

    .line 290
    .line 291
    const-string v14, "restore_result"

    .line 292
    .line 293
    const-wide/16 v16, 0x0

    .line 294
    .line 295
    move-object v13, v7

    .line 296
    invoke-static/range {v13 .. v19}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    const/16 v18, 0x6

    .line 300
    .line 301
    const-string v14, "exchange_premium_success"

    .line 302
    .line 303
    const/4 v15, 0x0

    .line 304
    invoke-static/range {v13 .. v19}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    new-instance v5, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;

    .line 312
    .line 313
    invoke-direct {v5}, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v5}, Lau/c;->l(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    :cond_9
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getSubscriptionConfirm()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_c

    .line 324
    .line 325
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 326
    .line 327
    new-instance v5, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;

    .line 328
    .line 329
    sget-object v7, Lle/h;->a:Lle/h;

    .line 330
    .line 331
    invoke-virtual {v7}, Lle/h;->b()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-virtual {v1}, Lzc/f;->f()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-direct {v5, v7, v1}, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iput-object v10, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->i:Ljava/lang/Object;

    .line 343
    .line 344
    iput-object v9, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->j:Ljava/lang/Object;

    .line 345
    .line 346
    const/4 v1, 0x0

    .line 347
    iput-object v1, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->k:Ljava/lang/Object;

    .line 348
    .line 349
    iput v6, v2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->n:I

    .line 350
    .line 351
    invoke-virtual {v0, v5, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->u(Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    if-ne v0, v4, :cond_a

    .line 356
    .line 357
    return-object v4

    .line 358
    :cond_a
    move-object v0, v9

    .line 359
    move-object v2, v10

    .line 360
    :goto_3
    move-object v9, v0

    .line 361
    move-object v10, v2

    .line 362
    goto :goto_5

    .line 363
    :cond_b
    :goto_4
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    return-object v0

    .line 368
    :cond_c
    :goto_5
    invoke-static {v9}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    if-eqz v0, :cond_d

    .line 373
    .line 374
    sget-object v11, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 375
    .line 376
    invoke-static {v0}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {v11, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 381
    .line 382
    .line 383
    move-result-object v13

    .line 384
    const/16 v16, 0x4

    .line 385
    .line 386
    const/16 v17, 0x0

    .line 387
    .line 388
    const-string v12, "exchange_premium_failed"

    .line 389
    .line 390
    const-wide/16 v14, 0x0

    .line 391
    .line 392
    invoke-static/range {v11 .. v17}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    :cond_d
    iget-boolean v0, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 396
    .line 397
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    return-object v0
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 24
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lzc/f;",
            "Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p9

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->o:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->o:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->m:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v11

    .line 37
    iget v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->o:I

    .line 38
    .line 39
    const/4 v12, 0x5

    .line 40
    const/4 v13, 0x4

    .line 41
    const/4 v14, 0x3

    .line 42
    const/4 v15, 0x2

    .line 43
    const/4 v10, 0x1

    .line 44
    const/4 v9, 0x0

    .line 45
    if-eqz v3, :cond_5

    .line 46
    .line 47
    if-eq v3, v10, :cond_4

    .line 48
    .line 49
    if-eq v3, v15, :cond_3

    .line 50
    .line 51
    if-eq v3, v14, :cond_3

    .line 52
    .line 53
    if-eq v3, v13, :cond_2

    .line 54
    .line 55
    if-ne v3, v12, :cond_1

    .line 56
    .line 57
    iget-object v1, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->i:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Ljava/lang/Throwable;

    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_8

    .line 65
    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_2
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->j:Ljava/lang/Object;

    .line 75
    .line 76
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->i:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 79
    .line 80
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->h:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v5, Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    move-object v12, v9

    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :cond_3
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->l:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;

    .line 93
    .line 94
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->k:Ljava/lang/Object;

    .line 95
    .line 96
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->j:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v5, Lzc/f;

    .line 99
    .line 100
    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->i:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v6, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 103
    .line 104
    iget-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->h:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v7, Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    move-object v12, v9

    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_4
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->k:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 117
    .line 118
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->j:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v4, Lzc/f;

    .line 121
    .line 122
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->i:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 125
    .line 126
    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->h:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v6, Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    check-cast v0, Lkotlin/Result;

    .line 134
    .line 135
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    move-object v12, v9

    .line 140
    move v13, v10

    .line 141
    goto :goto_1

    .line 142
    :cond_5
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->h()Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    move-object/from16 v0, p2

    .line 150
    .line 151
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->h:Ljava/lang/Object;

    .line 152
    .line 153
    move-object/from16 v8, p4

    .line 154
    .line 155
    iput-object v8, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->i:Ljava/lang/Object;

    .line 156
    .line 157
    move-object/from16 v7, p5

    .line 158
    .line 159
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->j:Ljava/lang/Object;

    .line 160
    .line 161
    move-object/from16 v6, p6

    .line 162
    .line 163
    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->k:Ljava/lang/Object;

    .line 164
    .line 165
    iput v10, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->o:I

    .line 166
    .line 167
    move-object/from16 v4, p1

    .line 168
    .line 169
    move-object/from16 v5, p3

    .line 170
    .line 171
    move-object/from16 v6, p4

    .line 172
    .line 173
    move-object/from16 v8, p7

    .line 174
    .line 175
    move-object v12, v9

    .line 176
    move-object/from16 v9, p8

    .line 177
    .line 178
    move v13, v10

    .line 179
    move-object v10, v1

    .line 180
    invoke-virtual/range {v3 .. v10}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;->d(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    if-ne v3, v11, :cond_6

    .line 185
    .line 186
    return-object v11

    .line 187
    :cond_6
    move-object/from16 v5, p4

    .line 188
    .line 189
    move-object/from16 v4, p5

    .line 190
    .line 191
    move-object v6, v0

    .line 192
    move-object v0, v3

    .line 193
    move-object/from16 v3, p6

    .line 194
    .line 195
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-eqz v7, :cond_10

    .line 200
    .line 201
    move-object v7, v0

    .line 202
    check-cast v7, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;

    .line 203
    .line 204
    if-eqz v7, :cond_f

    .line 205
    .line 206
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->isSubscription()Z

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-nez v8, :cond_7

    .line 211
    .line 212
    goto/16 :goto_6

    .line 213
    .line 214
    :cond_7
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getCoins()I

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    if-gtz v8, :cond_9

    .line 219
    .line 220
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isPro()Z

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    if-eqz v8, :cond_8

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_8
    move-object v3, v0

    .line 228
    move-object v0, v7

    .line 229
    move-object v7, v6

    .line 230
    move-object/from16 v23, v5

    .line 231
    .line 232
    move-object v5, v4

    .line 233
    move-object/from16 v4, v23

    .line 234
    .line 235
    goto/16 :goto_4

    .line 236
    .line 237
    :cond_9
    :goto_2
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getRechargeUserInfo()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    sget-object v9, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 242
    .line 243
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    if-eqz v8, :cond_b

    .line 248
    .line 249
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;->getUserCode()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    if-nez v13, :cond_b

    .line 258
    .line 259
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getUserCodeHaveRight()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v13

    .line 263
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    if-nez v10, :cond_b

    .line 268
    .line 269
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    new-instance v9, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$2$1;

    .line 274
    .line 275
    invoke-direct {v9, v6, v8, v12}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$2$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;Lrs/c;)V

    .line 276
    .line 277
    .line 278
    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->h:Ljava/lang/Object;

    .line 279
    .line 280
    iput-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->i:Ljava/lang/Object;

    .line 281
    .line 282
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->j:Ljava/lang/Object;

    .line 283
    .line 284
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->k:Ljava/lang/Object;

    .line 285
    .line 286
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->l:Ljava/lang/Object;

    .line 287
    .line 288
    iput v15, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->o:I

    .line 289
    .line 290
    invoke-static {v3, v9, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    if-ne v3, v11, :cond_a

    .line 295
    .line 296
    return-object v11

    .line 297
    :cond_a
    move-object v3, v7

    .line 298
    move-object v7, v6

    .line 299
    move-object v6, v5

    .line 300
    move-object v5, v4

    .line 301
    move-object v4, v0

    .line 302
    :goto_3
    move-object v0, v3

    .line 303
    move-object v3, v4

    .line 304
    move-object v4, v6

    .line 305
    goto/16 :goto_4

    .line 306
    .line 307
    :cond_b
    sget-object v8, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 308
    .line 309
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->q()Lkotlinx/coroutines/r;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->u()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getCoins()I

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    const/4 v10, 0x0

    .line 320
    if-lez v8, :cond_c

    .line 321
    .line 322
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getCoins()I

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getBonus()I

    .line 327
    .line 328
    .line 329
    move-result v13

    .line 330
    invoke-virtual {v9, v8, v13, v10}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->v1(IIZ)V

    .line 331
    .line 332
    .line 333
    :cond_c
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getReceiveType()I

    .line 334
    .line 335
    .line 336
    move-result v8

    .line 337
    invoke-virtual {v9, v8, v10}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Q1(IZ)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getSubscriptionType()I

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getSubscriptionEndTime()J

    .line 345
    .line 346
    .line 347
    move-result-wide v16

    .line 348
    const/4 v10, 0x1

    .line 349
    const/4 v13, 0x1

    .line 350
    move-object/from16 p1, v9

    .line 351
    .line 352
    move/from16 p2, v13

    .line 353
    .line 354
    move/from16 p3, v8

    .line 355
    .line 356
    move-wide/from16 p4, v16

    .line 357
    .line 358
    move/from16 p6, v10

    .line 359
    .line 360
    invoke-virtual/range {p1 .. p6}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->N1(ZIJZ)V

    .line 361
    .line 362
    .line 363
    sget-object v8, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 364
    .line 365
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->e()V

    .line 366
    .line 367
    .line 368
    sget-object v16, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 369
    .line 370
    const/16 v21, 0x6

    .line 371
    .line 372
    const/16 v22, 0x0

    .line 373
    .line 374
    const-string v17, "update_premium_success"

    .line 375
    .line 376
    const/16 v18, 0x0

    .line 377
    .line 378
    const-wide/16 v19, 0x0

    .line 379
    .line 380
    invoke-static/range {v16 .. v22}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    new-instance v9, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;

    .line 388
    .line 389
    invoke-direct {v9}, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;-><init>()V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8, v9}, Lau/c;->l(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    new-instance v9, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$2$2;

    .line 400
    .line 401
    const/4 v10, 0x0

    .line 402
    move-object/from16 p1, v9

    .line 403
    .line 404
    move-object/from16 p2, v6

    .line 405
    .line 406
    move-object/from16 p3, v5

    .line 407
    .line 408
    move-object/from16 p4, v4

    .line 409
    .line 410
    move-object/from16 p5, v3

    .line 411
    .line 412
    move-object/from16 p6, v10

    .line 413
    .line 414
    invoke-direct/range {p1 .. p6}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$2$2;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lrs/c;)V

    .line 415
    .line 416
    .line 417
    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->h:Ljava/lang/Object;

    .line 418
    .line 419
    iput-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->i:Ljava/lang/Object;

    .line 420
    .line 421
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->j:Ljava/lang/Object;

    .line 422
    .line 423
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->k:Ljava/lang/Object;

    .line 424
    .line 425
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->l:Ljava/lang/Object;

    .line 426
    .line 427
    iput v14, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->o:I

    .line 428
    .line 429
    invoke-static {v8, v9, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    if-ne v3, v11, :cond_a

    .line 434
    .line 435
    return-object v11

    .line 436
    :goto_4
    sget-object v6, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 437
    .line 438
    const/4 v8, 0x1

    .line 439
    invoke-virtual {v6, v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->h1(Z)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getSubscriptionConfirm()Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_e

    .line 447
    .line 448
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 449
    .line 450
    new-instance v6, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;

    .line 451
    .line 452
    sget-object v8, Lle/h;->a:Lle/h;

    .line 453
    .line 454
    invoke-virtual {v8}, Lle/h;->b()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v8

    .line 458
    invoke-virtual {v5}, Lzc/f;->f()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    invoke-direct {v6, v8, v5}, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->h:Ljava/lang/Object;

    .line 466
    .line 467
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->i:Ljava/lang/Object;

    .line 468
    .line 469
    iput-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->j:Ljava/lang/Object;

    .line 470
    .line 471
    iput-object v12, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->k:Ljava/lang/Object;

    .line 472
    .line 473
    iput-object v12, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->l:Ljava/lang/Object;

    .line 474
    .line 475
    const/4 v5, 0x4

    .line 476
    iput v5, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->o:I

    .line 477
    .line 478
    invoke-virtual {v0, v6, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->u(Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    if-ne v0, v11, :cond_d

    .line 483
    .line 484
    return-object v11

    .line 485
    :cond_d
    move-object v5, v7

    .line 486
    :goto_5
    move-object v0, v3

    .line 487
    move-object v6, v5

    .line 488
    move-object v5, v4

    .line 489
    goto :goto_7

    .line 490
    :cond_e
    move-object v0, v3

    .line 491
    move-object v5, v4

    .line 492
    move-object v6, v7

    .line 493
    goto :goto_7

    .line 494
    :cond_f
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 495
    .line 496
    return-object v0

    .line 497
    :cond_10
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    if-eqz v3, :cond_12

    .line 502
    .line 503
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    new-instance v7, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$3$1;

    .line 508
    .line 509
    invoke-direct {v7, v6, v5, v3, v12}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$3$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/Throwable;Lrs/c;)V

    .line 510
    .line 511
    .line 512
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->h:Ljava/lang/Object;

    .line 513
    .line 514
    iput-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->i:Ljava/lang/Object;

    .line 515
    .line 516
    iput-object v12, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->j:Ljava/lang/Object;

    .line 517
    .line 518
    iput-object v12, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->k:Ljava/lang/Object;

    .line 519
    .line 520
    iput-object v12, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->l:Ljava/lang/Object;

    .line 521
    .line 522
    const/4 v0, 0x5

    .line 523
    iput v0, v1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayUpgradePremium$1;->o:I

    .line 524
    .line 525
    invoke-static {v4, v7, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    if-ne v0, v11, :cond_11

    .line 530
    .line 531
    return-object v11

    .line 532
    :cond_11
    move-object v1, v3

    .line 533
    :goto_8
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 534
    .line 535
    invoke-static {v1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    const/4 v3, 0x4

    .line 544
    const/4 v4, 0x0

    .line 545
    const-string v5, "update_premium_failed"

    .line 546
    .line 547
    const-wide/16 v6, 0x0

    .line 548
    .line 549
    move-object/from16 p1, v0

    .line 550
    .line 551
    move-object/from16 p2, v5

    .line 552
    .line 553
    move-object/from16 p3, v1

    .line 554
    .line 555
    move-wide/from16 p4, v6

    .line 556
    .line 557
    move/from16 p6, v3

    .line 558
    .line 559
    move-object/from16 p7, v4

    .line 560
    .line 561
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 562
    .line 563
    .line 564
    :cond_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 565
    .line 566
    return-object v0
.end method

.method public final i(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->g()Lig/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Lig/a;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final j(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->g()Lig/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lig/a;->c(Landroid/content/Context;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final k()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->g()Lig/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lig/a;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final n(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/subs/Ad2PayResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$queryAd2Pay$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$queryAd2Pay$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$queryAd2Pay$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$queryAd2Pay$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$queryAd2Pay$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$queryAd2Pay$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$queryAd2Pay$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$queryAd2Pay$1;->j:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->h()Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$queryAd2Pay$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;->e(Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final o(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/subs/QuerySubsSkuResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySkuList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySkuList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySkuList$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySkuList$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySkuList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySkuList$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySkuList$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySkuList$1;->j:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->h()Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySkuList$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;->f(Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final p(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsPrice;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/subs/SubsPrice;
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
            "Landroid/content/Context;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsPrice;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySubsUpdateMode$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySubsUpdateMode$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySubsUpdateMode$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySubsUpdateMode$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySubsUpdateMode$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySubsUpdateMode$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySubsUpdateMode$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySubsUpdateMode$1;->j:I

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
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p4, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->h()Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$querySubsUpdateMode$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;->g(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsPrice;Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final q(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$recoverStr$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$recoverStr$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$recoverStr$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$recoverStr$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$recoverStr$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$recoverStr$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$recoverStr$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$recoverStr$1;->j:I

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->h()Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$recoverStr$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;->h(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    return-object p1
.end method

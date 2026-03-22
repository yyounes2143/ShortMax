.class public final Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;
.super Ljava/lang/Object;
.source "QuerySingleUnlockEpisodeMethodsResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final isDisplayedTripartite:Z

.field private final isLowPayScoreUser:Z

.field private final mainSkuV2Response:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final nextRefreshTime:J

.field private final retainSkuInfoResponses:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final retainSubscribeProduct:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private skuInfoResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final subscribeSkuResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tripartiteRewardRatio:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tripartiteRewardUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final watchAdResultResponse:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZJZ)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->mainSkuV2Response:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSkuInfoResponses:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->subscribeSkuResponses:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSubscribeProduct:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->watchAdResultResponse:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->skuInfoResponses:Ljava/util/List;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardRatio:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardUrl:Ljava/lang/String;

    .line 19
    .line 20
    iput-boolean p9, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isDisplayedTripartite:Z

    .line 21
    .line 22
    iput-wide p10, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->nextRefreshTime:J

    .line 23
    .line 24
    iput-boolean p12, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isLowPayScoreUser:Z

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZJZILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p13

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->mainSkuV2Response:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSkuInfoResponses:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget-object v4, v0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->subscribeSkuResponses:Ljava/util/List;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object/from16 v4, p3

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 30
    .line 31
    if-eqz v5, :cond_3

    .line 32
    .line 33
    iget-object v5, v0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSubscribeProduct:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move-object/from16 v5, p4

    .line 37
    .line 38
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 39
    .line 40
    if-eqz v6, :cond_4

    .line 41
    .line 42
    iget-object v6, v0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->watchAdResultResponse:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move-object/from16 v6, p5

    .line 46
    .line 47
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 48
    .line 49
    if-eqz v7, :cond_5

    .line 50
    .line 51
    iget-object v7, v0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->skuInfoResponses:Ljava/util/List;

    .line 52
    .line 53
    goto :goto_5

    .line 54
    :cond_5
    move-object/from16 v7, p6

    .line 55
    .line 56
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 57
    .line 58
    if-eqz v8, :cond_6

    .line 59
    .line 60
    iget-object v8, v0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardRatio:Ljava/lang/String;

    .line 61
    .line 62
    goto :goto_6

    .line 63
    :cond_6
    move-object/from16 v8, p7

    .line 64
    .line 65
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 66
    .line 67
    if-eqz v9, :cond_7

    .line 68
    .line 69
    iget-object v9, v0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardUrl:Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_7

    .line 72
    :cond_7
    move-object/from16 v9, p8

    .line 73
    .line 74
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 75
    .line 76
    if-eqz v10, :cond_8

    .line 77
    .line 78
    iget-boolean v10, v0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isDisplayedTripartite:Z

    .line 79
    .line 80
    goto :goto_8

    .line 81
    :cond_8
    move/from16 v10, p9

    .line 82
    .line 83
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 84
    .line 85
    if-eqz v11, :cond_9

    .line 86
    .line 87
    iget-wide v11, v0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->nextRefreshTime:J

    .line 88
    .line 89
    goto :goto_9

    .line 90
    :cond_9
    move-wide/from16 v11, p10

    .line 91
    .line 92
    :goto_9
    and-int/lit16 v1, v1, 0x400

    .line 93
    .line 94
    if-eqz v1, :cond_a

    .line 95
    .line 96
    iget-boolean v1, v0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isLowPayScoreUser:Z

    .line 97
    .line 98
    goto :goto_a

    .line 99
    :cond_a
    move/from16 v1, p12

    .line 100
    .line 101
    :goto_a
    move-object p1, v2

    .line 102
    move-object p2, v3

    .line 103
    move-object/from16 p3, v4

    .line 104
    .line 105
    move-object/from16 p4, v5

    .line 106
    .line 107
    move-object/from16 p5, v6

    .line 108
    .line 109
    move-object/from16 p6, v7

    .line 110
    .line 111
    move-object/from16 p7, v8

    .line 112
    .line 113
    move-object/from16 p8, v9

    .line 114
    .line 115
    move/from16 p9, v10

    .line 116
    .line 117
    move-wide/from16 p10, v11

    .line 118
    .line 119
    move/from16 p12, v1

    .line 120
    .line 121
    invoke-virtual/range {p0 .. p12}, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->copy(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZJZ)Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->mainSkuV2Response:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->nextRefreshTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component11()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isLowPayScoreUser:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSkuInfoResponses:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->subscribeSkuResponses:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSubscribeProduct:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->watchAdResultResponse:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->skuInfoResponses:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardRatio:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isDisplayedTripartite:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZJZ)Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;
    .locals 14
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJZ)",
            "Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v13, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;

    .line 2
    .line 3
    move-object v0, v13

    .line 4
    move-object v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p6

    .line 14
    .line 15
    move-object/from16 v7, p7

    .line 16
    .line 17
    move-object/from16 v8, p8

    .line 18
    .line 19
    move/from16 v9, p9

    .line 20
    .line 21
    move-wide/from16 v10, p10

    .line 22
    .line 23
    move/from16 v12, p12

    .line 24
    .line 25
    invoke-direct/range {v0 .. v12}, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;-><init>(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZJZ)V

    .line 26
    .line 27
    .line 28
    return-object v13
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->mainSkuV2Response:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->mainSkuV2Response:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSkuInfoResponses:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSkuInfoResponses:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->subscribeSkuResponses:Ljava/util/List;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->subscribeSkuResponses:Ljava/util/List;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSubscribeProduct:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSubscribeProduct:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->watchAdResultResponse:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->watchAdResultResponse:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->skuInfoResponses:Ljava/util/List;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->skuInfoResponses:Ljava/util/List;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardRatio:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardRatio:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardUrl:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardUrl:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isDisplayedTripartite:Z

    .line 102
    .line 103
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isDisplayedTripartite:Z

    .line 104
    .line 105
    if-eq v1, v3, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->nextRefreshTime:J

    .line 109
    .line 110
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->nextRefreshTime:J

    .line 111
    .line 112
    cmp-long v1, v3, v5

    .line 113
    .line 114
    if-eqz v1, :cond_b

    .line 115
    .line 116
    return v2

    .line 117
    :cond_b
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isLowPayScoreUser:Z

    .line 118
    .line 119
    iget-boolean p1, p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isLowPayScoreUser:Z

    .line 120
    .line 121
    if-eq v1, p1, :cond_c

    .line 122
    .line 123
    return v2

    .line 124
    :cond_c
    return v0
.end method

.method public final getMainSkuV2Response()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->mainSkuV2Response:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNextRefreshTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->nextRefreshTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRetainSkuInfoResponses()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSkuInfoResponses:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRetainSubscribeProduct()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSubscribeProduct:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSkuInfoResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->skuInfoResponses:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubscribeSkuResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->subscribeSkuResponses:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTripartiteRewardRatio()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardRatio:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTripartiteRewardUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWatchAdResultResponse()Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->watchAdResultResponse:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->mainSkuV2Response:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSkuInfoResponses:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->subscribeSkuResponses:Ljava/util/List;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSubscribeProduct:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->watchAdResultResponse:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->skuInfoResponses:Ljava/util/List;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardRatio:Ljava/lang/String;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    move v2, v1

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardUrl:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    goto :goto_7

    .line 97
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    :goto_7
    add-int/2addr v0, v1

    .line 102
    mul-int/lit8 v0, v0, 0x1f

    .line 103
    .line 104
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isDisplayedTripartite:Z

    .line 105
    .line 106
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    add-int/2addr v0, v1

    .line 111
    mul-int/lit8 v0, v0, 0x1f

    .line 112
    .line 113
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->nextRefreshTime:J

    .line 114
    .line 115
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    add-int/2addr v0, v1

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    .line 121
    .line 122
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isLowPayScoreUser:Z

    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    add-int/2addr v0, v1

    .line 129
    return v0
.end method

.method public final isDisplayedTripartite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isDisplayedTripartite:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isLowPayScoreUser()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isLowPayScoreUser:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setSkuInfoResponses(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->skuInfoResponses:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "QuerySingleUnlockEpisodeMethodsResult(mainSkuV2Response="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->mainSkuV2Response:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", retainSkuInfoResponses="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSkuInfoResponses:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", subscribeSkuResponses="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->subscribeSkuResponses:Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", retainSubscribeProduct="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->retainSubscribeProduct:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", watchAdResultResponse="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->watchAdResultResponse:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", skuInfoResponses="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->skuInfoResponses:Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", tripartiteRewardRatio="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardRatio:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", tripartiteRewardUrl="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->tripartiteRewardUrl:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", isDisplayedTripartite="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isDisplayedTripartite:Z

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", nextRefreshTime="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->nextRefreshTime:J

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", isLowPayScoreUser="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->isLowPayScoreUser:Z

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const/16 v1, 0x29

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method

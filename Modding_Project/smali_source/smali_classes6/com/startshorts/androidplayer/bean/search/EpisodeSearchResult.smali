.class public final Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;
.super Ljava/lang/Object;
.source "EpisodeSearchResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final collectNum:J

.field private final coverId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private index:I

.field private labelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/LabelWithId;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final playNum:J

.field private final shortPlayCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shortPlayId:I

.field private final shortPlayName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final summary:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final titleHighlight:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private upack:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/LabelWithId;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "shortPlayCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayCode:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayName:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayId:I

    .line 5
    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->summary:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->coverId:Ljava/lang/String;

    .line 7
    iput-wide p6, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->collectNum:J

    .line 8
    iput p8, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->index:I

    .line 9
    iput-object p9, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->titleHighlight:Ljava/lang/String;

    .line 10
    iput-object p10, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->upack:Ljava/lang/String;

    .line 11
    iput-wide p11, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->playNum:J

    .line 12
    iput-object p13, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->labelList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v10, v1

    goto :goto_0

    :cond_0
    move/from16 v10, p8

    :goto_0
    and-int/lit16 v1, v0, 0x80

    .line 13
    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object/from16 v11, p9

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object/from16 v12, p10

    :goto_2
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    move-wide v13, v0

    goto :goto_3

    :cond_3
    move-wide/from16 v13, p11

    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v15, p13

    invoke-direct/range {v2 .. v15}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JLjava/util/List;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p14

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayCode:Ljava/lang/String;

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
    iget-object v3, v0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayName:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object/from16 v3, p2

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    iget v4, v0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayId:I

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move/from16 v4, p3

    .line 29
    .line 30
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 31
    .line 32
    if-eqz v5, :cond_3

    .line 33
    .line 34
    iget-object v5, v0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->summary:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_3
    move-object/from16 v5, p4

    .line 38
    .line 39
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 40
    .line 41
    if-eqz v6, :cond_4

    .line 42
    .line 43
    iget-object v6, v0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->coverId:Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move-object/from16 v6, p5

    .line 47
    .line 48
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 49
    .line 50
    if-eqz v7, :cond_5

    .line 51
    .line 52
    iget-wide v7, v0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->collectNum:J

    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_5
    move-wide/from16 v7, p6

    .line 56
    .line 57
    :goto_5
    and-int/lit8 v9, v1, 0x40

    .line 58
    .line 59
    if-eqz v9, :cond_6

    .line 60
    .line 61
    iget v9, v0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->index:I

    .line 62
    .line 63
    goto :goto_6

    .line 64
    :cond_6
    move/from16 v9, p8

    .line 65
    .line 66
    :goto_6
    and-int/lit16 v10, v1, 0x80

    .line 67
    .line 68
    if-eqz v10, :cond_7

    .line 69
    .line 70
    iget-object v10, v0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->titleHighlight:Ljava/lang/String;

    .line 71
    .line 72
    goto :goto_7

    .line 73
    :cond_7
    move-object/from16 v10, p9

    .line 74
    .line 75
    :goto_7
    and-int/lit16 v11, v1, 0x100

    .line 76
    .line 77
    if-eqz v11, :cond_8

    .line 78
    .line 79
    iget-object v11, v0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->upack:Ljava/lang/String;

    .line 80
    .line 81
    goto :goto_8

    .line 82
    :cond_8
    move-object/from16 v11, p10

    .line 83
    .line 84
    :goto_8
    and-int/lit16 v12, v1, 0x200

    .line 85
    .line 86
    if-eqz v12, :cond_9

    .line 87
    .line 88
    iget-wide v12, v0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->playNum:J

    .line 89
    .line 90
    goto :goto_9

    .line 91
    :cond_9
    move-wide/from16 v12, p11

    .line 92
    .line 93
    :goto_9
    and-int/lit16 v1, v1, 0x400

    .line 94
    .line 95
    if-eqz v1, :cond_a

    .line 96
    .line 97
    iget-object v1, v0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->labelList:Ljava/util/List;

    .line 98
    .line 99
    goto :goto_a

    .line 100
    :cond_a
    move-object/from16 v1, p13

    .line 101
    .line 102
    :goto_a
    move-object p1, v2

    .line 103
    move-object/from16 p2, v3

    .line 104
    .line 105
    move/from16 p3, v4

    .line 106
    .line 107
    move-object/from16 p4, v5

    .line 108
    .line 109
    move-object/from16 p5, v6

    .line 110
    .line 111
    move-wide/from16 p6, v7

    .line 112
    .line 113
    move/from16 p8, v9

    .line 114
    .line 115
    move-object/from16 p9, v10

    .line 116
    .line 117
    move-object/from16 p10, v11

    .line 118
    .line 119
    move-wide/from16 p11, v12

    .line 120
    .line 121
    move-object/from16 p13, v1

    .line 122
    .line 123
    invoke-virtual/range {p0 .. p13}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->playNum:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component11()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/LabelWithId;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->labelList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayId:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->summary:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->coverId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->collectNum:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->titleHighlight:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->upack:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/LabelWithId;",
            ">;)",
            "Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "shortPlayCode"

    .line 2
    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    move/from16 v4, p3

    .line 15
    .line 16
    move-object/from16 v5, p4

    .line 17
    .line 18
    move-object/from16 v6, p5

    .line 19
    .line 20
    move-wide/from16 v7, p6

    .line 21
    .line 22
    move/from16 v9, p8

    .line 23
    .line 24
    move-object/from16 v10, p9

    .line 25
    .line 26
    move-object/from16 v11, p10

    .line 27
    .line 28
    move-wide/from16 v12, p11

    .line 29
    .line 30
    move-object/from16 v14, p13

    .line 31
    .line 32
    invoke-direct/range {v1 .. v14}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 33
    .line 34
    .line 35
    return-object v0
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayCode:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayCode:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayName:Ljava/lang/String;

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayId:I

    .line 36
    .line 37
    iget v3, p1, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayId:I

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->summary:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->summary:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->coverId:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->coverId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->collectNum:J

    .line 65
    .line 66
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->collectNum:J

    .line 67
    .line 68
    cmp-long v1, v3, v5

    .line 69
    .line 70
    if-eqz v1, :cond_7

    .line 71
    .line 72
    return v2

    .line 73
    :cond_7
    iget v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->index:I

    .line 74
    .line 75
    iget v3, p1, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->index:I

    .line 76
    .line 77
    if-eq v1, v3, :cond_8

    .line 78
    .line 79
    return v2

    .line 80
    :cond_8
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->titleHighlight:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->titleHighlight:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_9

    .line 89
    .line 90
    return v2

    .line 91
    :cond_9
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->upack:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->upack:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_a

    .line 100
    .line 101
    return v2

    .line 102
    :cond_a
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->playNum:J

    .line 103
    .line 104
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->playNum:J

    .line 105
    .line 106
    cmp-long v1, v3, v5

    .line 107
    .line 108
    if-eqz v1, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->labelList:Ljava/util/List;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->labelList:Ljava/util/List;

    .line 114
    .line 115
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_c

    .line 120
    .line 121
    return v2

    .line 122
    :cond_c
    return v0
.end method

.method public final getCollectNum()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->collectNum:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getCoverId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->coverId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLabelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/LabelWithId;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->labelList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlayNum()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->playNum:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShortPlayCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlayId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShortPlayName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSummary()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->summary:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitleHighlight()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->titleHighlight:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUpack()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->upack:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayCode:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayName:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayId:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->summary:Ljava/lang/String;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    move v1, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_1
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->coverId:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    move v1, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :goto_2
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->collectNum:J

    .line 59
    .line 60
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    .line 67
    iget v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->index:I

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->titleHighlight:Ljava/lang/String;

    .line 77
    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    move v1, v2

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_3
    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    .line 88
    .line 89
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->upack:Ljava/lang/String;

    .line 90
    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    move v1, v2

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    :goto_4
    add-int/2addr v0, v1

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    .line 101
    .line 102
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->playNum:J

    .line 103
    .line 104
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    add-int/2addr v0, v1

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    .line 110
    .line 111
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->labelList:Ljava/util/List;

    .line 112
    .line 113
    if-nez v1, :cond_5

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    :goto_5
    add-int/2addr v0, v2

    .line 121
    return v0
.end method

.method public final setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->index:I

    .line 2
    .line 3
    return-void
.end method

.method public final setLabelList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/LabelWithId;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->labelList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setUpack(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->upack:Ljava/lang/String;

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
    const-string v1, "EpisodeSearchResult(shortPlayCode="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayCode:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", shortPlayName="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", shortPlayId="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->shortPlayId:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", summary="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->summary:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", coverId="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->coverId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", collectNum="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->collectNum:J

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", index="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->index:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", titleHighlight="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->titleHighlight:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", upack="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->upack:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", playNum="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->playNum:J

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", labelList="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->labelList:Ljava/util/List;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

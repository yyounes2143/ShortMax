.class public final Lcom/startshorts/androidplayer/bean/discover/ModuleInfo$Companion;
.super Ljava/lang/Object;
.source "ModuleInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
    .locals 13

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v4, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v4, p1

    .line 11
    :goto_0
    and-int/lit8 v1, v0, 0x2

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object v5, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v5, p2

    .line 18
    :goto_1
    and-int/lit8 v1, v0, 0x4

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    move-object v6, v2

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move-object/from16 v6, p3

    .line 25
    .line 26
    :goto_2
    and-int/lit8 v1, v0, 0x8

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    move v7, v1

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move/from16 v7, p4

    .line 34
    .line 35
    :goto_3
    and-int/lit8 v1, v0, 0x20

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    move-object v9, v2

    .line 40
    goto :goto_4

    .line 41
    :cond_4
    move-object/from16 v9, p6

    .line 42
    .line 43
    :goto_4
    and-int/lit8 v1, v0, 0x40

    .line 44
    .line 45
    if-eqz v1, :cond_5

    .line 46
    .line 47
    move-object v10, v2

    .line 48
    goto :goto_5

    .line 49
    :cond_5
    move-object/from16 v10, p7

    .line 50
    .line 51
    :goto_5
    and-int/lit16 v1, v0, 0x80

    .line 52
    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    move-object v11, v2

    .line 56
    goto :goto_6

    .line 57
    :cond_6
    move-object/from16 v11, p8

    .line 58
    .line 59
    :goto_6
    and-int/lit16 v0, v0, 0x100

    .line 60
    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    move-object v12, v2

    .line 64
    goto :goto_7

    .line 65
    :cond_7
    move-object/from16 v12, p9

    .line 66
    .line 67
    :goto_7
    move-object v3, p0

    .line 68
    move-object/from16 v8, p5

    .line 69
    .line 70
    invoke-virtual/range {v3 .. v12}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo$Companion;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method


# virtual methods
.method public final create(Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
    .locals 15
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v14, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;->getBannerId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez p1, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    const-string v2, "ranking_list_tag"

    .line 5
    :goto_1
    new-instance v9, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;->getRankingId()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;->getRankingName()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-direct {v9, v3, v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    const/16 v12, 0x600

    const/4 v13, 0x0

    .line 6
    const-string v3, ""

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v14

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v13}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method

.method public final create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, ""

    if-nez p1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    if-nez p3, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    .line 2
    :goto_1
    new-instance v0, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p2

    move/from16 v5, p4

    move-object/from16 v7, p7

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    move-object/from16 v11, p9

    move-object/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

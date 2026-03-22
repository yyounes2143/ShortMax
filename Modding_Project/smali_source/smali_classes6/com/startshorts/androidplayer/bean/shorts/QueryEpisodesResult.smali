.class public final Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;
.super Ljava/lang/Object;
.source "QueryEpisodesResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nQueryEpisodesResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryEpisodesResult.kt\ncom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,25:1\n1863#2,2:26\n1863#2,2:28\n*S KotlinDebug\n*F\n+ 1 QueryEpisodesResult.kt\ncom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult\n*L\n16#1:26,2\n20#1:28,2\n*E\n"
    }
.end annotation


# instance fields
.field private final currentEpisodesReponse:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private finalDramId:I

.field private final nextEpisodesReponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final previousEpisodesReponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shortPlayContentRatingResponse:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;I",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->previousEpisodesReponse:Ljava/util/List;

    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->finalDramId:I

    .line 4
    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->currentEpisodesReponse:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 5
    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->nextEpisodesReponse:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->shortPlayContentRatingResponse:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, -0x1

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;-><init>(Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->previousEpisodesReponse:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->finalDramId:I

    .line 12
    .line 13
    :cond_1
    move p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->currentEpisodesReponse:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->nextEpisodesReponse:Ljava/util/List;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->shortPlayContentRatingResponse:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    move p4, p7

    .line 38
    move-object p5, v0

    .line 39
    move-object p6, v1

    .line 40
    move-object p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->copy(Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->previousEpisodesReponse:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->finalDramId:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->currentEpisodesReponse:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->nextEpisodesReponse:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->shortPlayContentRatingResponse:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;I",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;",
            ")",
            "Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;-><init>(Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->previousEpisodesReponse:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->previousEpisodesReponse:Ljava/util/List;

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->finalDramId:I

    .line 25
    .line 26
    iget v3, p1, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->finalDramId:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->currentEpisodesReponse:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->currentEpisodesReponse:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->nextEpisodesReponse:Ljava/util/List;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->nextEpisodesReponse:Ljava/util/List;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->shortPlayContentRatingResponse:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->shortPlayContentRatingResponse:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 56
    .line 57
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    return v0
.end method

.method public final getCurrentEpisodesReponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->currentEpisodesReponse:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFinalDramId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->finalDramId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNextEpisodesReponse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->nextEpisodesReponse:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPreviousEpisodesReponse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->previousEpisodesReponse:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlayContentRatingResponse()Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->shortPlayContentRatingResponse:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->previousEpisodesReponse:Ljava/util/List;

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
    iget v2, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->finalDramId:I

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->currentEpisodesReponse:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    move v2, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_1
    add-int/2addr v0, v2

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->nextEpisodesReponse:Ljava/util/List;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    move v2, v1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_2
    add-int/2addr v0, v2

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->shortPlayContentRatingResponse:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :goto_3
    add-int/2addr v0, v1

    .line 59
    return v0
.end method

.method public final setFinalDramId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->finalDramId:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
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
    const-string v1, "QueryEpisodesResult(previousEpisodesReponse="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->previousEpisodesReponse:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", finalDramId="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->finalDramId:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", currentEpisodesReponse="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->currentEpisodesReponse:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", nextEpisodesReponse="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->nextEpisodesReponse:Ljava/util/List;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", shortPlayContentRatingResponse="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->shortPlayContentRatingResponse:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x29

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method

.method public final updateIsMergeShorts(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->previousEpisodesReponse:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setMergeShortPlay(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->currentEpisodesReponse:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setMergeShortPlay(Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->nextEpisodesReponse:Ljava/util/List;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    check-cast v0, Ljava/lang/Iterable;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setMergeShortPlay(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    return-void
.end method

.class public final Lcom/startshorts/androidplayer/bean/search/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final codeInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final memberInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shortPlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/startshorts/androidplayer/bean/search/RedeemCode;Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/search/RedeemCode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/search/RedeemCode;",
            "Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;",
            ")V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "shortPlays"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->shortPlays:Ljava/util/List;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->codeInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->memberInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/search/SearchResult;Ljava/util/List;Lcom/startshorts/androidplayer/bean/search/RedeemCode;Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/search/SearchResult;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->shortPlays:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->codeInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->memberInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->copy(Ljava/util/List;Lcom/startshorts/androidplayer/bean/search/RedeemCode;Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;)Lcom/startshorts/androidplayer/bean/search/SearchResult;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->shortPlays:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/startshorts/androidplayer/bean/search/RedeemCode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->codeInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->memberInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/startshorts/androidplayer/bean/search/RedeemCode;Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;)Lcom/startshorts/androidplayer/bean/search/SearchResult;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/search/RedeemCode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/search/RedeemCode;",
            "Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;",
            ")",
            "Lcom/startshorts/androidplayer/bean/search/SearchResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "shortPlays"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/startshorts/androidplayer/bean/search/SearchResult;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/search/SearchResult;-><init>(Ljava/util/List;Lcom/startshorts/androidplayer/bean/search/RedeemCode;Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;)V

    .line 10
    .line 11
    .line 12
    return-object v0
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/search/SearchResult;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/search/SearchResult;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->shortPlays:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/search/SearchResult;->shortPlays:Ljava/util/List;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->codeInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/search/SearchResult;->codeInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->memberInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/search/SearchResult;->memberInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;

    .line 38
    .line 39
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->codeInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMemberInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->memberInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->shortPlays:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->shortPlays:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->codeInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

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
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->hashCode()I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->memberInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :goto_1
    add-int/2addr v0, v2

    .line 33
    return v0
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
    const-string v1, "SearchResult(shortPlays="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->shortPlays:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", codeInfo="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->codeInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", memberInfo="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/search/SearchResult;->memberInfo:Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x29

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

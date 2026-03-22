.class public final Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS;
.super Ljava/lang/Object;
.source "TagRemoteDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Long;IIILrs/c;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "III",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/tag/TagFilterShortsListResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p5, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS$queryTagFilterEpisodeList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS$queryTagFilterEpisodeList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS$queryTagFilterEpisodeList$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS$queryTagFilterEpisodeList$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS$queryTagFilterEpisodeList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS$queryTagFilterEpisodeList$1;-><init>(Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS$queryTagFilterEpisodeList$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS$queryTagFilterEpisodeList$1;->j:I

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
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p5, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p5}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p5, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p5}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p5}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p5

    .line 68
    new-instance v2, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS$queryTagFilterEpisodeList$2;

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    move-object v4, v2

    .line 72
    move v5, p3

    .line 73
    move v6, p4

    .line 74
    move-object v7, p1

    .line 75
    move v8, p2

    .line 76
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS$queryTagFilterEpisodeList$2;-><init>(IILjava/lang/Long;ILrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS$queryTagFilterEpisodeList$1;->j:I

    .line 80
    .line 81
    invoke-virtual {p5, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v1, :cond_3

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_3
    :goto_1
    return-object p1
.end method

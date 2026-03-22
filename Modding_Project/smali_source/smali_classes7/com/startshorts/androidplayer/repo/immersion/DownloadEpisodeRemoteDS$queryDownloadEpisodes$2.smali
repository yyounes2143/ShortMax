.class final Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadEpisodeRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS;->a(ILrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lrs/c<",
        "-",
        "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
        "Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.immersion.DownloadEpisodeRemoteDS$queryDownloadEpisodes$2"
    f = "DownloadEpisodeRemoteDS.kt"
    l = {
        0x16,
        0x19,
        0x1b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:I


# direct methods
.method constructor <init>(ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;->i:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;->i:I

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;-><init>(ILrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;->invoke(Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;->h:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Luh/i0;->a:Luh/i0;

    .line 42
    .line 43
    invoke-virtual {p1}, Luh/i0;->c()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_5

    .line 48
    .line 49
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget v1, p0, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;->i:I

    .line 56
    .line 57
    iput v4, p0, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;->h:I

    .line 58
    .line 59
    invoke-interface {p1, v1, p0}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->C(ILrs/c;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-ne p1, v0, :cond_4

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_4
    :goto_0
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_5
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->i1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget v1, p0, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;->i:I

    .line 98
    .line 99
    iput v3, p0, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;->h:I

    .line 100
    .line 101
    invoke-interface {p1, v1, p0}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->U1(ILrs/c;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-ne p1, v0, :cond_6

    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_6
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_7
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget v1, p0, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;->i:I

    .line 118
    .line 119
    iput v2, p0, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRemoteDS$queryDownloadEpisodes$2;->h:I

    .line 120
    .line 121
    invoke-interface {p1, v1, p0}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->C(ILrs/c;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-ne p1, v0, :cond_8

    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_8
    :goto_2
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 129
    .line 130
    :goto_3
    return-object p1
.end method

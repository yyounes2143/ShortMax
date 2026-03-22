.class final Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EpisodeRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->x(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.immersion.EpisodeRepo$reportEpisodeWatched$1"
    f = "EpisodeRepo.kt"
    l = {
        0x53
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic j:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;->j:I

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;->j:I

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->e(Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;)Lcom/startshorts/androidplayer/repo/immersion/EpisodeRemoteDS;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget v3, p0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;->j:I

    .line 46
    .line 47
    iput v2, p0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;->h:I

    .line 48
    .line 49
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRemoteDS;->d(IILrs/c;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v0, :cond_2

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-static {}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->d()Lms/i;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/util/List;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-direct {v2, v3, v0}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;-><init>(II)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object v0, Lud/a;->a:Lud/a;

    .line 106
    .line 107
    invoke-virtual {v0}, Lud/a;->A()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_3

    .line 112
    .line 113
    sget-object v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->d()V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo$reportEpisodeWatched$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 119
    .line 120
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    invoke-static {}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->d()Lms/i;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Ljava/util/List;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 148
    .line 149
    return-object p1
.end method

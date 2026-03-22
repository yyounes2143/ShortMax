.class final Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EpisodeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;->F(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;II)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1"
    f = "EpisodeViewModel.kt"
    l = {
        0x3e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Landroid/content/Context;

.field final synthetic j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "II",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->i:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->k:I

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->l:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->m:Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->i:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->k:I

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->l:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->m:Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;Lrs/c;)V

    .line 16
    .line 17
    .line 18
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->h:I

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
    sget-object v3, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->i:Landroid/content/Context;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    iget v6, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->k:I

    .line 44
    .line 45
    iget v7, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->l:I

    .line 46
    .line 47
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->h:I

    .line 48
    .line 49
    move-object v8, p0

    .line 50
    invoke-virtual/range {v3 .. v8}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->t(Landroid/content/Context;IIILrs/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->m:Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/ShortsListNewBean;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/b$a;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsListNewBean;->getDramaListResponseList()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/List;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    :cond_3
    invoke-direct {v3, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/b$a;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p1
.end method

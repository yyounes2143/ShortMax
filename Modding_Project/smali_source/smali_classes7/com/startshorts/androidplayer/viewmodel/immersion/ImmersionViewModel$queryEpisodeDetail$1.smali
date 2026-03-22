.class final Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImmersionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->f0(Landroid/content/Context;III)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryEpisodeDetail$1"
    f = "ImmersionViewModel.kt"
    l = {
        0x11e,
        0x122
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Landroid/content/Context;

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

.field final synthetic l:I

.field final synthetic m:I

.field final synthetic n:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IIILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;",
            "III",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->j:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->k:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->l:I

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->m:I

    .line 8
    .line 9
    iput p5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->n:I

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->j:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->k:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->l:I

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->m:I

    .line 10
    .line 11
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->n:I

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IIILrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Lkotlin/Result;

    .line 31
    .line 32
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->j:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->k:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    const-string v1, ""

    .line 53
    .line 54
    :cond_3
    move-object v5, v1

    .line 55
    iget v6, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->l:I

    .line 56
    .line 57
    iget v7, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->m:I

    .line 58
    .line 59
    iput v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->i:I

    .line 60
    .line 61
    move-object v3, p1

    .line 62
    move-object v8, p0

    .line 63
    invoke-virtual/range {v3 .. v8}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->r(Landroid/content/Context;Ljava/lang/String;IILrs/c;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v0, :cond_4

    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->k:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 71
    .line 72
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->n:I

    .line 73
    .line 74
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_6

    .line 79
    .line 80
    move-object v4, p1

    .line 81
    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 82
    .line 83
    if-eqz v4, :cond_5

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/d$b;

    .line 90
    .line 91
    invoke-direct {v0, v3, v4}, Lcom/startshorts/androidplayer/viewmodel/immersion/d$b;-><init>(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1$1$1;

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    invoke-direct {v3, v4}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1$1$1;-><init>(Lrs/c;)V

    .line 106
    .line 107
    .line 108
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->h:Ljava/lang/Object;

    .line 109
    .line 110
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;->i:I

    .line 111
    .line 112
    invoke-static {v1, v3, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-ne p1, v0, :cond_6

    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p1
.end method

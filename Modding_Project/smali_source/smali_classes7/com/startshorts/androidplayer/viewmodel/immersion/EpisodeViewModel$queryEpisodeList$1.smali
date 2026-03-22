.class final Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EpisodeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;->E(III)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.EpisodeViewModel$queryEpisodeList$1"
    f = "EpisodeViewModel.kt"
    l = {
        0x35
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;


# direct methods
.method constructor <init>(IIILcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->i:I

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->j:I

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->k:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->l:Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->i:I

    .line 4
    .line 5
    iget v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->j:I

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->k:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->l:Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;-><init>(IIILcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;Lrs/c;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->h:I

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
    sget-object v1, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 34
    .line 35
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->i:I

    .line 36
    .line 37
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->j:I

    .line 38
    .line 39
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->k:I

    .line 40
    .line 41
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->h:I

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v7, 0x1

    .line 45
    const/4 v8, 0x0

    .line 46
    move-object v6, p0

    .line 47
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->u(Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;Landroid/content/Context;IIILrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->l:Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    move-object v1, p1

    .line 63
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/ShortsListNewBean;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/immersion/b$b;

    .line 70
    .line 71
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/b$b;-><init>(Lcom/startshorts/androidplayer/bean/shorts/ShortsListNewBean;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel$queryEpisodeList$1;->l:Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    invoke-static {p1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->x(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p1
.end method

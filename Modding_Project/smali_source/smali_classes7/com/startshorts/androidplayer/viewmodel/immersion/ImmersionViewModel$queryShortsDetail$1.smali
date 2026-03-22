.class final Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImmersionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->w0(I)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryShortsDetail$1"
    f = "ImmersionViewModel.kt"
    l = {
        0x112
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

.field final synthetic j:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;->j:I

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 4
    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;->j:I

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const-string v1, ""

    .line 44
    .line 45
    :cond_2
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;->j:I

    .line 46
    .line 47
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;->h:I

    .line 48
    .line 49
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->y(Ljava/lang/String;ILrs/c;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    move-object v1, p1

    .line 65
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-gtz v3, :cond_5

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->setEpisodeNum(I)V

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/immersion/d$h;

    .line 86
    .line 87
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/d$h;-><init>(Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 94
    .line 95
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_7

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->z(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p1
.end method

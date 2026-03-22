.class final Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ComingSoonViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;->B(Ljava/lang/String;I)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.comingsoon.ComingSoonViewModel$checkShortsReservation$1"
    f = "ComingSoonViewModel.kt"
    l = {
        0x35
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:I

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->j:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->k:Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->j:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->k:Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;-><init>(Ljava/lang/String;ILcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/comingsoon/ComingSoonRepo;->a:Lcom/startshorts/androidplayer/repo/comingsoon/ComingSoonRepo;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->i:Ljava/lang/String;

    .line 36
    .line 37
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->j:I

    .line 38
    .line 39
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->h:I

    .line 40
    .line 41
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/comingsoon/ComingSoonRepo;->d(Ljava/lang/String;ILrs/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->k:Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 49
    .line 50
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel$checkShortsReservation$1;->j:I

    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/comingsoon/b$a;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const/4 v2, 0x0

    .line 68
    :goto_1
    invoke-direct {v3, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/b$a;-><init>(IZ)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p1
.end method

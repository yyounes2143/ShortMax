.class final Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PurchaseViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->a0()Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel$queryExpansionCoinSku$1"
    f = "PurchaseViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->N()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const-string p1, "other"

    .line 34
    .line 35
    :cond_0
    move-object v3, p1

    .line 36
    const/16 v8, 0x38

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->W0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 46
    .line 47
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->l()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/purchase/b$b;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->O()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$b;-><init>(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.class final Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PurchaseRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->s(ZZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryNormalCoinSkuList$2"
    f = "PurchaseRepo.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Z

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;ZLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->i:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->k:Z

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
    new-instance p1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->i:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->k:Z

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;-><init>(ZLjava/lang/String;ZLrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->e(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;)Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->i:Z

    .line 40
    .line 41
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->j:Ljava/lang/String;

    .line 42
    .line 43
    iput v2, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->h:I

    .line 44
    .line 45
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;->e(ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->j:Ljava/lang/String;

    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;->k:Z

    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    check-cast p1, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 63
    .line 64
    sget-object v2, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 65
    .line 66
    invoke-static {v2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->d(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;)Lhg/a;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3, v0, p1}, Lhg/a;->g(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v1, p1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->c(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;ZLcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p1
.end method

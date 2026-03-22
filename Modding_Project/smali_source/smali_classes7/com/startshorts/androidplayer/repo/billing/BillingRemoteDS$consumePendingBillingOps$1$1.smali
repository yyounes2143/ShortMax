.class final Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillingRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->x()V
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
    c = "com.startshorts.androidplayer.repo.billing.BillingRemoteDS$consumePendingBillingOps$1$1"
    f = "BillingRemoteDS.kt"
    l = {
        0x123
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

.field final synthetic j:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic k:Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/util/Map$Entry;Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->i:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->j:Ljava/util/Map$Entry;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->k:Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;

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
    new-instance p1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->i:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->j:Ljava/util/Map$Entry;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->k:Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/util/Map$Entry;Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->h:I

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
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->i:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->j:Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->k:Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;->getExtra()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.purchase.ConsumeData"

    .line 44
    .line 45
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;

    .line 49
    .line 50
    iput v2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;->h:I

    .line 51
    .line 52
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->w(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v0, :cond_2

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p1
.end method

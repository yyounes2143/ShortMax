.class final Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeRetainDiscountSubsPresent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.manager.purchase.HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3"
    f = "HomeRetainDiscountSubsPresent.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;->i:Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;->i:Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;-><init>(Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1$1$3;->i:Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->c(Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.class final Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeRetainDiscountSubProcessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor;->b(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.dialog.home.HomeRetainDiscountSubProcessor$process$2"
    f = "HomeRetainDiscountSubProcessor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor;

.field final synthetic j:Lcom/startshorts/androidplayer/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor;Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor;",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;->i:Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;->j:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;->i:Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;->j:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;-><init>(Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor;Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)V

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;->i:Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;->j:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor;->c(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->g()Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor$process$2;->j:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;->getSubscriptionDiscountProduct()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 44
    .line 45
    const-string v2, "discover"

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1, v2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->y(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_1
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

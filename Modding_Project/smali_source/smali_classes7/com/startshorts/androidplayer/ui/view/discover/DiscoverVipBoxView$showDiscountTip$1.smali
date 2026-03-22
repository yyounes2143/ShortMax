.class final Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverVipBoxView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->E()V
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
    c = "com.startshorts.androidplayer.ui.view.discover.DiscoverVipBoxView$showDiscountTip$1"
    f = "DiscoverVipBoxView.kt"
    l = {
        0x67
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;->i:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;->i:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;->h:I

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
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1$1;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;->i:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v1, v3, v4}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1$1;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;Lrs/c;)V

    .line 37
    .line 38
    .line 39
    iput v2, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;->h:I

    .line 40
    .line 41
    invoke-static {p1, v1, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

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
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p1
.end method

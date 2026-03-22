.class final Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActPaymentDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.manager.billing.ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2"
    f = "ActPaymentDelegate.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;->i:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;->i:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;-><init>(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2;->i:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->l(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Laa/a;->a:Laa/a;

    .line 17
    .line 18
    invoke-virtual {p1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/hades/aar/activity/IDActivity;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object p1, v0

    .line 33
    :goto_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    move-object v0, p1

    .line 38
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 39
    .line 40
    :cond_1
    if-eqz v0, :cond_2

    .line 41
    .line 42
    sget p1, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_not_find_lost_order_tip:I

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

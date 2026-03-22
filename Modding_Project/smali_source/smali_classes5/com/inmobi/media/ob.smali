.class public final Lcom/inmobi/media/ob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/ub;

.field public final synthetic b:Lcom/inmobi/media/qb;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ub;Lcom/inmobi/media/qb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/ob;->a:Lcom/inmobi/media/ub;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/ob;->b:Lcom/inmobi/media/qb;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;Lcom/inmobi/media/nb;)V
    .locals 1

    const-string v0, "$onComplete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;Lcom/inmobi/media/ub;)V
    .locals 2

    const-string v0, "$onComplete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/inmobi/media/lb;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string p1, "Billing Service Disconnected"

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/inmobi/media/lb;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onBillingServiceDisconnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/ob;->a:Lcom/inmobi/media/ub;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/ob;->b:Lcom/inmobi/media/qb;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/inmobi/media/ob;->a:Lcom/inmobi/media/ub;

    .line 9
    .line 10
    new-instance v2, Lub/u5;

    .line 11
    .line 12
    invoke-direct {v2, v0, v1}, Lub/u5;-><init>(Lkotlin/jvm/functions/Function1;Lcom/inmobi/media/ub;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 1
    const-string v0, "billingResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/ob;->a:Lcom/inmobi/media/ub;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object p1, Lcom/inmobi/media/mb;->a:Lcom/inmobi/media/mb;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/inmobi/media/lb;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v2, "getDebugMessage(...)"

    .line 34
    .line 35
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p1, v1}, Lcom/inmobi/media/lb;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    move-object p1, v0

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/ob;->b:Lcom/inmobi/media/qb;

    .line 43
    .line 44
    new-instance v1, Lub/t5;

    .line 45
    .line 46
    invoke-direct {v1, v0, p1}, Lub/t5;-><init>(Lkotlin/jvm/functions/Function1;Lcom/inmobi/media/nb;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.class public final Lcom/appsflyer/internal/AFf1wSDK$AFa1uSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFf1wSDK;->getRevenue()Lcom/appsflyer/internal/AFe1uSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver;"
    }
.end annotation


# instance fields
.field private synthetic AFAdRevenueData:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/appsflyer/internal/AFe1uSDK;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic getCurrencyIso4217Code:Ljava/util/concurrent/CountDownLatch;

.field private synthetic getRevenue:Lcom/appsflyer/internal/AFf1wSDK;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/appsflyer/internal/AFf1wSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/appsflyer/internal/AFe1uSDK;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            "Lcom/appsflyer/internal/AFf1wSDK;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK$AFa1uSDK;->AFAdRevenueData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/appsflyer/internal/AFf1wSDK$AFa1uSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/appsflyer/internal/AFf1wSDK$AFa1uSDK;->getRevenue:Lcom/appsflyer/internal/AFf1wSDK;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final synthetic onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Exception;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/appsflyer/internal/AFf1wSDK;->getMediationNetwork(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK$AFa1uSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK$AFa1uSDK;->AFAdRevenueData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1uSDK;

    .line 9
    .line 10
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 11
    .line 12
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 13
    .line 14
    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFg1cSDK;

    .line 15
    .line 16
    const-string v1, "Privacy Sandbox trigger has been registered successfully. "

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {p1, v0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK$AFa1uSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CountDownLatch;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

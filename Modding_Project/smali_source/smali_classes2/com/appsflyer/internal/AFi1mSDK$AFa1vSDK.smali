.class public final Lcom/appsflyer/internal/AFi1mSDK$AFa1vSDK;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFi1mSDK;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private synthetic getMonetizationNetwork:Lcom/appsflyer/internal/AFi1mSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFi1mSDK;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1mSDK$AFa1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1mSDK;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1
    .param p1    # Landroid/net/Network;
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
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1mSDK$AFa1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1mSDK;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFi1mSDK;->z_(Lcom/appsflyer/internal/AFi1mSDK;Landroid/net/Network;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1
    .param p1    # Landroid/net/Network;
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
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1mSDK$AFa1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1mSDK;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFi1mSDK;->z_(Lcom/appsflyer/internal/AFi1mSDK;Landroid/net/Network;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/appsflyer/internal/AFi1mSDK$AFa1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1mSDK;

    .line 12
    .line 13
    const-string v0, "NetworkLost"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/appsflyer/internal/AFi1mSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFi1mSDK;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

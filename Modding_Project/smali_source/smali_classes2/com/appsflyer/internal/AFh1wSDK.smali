.class public final Lcom/appsflyer/internal/AFh1wSDK;
.super Lcom/appsflyer/internal/AFh1ySDK;
.source ""


# instance fields
.field private final getCurrencyIso4217Code:Z

.field private final getMediationNetwork:Lcom/appsflyer/internal/AFd1zSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFd1zSDK;
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
    invoke-direct {p0}, Lcom/appsflyer/internal/AFh1ySDK;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1wSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFd1zSDK;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFh1wSDK;->getCurrencyIso4217Code:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFg1cSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object p3, p0, Lcom/appsflyer/internal/AFh1wSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFd1zSDK;

    .line 12
    .line 13
    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1zSDK;->copy()Lcom/appsflyer/internal/AFd1oSDK;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/appsflyer/internal/AFh1ySDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/internal/AFg1cSDK;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "D"

    .line 22
    .line 23
    invoke-interface {p3, p2, p1}, Lcom/appsflyer/internal/AFd1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V
    .locals 0
    .param p1    # Lcom/appsflyer/internal/AFg1cSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p4, ""

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz p7, :cond_0

    .line 13
    .line 14
    iget-object p4, p0, Lcom/appsflyer/internal/AFh1wSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFd1zSDK;

    .line 15
    .line 16
    invoke-interface {p4}, Lcom/appsflyer/internal/AFd1zSDK;->copy()Lcom/appsflyer/internal/AFd1oSDK;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    invoke-virtual {p0, p2, p1}, Lcom/appsflyer/internal/AFh1ySDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/internal/AFg1cSDK;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "E"

    .line 25
    .line 26
    invoke-interface {p4, p2, p1}, Lcom/appsflyer/internal/AFd1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    if-eqz p7, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/appsflyer/internal/AFh1wSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFd1zSDK;

    .line 32
    .line 33
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1zSDK;->copy()Lcom/appsflyer/internal/AFd1oSDK;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1, p3}, Lcom/appsflyer/internal/AFd1oSDK;->getRevenue(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final force(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFg1cSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1wSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFd1zSDK;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->copy()Lcom/appsflyer/internal/AFd1oSDK;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/appsflyer/internal/AFh1ySDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/internal/AFg1cSDK;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "F"

    .line 20
    .line 21
    invoke-interface {v0, p2, p1}, Lcom/appsflyer/internal/AFd1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getShouldExtendMsg()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFh1wSDK;->getCurrencyIso4217Code:Z

    .line 2
    .line 3
    return v0
.end method

.method public final i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFg1cSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object p3, p0, Lcom/appsflyer/internal/AFh1wSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFd1zSDK;

    .line 12
    .line 13
    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1zSDK;->copy()Lcom/appsflyer/internal/AFd1oSDK;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/appsflyer/internal/AFh1ySDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/internal/AFg1cSDK;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "I"

    .line 22
    .line 23
    invoke-interface {p3, p2, p1}, Lcom/appsflyer/internal/AFd1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final v(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFg1cSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object p3, p0, Lcom/appsflyer/internal/AFh1wSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFd1zSDK;

    .line 12
    .line 13
    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1zSDK;->copy()Lcom/appsflyer/internal/AFd1oSDK;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/appsflyer/internal/AFh1ySDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/internal/AFg1cSDK;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "V"

    .line 22
    .line 23
    invoke-interface {p3, p2, p1}, Lcom/appsflyer/internal/AFd1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFg1cSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object p3, p0, Lcom/appsflyer/internal/AFh1wSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFd1zSDK;

    .line 12
    .line 13
    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1zSDK;->copy()Lcom/appsflyer/internal/AFd1oSDK;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/appsflyer/internal/AFh1ySDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/internal/AFg1cSDK;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "W"

    .line 22
    .line 23
    invoke-interface {p3, p2, p1}, Lcom/appsflyer/internal/AFd1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

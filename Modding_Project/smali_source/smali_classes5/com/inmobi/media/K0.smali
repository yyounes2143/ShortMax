.class public final Lcom/inmobi/media/K0;
.super Lcom/inmobi/media/gc;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/S0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/K0;->a:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/inmobi/media/gc;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final a(Lcom/inmobi/media/S0;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    const/16 v2, 0x2b

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    return-void
.end method

.method public static final b(Lcom/inmobi/media/S0;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p0, v0}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/S0;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->f()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/Yd;)V
    .locals 1

    const-string v0, "telemetryOnAdImpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/K0;->a:Lcom/inmobi/media/S0;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/Yd;)V

    return-void
.end method

.method public final f(Lcom/inmobi/media/ec;)V
    .locals 1

    .line 1
    const-string v0, "renderView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/K0;->a:Lcom/inmobi/media/S0;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/inmobi/media/S0;->Q()B

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/inmobi/media/K0;->a:Lcom/inmobi/media/S0;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/inmobi/media/S0;->q0()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final g(Lcom/inmobi/media/ec;)V
    .locals 2

    .line 1
    const-string v0, "renderView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/inmobi/media/K0;->a:Lcom/inmobi/media/S0;

    .line 16
    .line 17
    new-instance v1, Lub/p0;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lub/p0;-><init>(Lcom/inmobi/media/S0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final h(Lcom/inmobi/media/ec;)V
    .locals 2

    .line 1
    const-string v0, "renderView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/K0;->a:Lcom/inmobi/media/S0;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/inmobi/media/S0;->Q()B

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/inmobi/media/K0;->a:Lcom/inmobi/media/S0;

    .line 25
    .line 26
    new-instance v1, Lub/q0;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Lub/q0;-><init>(Lcom/inmobi/media/S0;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

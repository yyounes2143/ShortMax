.class public final Lcom/inmobi/media/E8;
.super Lcom/inmobi/media/se;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/c8;)V
    .locals 1

    .line 1
    const-string v0, "adUnit"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x6

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/inmobi/media/se;-><init>(Lcom/inmobi/media/S0;B)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/inmobi/media/E8;->d:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/inmobi/media/E8;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/c8;

    if-nez v0, :cond_0

    const/16 v0, 0xd

    .line 25
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v0, v1}, Lcom/inmobi/media/S0;->c(Lcom/inmobi/media/F0;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/E8;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/c8;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Q()B

    move-result p1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    const/4 p1, 0x4

    .line 4
    invoke-virtual {v0, p1}, Lcom/inmobi/media/S0;->d(B)V

    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->x()Lcom/inmobi/media/ec;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object v2

    .line 8
    instance-of v3, p1, Lcom/inmobi/media/T7;

    const-string v4, "TAG"

    const-string v5, "c8"

    if-eqz v3, :cond_1

    .line 9
    check-cast p1, Lcom/inmobi/media/T7;

    .line 10
    iput-object v1, p1, Lcom/inmobi/media/T7;->H:Lcom/inmobi/media/ec;

    .line 11
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->T()B

    move-result v1

    .line 12
    iput-byte v1, p1, Lcom/inmobi/media/T7;->K:B

    .line 13
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->s()Lcom/inmobi/media/U0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p1, Lcom/inmobi/media/U0;->i:J

    .line 15
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->u0()V

    .line 16
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->z0()V

    if-eqz v2, :cond_3

    .line 17
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v2}, Lcom/inmobi/media/S0;->f(Lcom/inmobi/media/F0;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    .line 19
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {v2, v0, p1}, Lcom/inmobi/media/F0;->a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 21
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 23
    invoke-virtual {v0, v1, p1, v2}, Lcom/inmobi/media/S0;->a(Ljava/lang/ref/WeakReference;SLcom/inmobi/ads/InMobiAdRequestStatus;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/G1;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/media/E8;->d:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/inmobi/media/c8;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 22
    .line 23
    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->LOW_MEMORY:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/F0;->a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

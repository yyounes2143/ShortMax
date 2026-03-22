.class public final Lcom/inmobi/media/H4;
.super Lcom/inmobi/media/se;
.source "SourceFile"


# instance fields
.field public final d:J

.field public final e:Lcom/inmobi/media/z5;

.field public final f:Ljava/lang/ref/WeakReference;

.field public g:Lcom/inmobi/media/K;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S0;JLcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "adUnit"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/inmobi/media/se;-><init>(Lcom/inmobi/media/S0;B)V

    .line 8
    .line 9
    .line 10
    iput-wide p2, p0, Lcom/inmobi/media/H4;->d:J

    .line 11
    .line 12
    iput-object p4, p0, Lcom/inmobi/media/H4;->e:Lcom/inmobi/media/z5;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/inmobi/media/H4;->f:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/inmobi/media/H4;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/S0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->H()Lcom/inmobi/media/ca;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, "GetSignalsWorker"

    if-nez v2, :cond_2

    .line 24
    iget-object v0, p0, Lcom/inmobi/media/H4;->e:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "OAManager is null"

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_1
    invoke-virtual {p0, v1}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V

    return-void

    .line 26
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object v2

    if-nez v2, :cond_4

    .line 27
    iget-object v0, p0, Lcom/inmobi/media/H4;->e:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "listener is null"

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_3
    invoke-virtual {p0, v1}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V

    return-void

    .line 29
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->H()Lcom/inmobi/media/ca;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 30
    new-instance v2, Lcom/inmobi/media/da;

    iget-object v0, v0, Lcom/inmobi/media/ca;->a:Lcom/inmobi/media/S0;

    invoke-direct {v2, v0}, Lcom/inmobi/media/da;-><init>(Lcom/inmobi/media/S0;)V

    .line 31
    invoke-virtual {v2}, Lcom/inmobi/media/da;->a()[B

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 32
    :goto_1
    invoke-virtual {p0, v0}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/inmobi/media/K; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 33
    :goto_2
    iput-object v0, p0, Lcom/inmobi/media/H4;->g:Lcom/inmobi/media/K;

    .line 34
    invoke-virtual {p0, v1}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, [B

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/H4;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/S0;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/H4;->g:Lcom/inmobi/media/K;

    const/4 v2, 0x3

    const-string v3, " state - FAILED"

    const-string v4, "AdUnit "

    const-string v5, "GetSignalsWorker"

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/inmobi/media/H4;->e:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v5, v6}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {v0, v2}, Lcom/inmobi/media/S0;->d(B)V

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object v6, p0, Lcom/inmobi/media/H4;->g:Lcom/inmobi/media/K;

    if-nez v6, :cond_7

    if-nez p1, :cond_6

    .line 8
    invoke-virtual {v0, v2}, Lcom/inmobi/media/S0;->d(B)V

    .line 9
    iget-object p1, p0, Lcom/inmobi/media/H4;->e:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v5, v2}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/H4;->e:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_5

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v2, "no request created - fail"

    invoke-virtual {p1, v5, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_5
    iget-wide v2, p0, Lcom/inmobi/media/H4;->d:J

    const/16 p1, 0xd

    invoke-virtual {v0, p1, v2, v3}, Lcom/inmobi/media/S0;->a(IJ)V

    .line 12
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {v1, p1}, Lcom/inmobi/media/F0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 13
    :cond_6
    iget-wide v2, p0, Lcom/inmobi/media/H4;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/S0;->b(J)V

    .line 14
    invoke-virtual {v1, p1}, Lcom/inmobi/media/F0;->a([B)V

    .line 15
    iget-object p1, p0, Lcom/inmobi/media/H4;->e:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_9

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "callback - onRequestCreated"

    invoke-virtual {p1, v5, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_7
    iget-object p1, p0, Lcom/inmobi/media/H4;->e:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_8

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v2, "get signals failed"

    invoke-virtual {p1, v5, v2, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 17
    :cond_8
    iget-short p1, v6, Lcom/inmobi/media/K;->b:S

    .line 18
    iget-wide v2, p0, Lcom/inmobi/media/H4;->d:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/inmobi/media/S0;->a(IJ)V

    .line 19
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 20
    iget-object v0, v6, Lcom/inmobi/media/K;->a:Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 21
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {v1, p1}, Lcom/inmobi/media/F0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    :cond_9
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
    iget-object v0, p0, Lcom/inmobi/media/H4;->f:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/inmobi/media/S0;

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
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/inmobi/media/H4;->e:Lcom/inmobi/media/z5;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v1, Lcom/inmobi/media/A5;

    .line 24
    .line 25
    const-string v2, "GetSignalsWorker"

    .line 26
    .line 27
    const-string v3, "onOOM"

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    if-eqz v0, :cond_2

    .line 33
    .line 34
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 35
    .line 36
    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->LOW_MEMORY:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/inmobi/media/F0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

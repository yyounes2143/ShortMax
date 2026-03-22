.class public final Lcom/inmobi/media/nc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/hc;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:J


# direct methods
.method public constructor <init>(Lcom/inmobi/media/hc;)V
    .locals 3

    .line 1
    const-string v0, "renderViewMetaData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 10
    .line 11
    sget-object v0, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "telemetry"

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 23
    .line 24
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/inmobi/media/hc;->j:Lcom/inmobi/media/mc;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget p1, p1, Lcom/inmobi/media/mc;->a:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getMaxTemplateEvents()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    :goto_0
    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/inmobi/media/nc;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/inmobi/media/nc;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 37
    iget-object v0, v0, Lcom/inmobi/media/hc;->k:Ljava/lang/String;

    .line 38
    const-string v1, "default"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "RenderProcessUnResponsive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    const-string p1, "CompanionRenderProcessUnResponsive"

    goto :goto_0

    .line 41
    :sswitch_1
    const-string v0, "RenderProcessResponsive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_0

    .line 42
    :sswitch_2
    const-string v0, "WebViewLoadFinished"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 43
    :cond_3
    const-string p1, "CompanionWebViewLoadFinished"

    goto :goto_0

    .line 44
    :sswitch_3
    const-string v0, "WebViewLoadCalled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 45
    :cond_4
    const-string p1, "CompanionWebViewLoadCalled"

    goto :goto_0

    .line 46
    :sswitch_4
    const-string v0, "FireAdReady"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 47
    :cond_5
    const-string p1, "CompanionFireAdReady"

    goto :goto_0

    .line 48
    :sswitch_5
    const-string v0, "FireAdFailed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 49
    :cond_6
    const-string p1, "CompanionFireAdFailed"

    goto :goto_0

    .line 50
    :sswitch_6
    const-string v0, "PageStarted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 51
    :cond_7
    const-string p1, "CompanionWebViewPageStarted"

    :goto_0
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5331112e -> :sswitch_6
        -0x4d4414a -> :sswitch_5
        0x8c4fc0a -> :sswitch_4
        0xf8394dc -> :sswitch_3
        0x1f0d1211 -> :sswitch_2
        0x2208966d -> :sswitch_1
        0x3bb68ba6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a()Ljava/util/Map;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/hc;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    const-string v0, ""

    :cond_0
    const-string v1, "trigger"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/hc;->a:Lcom/inmobi/media/Z;

    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/Z;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "plType"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 8
    iget-object v0, v0, Lcom/inmobi/media/hc;->a:Lcom/inmobi/media/Z;

    .line 9
    invoke-virtual {v0}, Lcom/inmobi/media/Z;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "plId"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 11
    iget-object v0, v0, Lcom/inmobi/media/hc;->a:Lcom/inmobi/media/Z;

    .line 12
    invoke-virtual {v0}, Lcom/inmobi/media/Z;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adType"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 13
    iget-object v0, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 14
    iget-object v0, v0, Lcom/inmobi/media/hc;->b:Ljava/lang/String;

    .line 15
    const-string v1, "markupType"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 16
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "networkType"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 17
    iget-object v0, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 18
    iget v0, v0, Lcom/inmobi/media/hc;->d:I

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "retryCount"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 20
    iget-object v0, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 21
    iget-object v0, v0, Lcom/inmobi/media/hc;->e:Ljava/lang/String;

    .line 22
    const-string v1, "creativeType"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 23
    iget-object v0, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 24
    iget v0, v0, Lcom/inmobi/media/hc;->h:I

    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adPosition"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 26
    iget-object v0, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 27
    iget-boolean v0, v0, Lcom/inmobi/media/hc;->g:Z

    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isRewarded"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Lkotlin/Pair;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 31
    iget-object v1, v1, Lcom/inmobi/media/hc;->c:Ljava/lang/String;

    .line 32
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 34
    iget-object v1, v1, Lcom/inmobi/media/hc;->c:Ljava/lang/String;

    .line 35
    const-string v2, "metadataBlob"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final b()V
    .locals 8

    .line 1
    const-string v0, "WebViewLoadCalled"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/inmobi/media/nc;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iput-wide v1, p0, Lcom/inmobi/media/nc;->c:J

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/inmobi/media/nc;->a()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "CompanionWebViewLoadCalled"

    .line 18
    .line 19
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const-string v3, "latency"

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-wide v4, p0, Lcom/inmobi/media/nc;->b:J

    .line 28
    .line 29
    sget-object v2, Lcom/inmobi/media/Ie;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    sub-long/2addr v6, v4

    .line 36
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/inmobi/media/hc;->i:Lcom/inmobi/media/T0;

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v2, v2, Lcom/inmobi/media/T0;->a:Lcom/inmobi/media/U0;

    .line 51
    .line 52
    iget-wide v4, v2, Lcom/inmobi/media/U0;->c:J

    .line 53
    .line 54
    sget-object v2, Lcom/inmobi/media/Ie;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    sub-long/2addr v6, v4

    .line 61
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/inmobi/media/hc;->f:Ljava/lang/String;

    .line 71
    .line 72
    const-string v3, "creativeId"

    .line 73
    .line 74
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    sget-object v2, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 78
    .line 79
    sget-object v2, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 80
    .line 81
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

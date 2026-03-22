.class Lcom/applovin/impl/mediation/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/ads/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Lcom/applovin/impl/mediation/e;

.field private final d:Lcom/applovin/impl/mediation/e$c;

.field private final e:Lcom/applovin/mediation/MaxAdFormat;

.field private final f:Ljava/util/Map;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/Map;

.field private final i:I

.field private j:J

.field private k:J


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/e$c;Lcom/applovin/mediation/MaxAdFormat;JJLcom/applovin/impl/mediation/e;Lcom/applovin/impl/sdk/k;Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p11, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/e$b;->b:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p10, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    .line 6
    iput-object p4, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 7
    iput-object p5, p0, Lcom/applovin/impl/mediation/e$b;->e:Lcom/applovin/mediation/MaxAdFormat;

    .line 8
    iput-object p2, p0, Lcom/applovin/impl/mediation/e$b;->g:Ljava/util/Map;

    .line 9
    iput-object p1, p0, Lcom/applovin/impl/mediation/e$b;->f:Ljava/util/Map;

    .line 10
    iput-object p3, p0, Lcom/applovin/impl/mediation/e$b;->h:Ljava/util/Map;

    .line 11
    iput-wide p6, p0, Lcom/applovin/impl/mediation/e$b;->j:J

    .line 12
    iput-wide p8, p0, Lcom/applovin/impl/mediation/e$b;->k:J

    .line 13
    const-string p1, "disable_auto_retries"

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/applovin/impl/mediation/e$b;->i:I

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p5}, Lcom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "auto_refresh_stopped"

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    sget-object p1, Lcom/applovin/impl/o3;->X7:Lcom/applovin/impl/v4;

    invoke-virtual {p11, p1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/mediation/e$b;->i:I

    goto :goto_0

    .line 17
    :cond_1
    sget-object p1, Lcom/applovin/impl/o3;->X7:Lcom/applovin/impl/v4;

    invoke-virtual {p11, p1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/mediation/e$b;->i:I

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/e$c;Lcom/applovin/mediation/MaxAdFormat;JJLcom/applovin/impl/mediation/e;Lcom/applovin/impl/sdk/k;Landroid/content/Context;Lcom/applovin/impl/mediation/e$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Lcom/applovin/impl/mediation/e$b;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/e$c;Lcom/applovin/mediation/MaxAdFormat;JJLcom/applovin/impl/mediation/e;Lcom/applovin/impl/sdk/k;Landroid/content/Context;)V

    return-void
.end method

.method private synthetic a(ILjava/lang/String;)V
    .locals 8

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "retry_delay_sec"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$b;->g:Ljava/util/Map;

    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/e$c;->d(Lcom/applovin/impl/mediation/e$c;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "retry_attempt"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    :goto_0
    move-object v6, p1

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$b;->h:Ljava/util/Map;

    sget-object v0, Lcom/applovin/impl/i;->e:Lcom/applovin/impl/i;

    invoke-virtual {v0}, Lcom/applovin/impl/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "art"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$b;->h:Ljava/util/Map;

    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/e$c;->d(Lcom/applovin/impl/mediation/e$c;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "era"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/mediation/e$b;->k:J

    .line 15
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    iget-object v2, p0, Lcom/applovin/impl/mediation/e$b;->e:Lcom/applovin/mediation/MaxAdFormat;

    iget-object v3, p0, Lcom/applovin/impl/mediation/e$b;->f:Ljava/util/Map;

    iget-object v4, p0, Lcom/applovin/impl/mediation/e$b;->g:Ljava/util/Map;

    iget-object v5, p0, Lcom/applovin/impl/mediation/e$b;->h:Ljava/util/Map;

    move-object v1, p2

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/impl/mediation/e;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/mediation/e$b;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/e$b;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/applovin/mediation/MaxAd;)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/mediation/e$b;->j:J

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/mediation/e$b;->k:J

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->h:Ljava/util/Map;

    sget-object v1, Lcom/applovin/impl/i;->c:Lcom/applovin/impl/i;

    invoke-virtual {v1}, Lcom/applovin/impl/i;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "art"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/mediation/e$b;->f:Ljava/util/Map;

    iget-object v5, p0, Lcom/applovin/impl/mediation/e$b;->g:Ljava/util/Map;

    iget-object v6, p0, Lcom/applovin/impl/mediation/e$b;->h:Ljava/util/Map;

    move-object v8, p0

    invoke-static/range {v1 .. v8}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/impl/mediation/e;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Wrong callback invoked for ad: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/e;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/applovin/impl/mediation/e$b;->j:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getWaterfall()Lcom/applovin/mediation/MaxAdWaterfallInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    move-object v5, v2

    .line 18
    check-cast v5, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->X()Lcom/applovin/impl/mediation/MediationServiceImpl;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-wide v7, p0, Lcom/applovin/impl/mediation/e$b;->k:J

    .line 29
    .line 30
    move-object v6, p2

    .line 31
    move-wide v9, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Lcom/applovin/impl/mediation/MediationServiceImpl;->processWaterfallInfoPostback(Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;Lcom/applovin/mediation/MaxError;JJ)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getCode()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/16 v3, -0x15e3

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/applovin/impl/k7;->c(Lcom/applovin/impl/sdk/k;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 53
    .line 54
    sget-object v3, Lcom/applovin/impl/v4;->o6:Lcom/applovin/impl/v4;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move v2, v4

    .line 71
    :goto_0
    iget-object v3, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 72
    .line 73
    sget-object v5, Lcom/applovin/impl/o3;->Y7:Lcom/applovin/impl/v4;

    .line 74
    .line 75
    iget-object v6, p0, Lcom/applovin/impl/mediation/e$b;->e:Lcom/applovin/mediation/MaxAdFormat;

    .line 76
    .line 77
    invoke-virtual {v3, v5, v6}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;Lcom/applovin/mediation/MaxAdFormat;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    iget-object v3, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 84
    .line 85
    invoke-static {v3}, Lcom/applovin/impl/mediation/e$c;->d(Lcom/applovin/impl/mediation/e$c;)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    iget v5, p0, Lcom/applovin/impl/mediation/e$b;->i:I

    .line 90
    .line 91
    if-ge v3, v5, :cond_3

    .line 92
    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object p2, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 97
    .line 98
    invoke-static {p2}, Lcom/applovin/impl/mediation/e$c;->e(Lcom/applovin/impl/mediation/e$c;)I

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 102
    .line 103
    invoke-static {p2}, Lcom/applovin/impl/mediation/e$c;->d(Lcom/applovin/impl/mediation/e$c;)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    int-to-double v0, p2

    .line 108
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 109
    .line 110
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    double-to-int p2, v0

    .line 115
    new-instance v0, Lcom/applovin/impl/mediation/u;

    .line 116
    .line 117
    invoke-direct {v0, p0, p2, p1}, Lcom/applovin/impl/mediation/u;-><init>(Lcom/applovin/impl/mediation/e$b;ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 121
    .line 122
    int-to-long v1, p2

    .line 123
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 124
    .line 125
    .line 126
    move-result-wide p1

    .line 127
    invoke-static {v0, p1, p2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 132
    .line 133
    invoke-static {v2, v4}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;I)I

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 137
    .line 138
    invoke-static {v2}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 146
    .line 147
    invoke-static {v2}, Lcom/applovin/impl/mediation/e$c;->b(Lcom/applovin/impl/mediation/e$c;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-eqz v2, :cond_4

    .line 152
    .line 153
    move-object v2, p2

    .line 154
    check-cast v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    .line 155
    .line 156
    iget-object v3, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 157
    .line 158
    invoke-static {v3}, Lcom/applovin/impl/mediation/e$c;->c(Lcom/applovin/impl/mediation/e$c;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v2, v3}, Lcom/applovin/impl/mediation/MaxErrorImpl;->setLoadTag(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/mediation/MaxErrorImpl;->setRequestLatencyMillis(J)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 169
    .line 170
    invoke-static {v0}, Lcom/applovin/impl/mediation/e$c;->b(Lcom/applovin/impl/mediation/e$c;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0, p1, p2}, Lcom/applovin/impl/q2;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 178
    .line 179
    const/4 p2, 0x0

    .line 180
    invoke-static {p1, p2}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;Lcom/applovin/impl/mediation/ads/a$a;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 181
    .line 182
    .line 183
    :cond_4
    :goto_2
    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 9

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/applovin/impl/v2;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/applovin/impl/mediation/e$c;->c(Lcom/applovin/impl/mediation/e$c;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2;->i(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget-wide v3, p0, Lcom/applovin/impl/mediation/e$b;->j:J

    .line 18
    .line 19
    sub-long/2addr v1, v3

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/v2;->a(J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/v2;->getWaterfall()Lcom/applovin/mediation/MaxAdWaterfallInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v3, v1

    .line 28
    check-cast v3, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->X()Lcom/applovin/impl/mediation/MediationServiceImpl;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-wide v5, p0, Lcom/applovin/impl/mediation/e$b;->k:J

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/applovin/impl/v2;->getRequestLatencyMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v7

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual/range {v2 .. v8}, Lcom/applovin/impl/mediation/MediationServiceImpl;->processWaterfallInfoPostback(Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;Lcom/applovin/mediation/MaxError;JJ)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    .line 49
    .line 50
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1, v2}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/impl/mediation/e;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-static {v1, v2}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;I)I

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/applovin/impl/mediation/e$c;->b(Lcom/applovin/impl/mediation/e$c;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/applovin/impl/v2;->A()Lcom/applovin/impl/mediation/h;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/h;->c()Lcom/applovin/impl/mediation/MediationServiceImpl$b;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v3, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 80
    .line 81
    invoke-static {v3}, Lcom/applovin/impl/mediation/e$c;->b(Lcom/applovin/impl/mediation/e$c;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v3}, Lcom/applovin/impl/mediation/MediationServiceImpl$b;->a(Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/applovin/impl/mediation/e$c;->b(Lcom/applovin/impl/mediation/e$c;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v1, v0}, Lcom/applovin/mediation/MaxAdListener;->onAdLoaded(Lcom/applovin/mediation/MaxAd;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    .line 98
    .line 99
    invoke-static {v1}, Lcom/applovin/impl/mediation/e;->d(Lcom/applovin/impl/mediation/e;)Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/applovin/impl/v2;->N()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v3, "load"

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_1

    .line 121
    .line 122
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 123
    .line 124
    invoke-static {v1}, Lcom/applovin/impl/mediation/e$c;->b(Lcom/applovin/impl/mediation/e$c;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v1, v0}, Lcom/applovin/mediation/MaxAdRevenueListener;->onAdRevenuePaid(Lcom/applovin/mediation/MaxAd;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    invoke-static {v1, v3}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;Lcom/applovin/impl/mediation/ads/a$a;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 138
    .line 139
    sget-object v3, Lcom/applovin/impl/o3;->U7:Lcom/applovin/impl/v4;

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/k;->c(Lcom/applovin/impl/v4;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_2

    .line 154
    .line 155
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 156
    .line 157
    sget-object v3, Lcom/applovin/impl/o3;->T7:Lcom/applovin/impl/v4;

    .line 158
    .line 159
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;Lcom/applovin/mediation/MaxAdFormat;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_4

    .line 168
    .line 169
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->t0()Lcom/applovin/impl/c7;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcom/applovin/impl/c7;->c()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_4

    .line 180
    .line 181
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->t0()Lcom/applovin/impl/c7;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Lcom/applovin/impl/c7;->d()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_4

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/applovin/impl/v2;->K()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_3

    .line 207
    .line 208
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v3, "Preloading waterfall 1 of "

    .line 220
    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const-string v2, "MediationAdLoadManagerV2"

    .line 232
    .line 233
    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_3
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/e$b;->a(Lcom/applovin/mediation/MaxAd;)V

    .line 237
    .line 238
    .line 239
    goto :goto_0

    .line 240
    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 241
    .line 242
    invoke-static {p1}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 247
    .line 248
    .line 249
    goto :goto_0

    .line 250
    :cond_5
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    .line 251
    .line 252
    invoke-static {v1, v0}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/impl/mediation/e;Lcom/applovin/impl/v2;)V

    .line 253
    .line 254
    .line 255
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 256
    .line 257
    invoke-static {v1}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/applovin/impl/v2;->K()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    .line 269
    .line 270
    invoke-static {v1}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/impl/mediation/e;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    .line 276
    .line 277
    invoke-static {v2}, Lcom/applovin/impl/mediation/e;->b(Lcom/applovin/impl/mediation/e;)Ljava/util/Map;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    check-cast v2, Ljava/util/Queue;

    .line 290
    .line 291
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->getSizeSafely(Ljava/util/Collection;)I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-ge v2, v0, :cond_7

    .line 297
    .line 298
    add-int/lit8 v2, v2, 0x1

    .line 299
    .line 300
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 301
    .line 302
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 303
    .line 304
    .line 305
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_6

    .line 310
    .line 311
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/k;

    .line 312
    .line 313
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    const-string v4, "Preloading waterfall "

    .line 323
    .line 324
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v2, " of "

    .line 331
    .line 332
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    const-string v2, "MediationAdLoadManagerV2"

    .line 343
    .line 344
    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :cond_6
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/e$b;->a(Lcom/applovin/mediation/MaxAd;)V

    .line 348
    .line 349
    .line 350
    :cond_7
    :goto_0
    return-void

    .line 351
    :catchall_0
    move-exception p1

    .line 352
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    throw p1
.end method

.method public onAdRequestStarted(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAdRevenuePaid(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 1
    return-void
.end method

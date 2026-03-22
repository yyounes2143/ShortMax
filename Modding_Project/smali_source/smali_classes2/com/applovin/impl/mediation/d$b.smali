.class Lcom/applovin/impl/mediation/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/ads/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Lcom/applovin/impl/mediation/d;

.field private final d:Lcom/applovin/impl/mediation/d$c;

.field private final e:Lcom/applovin/mediation/MaxAdFormat;

.field private final f:Ljava/util/Map;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/Map;

.field private final i:I

.field private j:J

.field private k:J


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/d$c;Lcom/applovin/mediation/MaxAdFormat;JJLcom/applovin/impl/mediation/d;Lcom/applovin/impl/sdk/k;Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p11, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/k;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/d$b;->b:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p10, p0, Lcom/applovin/impl/mediation/d$b;->c:Lcom/applovin/impl/mediation/d;

    .line 6
    iput-object p4, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 7
    iput-object p5, p0, Lcom/applovin/impl/mediation/d$b;->e:Lcom/applovin/mediation/MaxAdFormat;

    .line 8
    iput-object p2, p0, Lcom/applovin/impl/mediation/d$b;->g:Ljava/util/Map;

    .line 9
    iput-object p1, p0, Lcom/applovin/impl/mediation/d$b;->f:Ljava/util/Map;

    .line 10
    iput-object p3, p0, Lcom/applovin/impl/mediation/d$b;->h:Ljava/util/Map;

    .line 11
    iput-wide p6, p0, Lcom/applovin/impl/mediation/d$b;->j:J

    .line 12
    iput-wide p8, p0, Lcom/applovin/impl/mediation/d$b;->k:J

    .line 13
    const-string p1, "disable_auto_retries"

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/applovin/impl/mediation/d$b;->i:I

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

    iput p1, p0, Lcom/applovin/impl/mediation/d$b;->i:I

    goto :goto_0

    .line 17
    :cond_1
    sget-object p1, Lcom/applovin/impl/o3;->X7:Lcom/applovin/impl/v4;

    invoke-virtual {p11, p1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/mediation/d$b;->i:I

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/d$c;Lcom/applovin/mediation/MaxAdFormat;JJLcom/applovin/impl/mediation/d;Lcom/applovin/impl/sdk/k;Landroid/content/Context;Lcom/applovin/impl/mediation/d$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Lcom/applovin/impl/mediation/d$b;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/d$c;Lcom/applovin/mediation/MaxAdFormat;JJLcom/applovin/impl/mediation/d;Lcom/applovin/impl/sdk/k;Landroid/content/Context;)V

    return-void
.end method

.method private synthetic a(ILjava/lang/String;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "retry_delay_sec"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/mediation/d$b;->g:Ljava/util/Map;

    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d$c;->d(Lcom/applovin/impl/mediation/d$c;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "retry_attempt"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/applovin/impl/mediation/d$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    :goto_0
    move-object v6, p1

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 6
    :goto_1
    iget-object p1, p0, Lcom/applovin/impl/mediation/d$b;->h:Ljava/util/Map;

    sget-object v0, Lcom/applovin/impl/i;->e:Lcom/applovin/impl/i;

    invoke-virtual {v0}, Lcom/applovin/impl/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "art"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/mediation/d$b;->h:Ljava/util/Map;

    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d$c;->d(Lcom/applovin/impl/mediation/d$c;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "era"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/mediation/d$b;->k:J

    .line 9
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->c:Lcom/applovin/impl/mediation/d;

    iget-object v2, p0, Lcom/applovin/impl/mediation/d$b;->e:Lcom/applovin/mediation/MaxAdFormat;

    iget-object v3, p0, Lcom/applovin/impl/mediation/d$b;->f:Ljava/util/Map;

    iget-object v4, p0, Lcom/applovin/impl/mediation/d$b;->g:Ljava/util/Map;

    iget-object v5, p0, Lcom/applovin/impl/mediation/d$b;->h:Ljava/util/Map;

    move-object v1, p2

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/applovin/impl/mediation/d;->a(Lcom/applovin/impl/mediation/d;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/mediation/d$b;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/d$b;->a(ILjava/lang/String;)V

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
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->c:Lcom/applovin/impl/mediation/d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/applovin/impl/mediation/d;->a(Lcom/applovin/impl/mediation/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/applovin/impl/mediation/d$b;->j:J

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
    iget-object v2, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/k;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->X()Lcom/applovin/impl/mediation/MediationServiceImpl;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-wide v7, p0, Lcom/applovin/impl/mediation/d$b;->k:J

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
    iget-object v2, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/k;

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
    iget-object v2, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/k;

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
    iget-object v3, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/k;

    .line 72
    .line 73
    sget-object v5, Lcom/applovin/impl/o3;->Y7:Lcom/applovin/impl/v4;

    .line 74
    .line 75
    iget-object v6, p0, Lcom/applovin/impl/mediation/d$b;->e:Lcom/applovin/mediation/MaxAdFormat;

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
    iget-object v3, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 84
    .line 85
    invoke-static {v3}, Lcom/applovin/impl/mediation/d$c;->d(Lcom/applovin/impl/mediation/d$c;)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    iget v5, p0, Lcom/applovin/impl/mediation/d$b;->i:I

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
    iget-object p2, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 97
    .line 98
    invoke-static {p2}, Lcom/applovin/impl/mediation/d$c;->e(Lcom/applovin/impl/mediation/d$c;)I

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 102
    .line 103
    invoke-static {p2}, Lcom/applovin/impl/mediation/d$c;->d(Lcom/applovin/impl/mediation/d$c;)I

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
    new-instance v0, Lcom/applovin/impl/mediation/t;

    .line 116
    .line 117
    invoke-direct {v0, p0, p2, p1}, Lcom/applovin/impl/mediation/t;-><init>(Lcom/applovin/impl/mediation/d$b;ILjava/lang/String;)V

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
    iget-object v2, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 132
    .line 133
    invoke-static {v2, v4}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;I)I

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 137
    .line 138
    invoke-static {v2}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 146
    .line 147
    invoke-static {v2}, Lcom/applovin/impl/mediation/d$c;->b(Lcom/applovin/impl/mediation/d$c;)Lcom/applovin/impl/mediation/ads/a$a;

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
    iget-object v3, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 157
    .line 158
    invoke-static {v3}, Lcom/applovin/impl/mediation/d$c;->c(Lcom/applovin/impl/mediation/d$c;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 169
    .line 170
    invoke-static {v0}, Lcom/applovin/impl/mediation/d$c;->b(Lcom/applovin/impl/mediation/d$c;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0, p1, p2}, Lcom/applovin/impl/q2;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 178
    .line 179
    const/4 p2, 0x0

    .line 180
    invoke-static {p1, p2}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;Lcom/applovin/impl/mediation/ads/a$a;)Lcom/applovin/impl/mediation/ads/a$a;

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
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/applovin/impl/mediation/d$c;->c(Lcom/applovin/impl/mediation/d$c;)Ljava/lang/String;

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
    iget-wide v3, p0, Lcom/applovin/impl/mediation/d$b;->j:J

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
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/k;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->X()Lcom/applovin/impl/mediation/MediationServiceImpl;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-wide v5, p0, Lcom/applovin/impl/mediation/d$b;->k:J

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
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->c:Lcom/applovin/impl/mediation/d;

    .line 49
    .line 50
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1, v2}, Lcom/applovin/impl/mediation/d;->b(Lcom/applovin/impl/mediation/d;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-static {v1, v2}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;I)I

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/applovin/impl/mediation/d$c;->b(Lcom/applovin/impl/mediation/d$c;)Lcom/applovin/impl/mediation/ads/a$a;

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
    iget-object v3, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 80
    .line 81
    invoke-static {v3}, Lcom/applovin/impl/mediation/d$c;->b(Lcom/applovin/impl/mediation/d$c;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v3}, Lcom/applovin/impl/mediation/MediationServiceImpl$b;->a(Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/applovin/impl/mediation/d$c;->b(Lcom/applovin/impl/mediation/d$c;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v1, v0}, Lcom/applovin/mediation/MaxAdListener;->onAdLoaded(Lcom/applovin/mediation/MaxAd;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/applovin/impl/v2;->N()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v3, "load"

    .line 102
    .line 103
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_1

    .line 108
    .line 109
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 110
    .line 111
    invoke-static {v1}, Lcom/applovin/impl/mediation/d$c;->b(Lcom/applovin/impl/mediation/d$c;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-interface {v1, v0}, Lcom/applovin/mediation/MaxAdRevenueListener;->onAdRevenuePaid(Lcom/applovin/mediation/MaxAd;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;Lcom/applovin/impl/mediation/ads/a$a;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/k;

    .line 125
    .line 126
    sget-object v1, Lcom/applovin/impl/o3;->U7:Lcom/applovin/impl/v4;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->c(Lcom/applovin/impl/v4;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_2

    .line 141
    .line 142
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/k;

    .line 143
    .line 144
    sget-object v1, Lcom/applovin/impl/o3;->T7:Lcom/applovin/impl/v4;

    .line 145
    .line 146
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;Lcom/applovin/mediation/MaxAdFormat;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/k;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->t0()Lcom/applovin/impl/c7;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/applovin/impl/c7;->c()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_4

    .line 167
    .line 168
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->a:Lcom/applovin/impl/sdk/k;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->t0()Lcom/applovin/impl/c7;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/applovin/impl/c7;->d()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_4

    .line 179
    .line 180
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->b:Ljava/lang/ref/WeakReference;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Landroid/content/Context;

    .line 187
    .line 188
    if-eqz v0, :cond_3

    .line 189
    .line 190
    :goto_0
    move-object v7, v0

    .line 191
    goto :goto_1

    .line 192
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    goto :goto_0

    .line 197
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 198
    .line 199
    .line 200
    move-result-wide v0

    .line 201
    iput-wide v0, p0, Lcom/applovin/impl/mediation/d$b;->j:J

    .line 202
    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 204
    .line 205
    .line 206
    move-result-wide v0

    .line 207
    iput-wide v0, p0, Lcom/applovin/impl/mediation/d$b;->k:J

    .line 208
    .line 209
    iget-object v0, p0, Lcom/applovin/impl/mediation/d$b;->h:Ljava/util/Map;

    .line 210
    .line 211
    sget-object v1, Lcom/applovin/impl/i;->c:Lcom/applovin/impl/i;

    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/applovin/impl/i;->b()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const-string v2, "art"

    .line 218
    .line 219
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    iget-object v1, p0, Lcom/applovin/impl/mediation/d$b;->c:Lcom/applovin/impl/mediation/d;

    .line 223
    .line 224
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    iget-object v4, p0, Lcom/applovin/impl/mediation/d$b;->f:Ljava/util/Map;

    .line 233
    .line 234
    iget-object v5, p0, Lcom/applovin/impl/mediation/d$b;->g:Ljava/util/Map;

    .line 235
    .line 236
    iget-object v6, p0, Lcom/applovin/impl/mediation/d$b;->h:Ljava/util/Map;

    .line 237
    .line 238
    move-object v8, p0

    .line 239
    invoke-static/range {v1 .. v8}, Lcom/applovin/impl/mediation/d;->a(Lcom/applovin/impl/mediation/d;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 244
    .line 245
    invoke-static {p1}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_5
    iget-object p1, p0, Lcom/applovin/impl/mediation/d$b;->c:Lcom/applovin/impl/mediation/d;

    .line 254
    .line 255
    invoke-static {p1, v0}, Lcom/applovin/impl/mediation/d;->a(Lcom/applovin/impl/mediation/d;Lcom/applovin/impl/v2;)V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lcom/applovin/impl/mediation/d$b;->d:Lcom/applovin/impl/mediation/d$c;

    .line 259
    .line 260
    invoke-static {p1}, Lcom/applovin/impl/mediation/d$c;->a(Lcom/applovin/impl/mediation/d$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    .line 266
    .line 267
    :goto_2
    return-void
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

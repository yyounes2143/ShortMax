.class public Lcom/applovin/impl/w1;
.super Lcom/applovin/impl/v1;
.source "SourceFile"


# instance fields
.field private final M:Lcom/applovin/impl/x1;

.field private N:Lcom/applovin/impl/g0;

.field private O:J

.field private final P:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/applovin/impl/v1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/applovin/impl/x1;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 7
    .line 8
    iget-object p3, p0, Lcom/applovin/impl/v1;->d:Landroid/app/Activity;

    .line 9
    .line 10
    iget-object p4, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 11
    .line 12
    invoke-direct {p1, p2, p3, p4}, Lcom/applovin/impl/x1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Lcom/applovin/impl/sdk/k;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/applovin/impl/w1;->M:Lcom/applovin/impl/x1;

    .line 16
    .line 17
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/applovin/impl/w1;->P:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    return-void
.end method

.method private B()J
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/a;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->t1()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->s()J

    move-result-wide v0

    long-to-float v0, v0

    .line 5
    :goto_0
    invoke-static {v0}, Lcom/applovin/impl/k7;->c(F)J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->I()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static synthetic B(Lcom/applovin/impl/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/w1;->F()V

    return-void
.end method

.method private C()I
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->g()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/applovin/impl/w1;->D()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/w1;->N:Lcom/applovin/impl/g0;

    if-eqz v0, :cond_0

    .line 4
    iget-wide v1, p0, Lcom/applovin/impl/w1;->O:J

    invoke-virtual {v0}, Lcom/applovin/impl/g0;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v0, v1

    .line 5
    iget-wide v2, p0, Lcom/applovin/impl/w1;->O:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v1, v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad engaged at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v3, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public static synthetic C(Lcom/applovin/impl/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/w1;->G()V

    return-void
.end method

.method public static synthetic D(Lcom/applovin/impl/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/w1;->E()V

    return-void
.end method

.method private synthetic E()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinFullscreenActivity"

    .line 10
    .line 11
    const-string v2, "Marking ad as fully watched"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/w1;->P:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private synthetic F()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/applovin/impl/v1;->q:J

    .line 6
    .line 7
    return-void
.end method

.method private synthetic G()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/applovin/impl/v1;->k:Lcom/applovin/impl/adview/g;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Lcom/applovin/impl/e4;

    .line 11
    .line 12
    sget-object v3, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    .line 13
    .line 14
    const-string v4, "close button"

    .line 15
    .line 16
    invoke-direct {v2, v1, v3, v4}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/v1;->j:Lcom/applovin/impl/adview/k;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/applovin/impl/adview/k;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-instance v1, Lcom/applovin/impl/e4;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/applovin/impl/v1;->j:Lcom/applovin/impl/adview/k;

    .line 35
    .line 36
    sget-object v3, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/applovin/impl/adview/k;->getIdentifier()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/c4;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/applovin/impl/v1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 55
    .line 56
    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/c4;->b(Landroid/view/View;Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method protected D()Z
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/applovin/impl/v1;->J:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->n1()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/w1;->P:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method protected H()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Y()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Z()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ltz v0, :cond_4

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Y()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-ltz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Y()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->j1()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 47
    .line 48
    check-cast v0, Lcom/applovin/impl/sdk/ad/a;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->t1()F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    float-to-int v0, v0

    .line 55
    if-lez v0, :cond_2

    .line 56
    .line 57
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    .line 59
    int-to-long v2, v0

    .line 60
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->s()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    long-to-int v0, v0

    .line 72
    if-lez v0, :cond_3

    .line 73
    .line 74
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 75
    .line 76
    int-to-long v2, v0

    .line 77
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    :cond_3
    :goto_0
    long-to-double v0, v2

    .line 82
    iget-object v2, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->Z()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    int-to-double v2, v2

    .line 89
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 90
    .line 91
    div-double/2addr v2, v4

    .line 92
    mul-double/2addr v0, v2

    .line 93
    double-to-long v0, v0

    .line 94
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/v1;->c(J)V

    .line 95
    .line 96
    .line 97
    :cond_4
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w1;->M:Lcom/applovin/impl/x1;

    iget-object v1, p0, Lcom/applovin/impl/v1;->k:Lcom/applovin/impl/adview/g;

    iget-object v2, p0, Lcom/applovin/impl/v1;->j:Lcom/applovin/impl/adview/k;

    iget-object v3, p0, Lcom/applovin/impl/v1;->i:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/applovin/impl/x1;->a(Lcom/applovin/impl/adview/g;Lcom/applovin/impl/adview/k;Lcom/applovin/adview/AppLovinAdView;Landroid/view/ViewGroup;)V

    .line 2
    iget-object p1, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v0, Lcom/applovin/impl/v4;->L5:Lcom/applovin/impl/v4;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/v1;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/v1;->j:Lcom/applovin/impl/adview/k;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/applovin/impl/adview/k;->b()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/v1;->i:Lcom/applovin/adview/AppLovinAdView;

    iget-object v1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1, v1}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    .line 6
    iget-object p1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->H()I

    move-result p1

    int-to-long v1, p1

    const-string p1, "javascript:al_onPoststitialShow();"

    invoke-virtual {p0, p1, v1, v2}, Lcom/applovin/impl/v1;->a(Ljava/lang/String;J)V

    .line 7
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->g()Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/applovin/impl/w1;->B()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/applovin/impl/w1;->O:J

    cmp-long p1, v3, v1

    if-lez p1, :cond_3

    .line 9
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling timer for ad fully watched in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/applovin/impl/w1;->O:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppLovinFullscreenActivity"

    invoke-virtual {p1, v4, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-wide v3, p0, Lcom/applovin/impl/w1;->O:J

    iget-object p1, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    new-instance v5, Lcom/applovin/impl/wf;

    invoke-direct {v5, p0}, Lcom/applovin/impl/wf;-><init>(Lcom/applovin/impl/w1;)V

    invoke-static {v3, v4, p1, v5}, Lcom/applovin/impl/g0;->a(JLcom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lcom/applovin/impl/g0;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/w1;->N:Lcom/applovin/impl/g0;

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/v1;->k:Lcom/applovin/impl/adview/g;

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->s()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-ltz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/applovin/impl/v1;->k:Lcom/applovin/impl/adview/g;

    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 14
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->s()J

    move-result-wide v0

    new-instance v2, Lcom/applovin/impl/xf;

    invoke-direct {v2, p0}, Lcom/applovin/impl/xf;-><init>(Lcom/applovin/impl/w1;)V

    .line 15
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/applovin/impl/v1;->a(Lcom/applovin/impl/adview/g;JLjava/lang/Runnable;)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/v1;->k:Lcom/applovin/impl/adview/g;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/impl/w1;->H()V

    .line 18
    iget-object p1, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object p1

    new-instance v0, Lcom/applovin/impl/p6;

    iget-object v1, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    new-instance v2, Lcom/applovin/impl/yf;

    invoke-direct {v2, p0}, Lcom/applovin/impl/yf;-><init>(Lcom/applovin/impl/w1;)V

    const-string/jumbo v3, "updateMainViewOM"

    invoke-direct {v0, v1, v3, v2}, Lcom/applovin/impl/p6;-><init>(Lcom/applovin/impl/sdk/k;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object v1, Lcom/applovin/impl/b6$b;->e:Lcom/applovin/impl/b6$b;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    .line 19
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 20
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;J)V

    .line 21
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->o()V

    .line 22
    iget-object p1, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    invoke-static {p1}, Lcom/applovin/impl/k7;->e(Lcom/applovin/impl/sdk/k;)Z

    move-result p1

    invoke-super {p0, p1}, Lcom/applovin/impl/v1;->c(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/v4;->D6:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/b;->a(Ljava/lang/String;)V

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/w1;->l()V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/w1;->N:Lcom/applovin/impl/g0;

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {v0}, Lcom/applovin/impl/g0;->a()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/applovin/impl/w1;->N:Lcom/applovin/impl/g0;

    .line 30
    :cond_2
    invoke-super {p0, p1}, Lcom/applovin/impl/v1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/v1;->d()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/applovin/impl/w1;->z()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/v1;->e()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/applovin/impl/w1;->z()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected l()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/w1;->C()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p0}, Lcom/applovin/impl/w1;->D()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/4 v2, 0x0

    .line 10
    const-wide/16 v4, -0x2

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    invoke-super/range {v0 .. v5}, Lcom/applovin/impl/v1;->a(IZZJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public u()V
    .locals 0

    .line 1
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/applovin/impl/w1;->a(Landroid/view/ViewGroup;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected w()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/v1;->w()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/applovin/impl/w1;->P:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w1;->M:Lcom/applovin/impl/x1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/v1;->l:Lcom/applovin/impl/adview/g;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/applovin/impl/x1;->a(Lcom/applovin/impl/adview/g;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/applovin/impl/v1;->q:J

    .line 13
    .line 14
    iget-object v0, p0, Lcom/applovin/impl/w1;->P:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

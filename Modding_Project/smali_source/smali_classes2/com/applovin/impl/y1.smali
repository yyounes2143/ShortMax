.class public Lcom/applovin/impl/y1;
.super Lcom/applovin/impl/z1;
.source "SourceFile"


# instance fields
.field private final p0:Lcom/applovin/impl/l7;

.field private final q0:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/applovin/impl/z1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 2
    .line 3
    .line 4
    new-instance p3, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/applovin/impl/y1;->q0:Ljava/util/Set;

    .line 10
    .line 11
    check-cast p1, Lcom/applovin/impl/l7;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/applovin/impl/l7;->D1()Z

    .line 16
    .line 17
    .line 18
    move-result p5

    .line 19
    if-eqz p5, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/applovin/impl/l7;->x1()Lcom/applovin/impl/r7;

    .line 22
    .line 23
    .line 24
    move-result-object p5

    .line 25
    invoke-virtual {p5}, Lcom/applovin/impl/r7;->e()Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p5

    .line 29
    invoke-static {p5, p2, p4}, Lcom/applovin/impl/r7;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/k;)Landroid/widget/ImageView;

    .line 30
    .line 31
    .line 32
    move-result-object p5

    .line 33
    iput-object p5, p0, Lcom/applovin/impl/z1;->X:Landroid/widget/ImageView;

    .line 34
    .line 35
    new-instance p6, Lcom/applovin/impl/bg;

    .line 36
    .line 37
    invoke-direct {p6, p0, p2, p4}, Lcom/applovin/impl/bg;-><init>(Lcom/applovin/impl/y1;Landroid/app/Activity;Lcom/applovin/impl/sdk/k;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p5, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object p2, Lcom/applovin/impl/l7$d;->d:Lcom/applovin/impl/l7$d;

    .line 44
    .line 45
    sget-object p4, Lcom/applovin/impl/w7;->a:[Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, p2, p4}, Lcom/applovin/impl/l7;->a(Lcom/applovin/impl/l7$d;[Ljava/lang/String;)Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    invoke-interface {p3, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    sget-object p3, Lcom/applovin/impl/l7$d;->a:Lcom/applovin/impl/l7$d;

    .line 55
    .line 56
    invoke-direct {p0, p3}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;)V

    .line 57
    .line 58
    .line 59
    const-string p3, "creativeView"

    .line 60
    .line 61
    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/applovin/impl/c4;->g()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static synthetic U(Lcom/applovin/impl/y1;Landroid/app/Activity;Lcom/applovin/impl/sdk/k;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/y1;->a(Landroid/app/Activity;Lcom/applovin/impl/sdk/k;Landroid/view/View;)V

    return-void
.end method

.method private U()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/z1;->X:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    invoke-virtual {v0}, Lcom/applovin/impl/l7;->D1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private V()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/z1;->F()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/y1;->q0:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "Firing "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/applovin/impl/y1;->q0:Ljava/util/Set;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, " un-fired video progress trackers when video was completed."

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "AppLovinFullscreenActivity"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/y1;->q0:Ljava/util/Set;

    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/applovin/impl/y1;->a(Ljava/util/Set;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/y1;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/y1;->q0:Ljava/util/Set;

    return-object p0
.end method

.method private synthetic a(Landroid/app/Activity;Lcom/applovin/impl/sdk/k;Landroid/view/View;)V
    .locals 3

    .line 3
    iget-object p3, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    invoke-virtual {p3}, Lcom/applovin/impl/l7;->x1()Lcom/applovin/impl/r7;

    move-result-object p3

    invoke-virtual {p3}, Lcom/applovin/impl/r7;->c()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Industry Icon clicked, opening URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/applovin/impl/l7$d;->g:Lcom/applovin/impl/l7$d;

    invoke-direct {p0, v0}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;)V

    .line 6
    invoke-static {p3, p1, p2}, Lcom/applovin/impl/h7;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/k;)Z

    :cond_1
    return-void
.end method

.method private a(Lcom/applovin/impl/l7$d;)V
    .locals 1

    .line 40
    sget-object v0, Lcom/applovin/impl/q7;->b:Lcom/applovin/impl/q7;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;Lcom/applovin/impl/q7;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/l7$d;Lcom/applovin/impl/q7;)V
    .locals 1

    .line 42
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;Ljava/lang/String;Lcom/applovin/impl/q7;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/l7$d;Ljava/lang/String;)V
    .locals 1

    .line 41
    sget-object v0, Lcom/applovin/impl/q7;->b:Lcom/applovin/impl/q7;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;Ljava/lang/String;Lcom/applovin/impl/q7;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/l7$d;Ljava/lang/String;Lcom/applovin/impl/q7;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/l7;->a(Lcom/applovin/impl/l7$d;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/y1;->a(Ljava/util/Set;Lcom/applovin/impl/q7;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/y1;Ljava/util/Set;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/y1;->a(Ljava/util/Set;)V

    return-void
.end method

.method private a(Ljava/util/Set;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/applovin/impl/q7;->b:Lcom/applovin/impl/q7;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/y1;->a(Ljava/util/Set;Lcom/applovin/impl/q7;)V

    return-void
.end method

.method private a(Ljava/util/Set;Lcom/applovin/impl/q7;)V
    .locals 9

    if-eqz p1, :cond_2

    .line 45
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 47
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    invoke-virtual {v0}, Lcom/applovin/impl/l7;->C1()Lcom/applovin/impl/z7;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/applovin/impl/z7;->d()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :goto_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tracker(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_1
    iget-object v8, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    move-object v3, p1

    move-object v7, p2

    invoke-static/range {v3 .. v8}, Lcom/applovin/impl/x7;->a(Ljava/util/Set;JLandroid/net/Uri;Lcom/applovin/impl/q7;Lcom/applovin/impl/sdk/k;)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/y1;)Lcom/applovin/impl/l7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public C()V
    .locals 2

    .line 1
    sget-object v0, Lcom/applovin/impl/l7$d;->d:Lcom/applovin/impl/l7$d;

    .line 2
    .line 3
    const-string v1, "skip"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/applovin/impl/i4;->B()V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Lcom/applovin/impl/z1;->C()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected D()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/z1;->D()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/applovin/impl/i4;->i()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected N()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

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
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Z()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ltz v0, :cond_5

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

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
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

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
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->B1()Lcom/applovin/impl/y7;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/applovin/impl/y7;->d()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-lez v4, :cond_2

    .line 51
    .line 52
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/applovin/impl/y7;->d()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    int-to-long v3, v1

    .line 59
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-wide v4, p0, Lcom/applovin/impl/z1;->g0:J

    .line 65
    .line 66
    cmp-long v1, v4, v2

    .line 67
    .line 68
    if-lez v1, :cond_3

    .line 69
    .line 70
    move-wide v2, v4

    .line 71
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->j1()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->s()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    long-to-int v0, v0

    .line 82
    if-lez v0, :cond_4

    .line 83
    .line 84
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 85
    .line 86
    int-to-long v4, v0

    .line 87
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    add-long/2addr v2, v0

    .line 92
    :cond_4
    long-to-double v0, v2

    .line 93
    iget-object v2, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->Z()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    int-to-double v2, v2

    .line 100
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 101
    .line 102
    div-double/2addr v2, v4

    .line 103
    mul-double/2addr v0, v2

    .line 104
    double-to-long v0, v0

    .line 105
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/v1;->c(J)V

    .line 106
    .line 107
    .line 108
    :cond_5
    return-void
.end method

.method protected Q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/z1;->Q()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/applovin/impl/i4;->j()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public R()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/y1;->V()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/applovin/impl/x7;->a(Lcom/applovin/impl/l7;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/applovin/impl/z1;->j0:Z

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    sget-object v0, Lcom/applovin/impl/l7$d;->e:Lcom/applovin/impl/l7$d;

    .line 17
    .line 18
    const-string v1, "creativeView"

    .line 19
    .line 20
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/applovin/impl/i4;->w()V

    .line 30
    .line 31
    .line 32
    invoke-super {p0}, Lcom/applovin/impl/z1;->R()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    .line 43
    .line 44
    const-string v1, "AppLovinFullscreenActivity"

    .line 45
    .line 46
    const-string v2, "VAST ad does not have valid companion ad - dismissing..."

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    const-string v0, "no_valid_companion_ad"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/applovin/impl/y1;->a(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public T()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/z1;->T()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/applovin/impl/l7$d;->d:Lcom/applovin/impl/l7$d;

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/applovin/impl/z1;->f0:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "mute"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string/jumbo v1, "unmute"

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-boolean v1, p0, Lcom/applovin/impl/z1;->f0:Z

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/applovin/impl/i4;->b(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public a(Landroid/view/MotionEvent;Landroid/os/Bundle;)V
    .locals 1

    .line 36
    sget-object v0, Lcom/applovin/impl/l7$d;->b:Lcom/applovin/impl/l7$d;

    invoke-direct {p0, v0}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;)V

    .line 37
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    invoke-virtual {v0}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/i4;->v()V

    .line 38
    invoke-super {p0, p1, p2}, Lcom/applovin/impl/z1;->a(Landroid/view/MotionEvent;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 4

    .line 11
    invoke-super {p0, p1}, Lcom/applovin/impl/z1;->a(Landroid/view/ViewGroup;)V

    .line 12
    invoke-direct {p0}, Lcom/applovin/impl/y1;->U()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    sget-object p1, Lcom/applovin/impl/l7$d;->f:Lcom/applovin/impl/l7$d;

    invoke-direct {p0, p1}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;)V

    .line 14
    iget-object p1, p0, Lcom/applovin/impl/z1;->X:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/z1;->c0:Lcom/applovin/impl/a1;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    new-instance v2, Lcom/applovin/impl/y1$a;

    invoke-direct {v2, p0}, Lcom/applovin/impl/y1$a;-><init>(Lcom/applovin/impl/y1;)V

    const-string v3, "PROGRESS_TRACKING"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/applovin/impl/a1;->a(Ljava/lang/String;JLcom/applovin/impl/a1$b;)V

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v0, p0, Lcom/applovin/impl/z1;->Q:Lcom/applovin/impl/a;

    if-eqz v0, :cond_1

    .line 18
    new-instance v1, Lcom/applovin/impl/e4;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string/jumbo v3, "video stream buffering indicator"

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/z1;->R:Lcom/applovin/impl/adview/g;

    if-eqz v0, :cond_2

    .line 20
    new-instance v1, Lcom/applovin/impl/e4;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "skip button"

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/z1;->S:Lcom/applovin/impl/i0;

    if-eqz v0, :cond_3

    .line 22
    new-instance v1, Lcom/applovin/impl/e4;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "countdown clock"

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/z1;->V:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    .line 24
    new-instance v1, Lcom/applovin/impl/e4;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "progress bar"

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/z1;->W:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 26
    new-instance v1, Lcom/applovin/impl/e4;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "postitial progress bar"

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/z1;->T:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 28
    new-instance v1, Lcom/applovin/impl/e4;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->VIDEO_CONTROLS:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "mute button"

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/z1;->U:Lcom/applovin/impl/adview/l;

    if-eqz v0, :cond_7

    .line 30
    new-instance v1, Lcom/applovin/impl/e4;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->VIDEO_CONTROLS:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "generic webview overlay containing HTML controls"

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/v1;->j:Lcom/applovin/impl/adview/k;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/applovin/impl/adview/k;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32
    new-instance v0, Lcom/applovin/impl/e4;

    iget-object v1, p0, Lcom/applovin/impl/v1;->j:Lcom/applovin/impl/adview/k;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    .line 33
    invoke-virtual {v1}, Lcom/applovin/impl/adview/k;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_8
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    invoke-virtual {v0}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/c4;->b(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/applovin/impl/l7$d;->d:Lcom/applovin/impl/l7$d;

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/applovin/impl/l7$d;->e:Lcom/applovin/impl/l7$d;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lcom/applovin/impl/z1;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected d(J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/applovin/impl/z1;->d(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    long-to-float p1, p1

    .line 17
    iget-object p2, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/applovin/impl/k7;->e(Lcom/applovin/impl/sdk/k;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/i4;->b(FZ)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/applovin/impl/l7$d;->h:Lcom/applovin/impl/l7$d;

    .line 2
    .line 3
    sget-object v1, Lcom/applovin/impl/q7;->n:Lcom/applovin/impl/q7;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;Lcom/applovin/impl/q7;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lcom/applovin/impl/c4;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1}, Lcom/applovin/impl/z1;->g(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/v1;->r()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/applovin/impl/z1;->j0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/applovin/impl/l7$d;->e:Lcom/applovin/impl/l7$d;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/applovin/impl/l7$d;->d:Lcom/applovin/impl/l7$d;

    .line 12
    .line 13
    :goto_0
    const-string v1, "pause"

    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/applovin/impl/i4;->z()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/v1;->s()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/applovin/impl/z1;->j0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/applovin/impl/l7$d;->e:Lcom/applovin/impl/l7$d;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/applovin/impl/l7$d;->d:Lcom/applovin/impl/l7$d;

    .line 12
    .line 13
    :goto_0
    const-string v1, "resume"

    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/l7$d;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/applovin/impl/y1;->p0:Lcom/applovin/impl/l7;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/applovin/impl/i4;->A()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/z1;->c0:Lcom/applovin/impl/a1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/a1;->c()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/applovin/impl/z1;->u()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/applovin/impl/y1;->a(Landroid/view/ViewGroup;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.class public Lcom/applovin/impl/k5;
.super Lcom/applovin/impl/j5;
.source "SourceFile"


# instance fields
.field private final q:Lcom/applovin/impl/sdk/ad/a;

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/a;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    .line 1
    const-string v0, "TaskCacheAppLovinAd"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/impl/j5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/k5;)Lcom/applovin/impl/sdk/ad/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/k5;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/k5;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/applovin/impl/k7;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/applovin/impl/k7;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->isOpenMeasurementEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->e0()Lcom/applovin/impl/g4;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p1, v0}, Lcom/applovin/impl/g4;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_1
    return-object p1
.end method

.method private m()V
    .locals 5

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
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "Caching non-optional HTML resources..."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->s1()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->c0()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/b;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Lcom/applovin/impl/k5;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/a;->d(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ad/b;->b(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/applovin/impl/j5;->a(Lcom/applovin/impl/sdk/ad/b;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v3, "Finish caching non-optional HTML resources for ad #"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v3, "Ad HTML updated to reference locally cached non-optional resources = "

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/a;->s1()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->w1()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/applovin/impl/j5;->c(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->y1()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/a;->d(Landroid/net/Uri;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private o()Lcom/applovin/impl/d0;
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
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "Caching HTML resources..."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->s1()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->c0()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lcom/applovin/impl/k5$b;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lcom/applovin/impl/k5$b;-><init>(Lcom/applovin/impl/k5;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/j5$e;)Lcom/applovin/impl/d0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method private p()Lcom/applovin/impl/e0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->w1()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/applovin/impl/k5$a;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/applovin/impl/k5$a;-><init>(Lcom/applovin/impl/k5;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/j5;->b(Ljava/lang/String;Lcom/applovin/impl/e0$a;)Lcom/applovin/impl/e0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method private q()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->R()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "Caching optional HTML resources..."

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->s1()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_6

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    iget-object v3, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v6, "Caching optional resource: "

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v3, v4, v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->H()Lcom/applovin/impl/sdk/m;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget-object v4, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 88
    .line 89
    invoke-virtual {v3, v2, v4}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;)I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    iget-object v3, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 94
    .line 95
    invoke-static {v3}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->H()Lcom/applovin/impl/sdk/m;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    iget-object v5, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 110
    .line 111
    invoke-virtual {v5}, Lcom/applovin/impl/sdk/ad/b;->getCachePrefix()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    iget-object v5, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 116
    .line 117
    invoke-virtual {v5}, Lcom/applovin/impl/sdk/ad/b;->c0()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    iget-object v11, p0, Lcom/applovin/impl/j5;->i:Ljava/lang/String;

    .line 122
    .line 123
    const/4 v8, 0x1

    .line 124
    const/4 v9, 0x1

    .line 125
    move-object v5, v2

    .line 126
    move-object v12, v13

    .line 127
    invoke-virtual/range {v3 .. v12}, Lcom/applovin/impl/sdk/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_4

    .line 136
    .line 137
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_3

    .line 142
    .line 143
    iget-object v4, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 144
    .line 145
    iget-object v5, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 146
    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v7, "Updating HTML with cached optional resource: "

    .line 153
    .line 154
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v4, v5, v6}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_3
    iget-object v4, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 168
    .line 169
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/ad/b;->a(Landroid/net/Uri;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 181
    .line 182
    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/ad/a;->d(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_5

    .line 192
    .line 193
    iget-object v3, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 194
    .line 195
    iget-object v4, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 196
    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v6, "Failed to cache optional resource: "

    .line 203
    .line 204
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v3, v4, v5}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_5
    const-string v3, "cacheOptionalHtmlResource"

    .line 218
    .line 219
    invoke-virtual {p0, v2, v3, v13}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_6
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_7

    .line 229
    .line 230
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 231
    .line 232
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 233
    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v3, "Finish caching optional HTML resources for ad #"

    .line 240
    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget-object v3, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 247
    .line 248
    .line 249
    move-result-wide v3

    .line 250
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :cond_7
    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/applovin/impl/k5;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/applovin/impl/k5;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/j5;->run()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->O0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-boolean v1, p0, Lcom/applovin/impl/k5;->s:Z

    .line 11
    .line 12
    const-string v2, "..."

    .line 13
    .line 14
    if-nez v0, :cond_6

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "Begin processing for non-streaming ad #"

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v4, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 60
    .line 61
    sget-object v1, Lcom/applovin/impl/v4;->I0:Lcom/applovin/impl/v4;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/applovin/impl/o0;->e()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->e()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-direct {p0}, Lcom/applovin/impl/k5;->o()Lcom/applovin/impl/d0;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-direct {p0}, Lcom/applovin/impl/k5;->p()Lcom/applovin/impl/e0;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-virtual {p0, v0}, Lcom/applovin/impl/j5;->a(Ljava/util/List;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->f()V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/applovin/impl/k5;->q()V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->j()V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lcom/applovin/impl/k5;->m()V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Lcom/applovin/impl/k5;->n()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->f()V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/applovin/impl/k5;->q()V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_2

    .line 138
    .line 139
    :cond_6
    :goto_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 146
    .line 147
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 148
    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v5, "Begin caching for streaming ad #"

    .line 155
    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v5, p0, Lcom/applovin/impl/k5;->q:Lcom/applovin/impl/sdk/ad/a;

    .line 160
    .line 161
    invoke-virtual {v5}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 162
    .line 163
    .line 164
    move-result-wide v5

    .line 165
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_7
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 179
    .line 180
    sget-object v2, Lcom/applovin/impl/v4;->I0:Lcom/applovin/impl/v4;

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_e

    .line 193
    .line 194
    invoke-static {}, Lcom/applovin/impl/o0;->e()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-nez v1, :cond_8

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->e()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p0, v1}, Lcom/applovin/impl/j5;->a(Ljava/util/List;)Ljava/util/List;

    .line 205
    .line 206
    .line 207
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    .line 212
    if-eqz v0, :cond_c

    .line 213
    .line 214
    iget-boolean v0, p0, Lcom/applovin/impl/k5;->r:Z

    .line 215
    .line 216
    if-eqz v0, :cond_a

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->f()V

    .line 219
    .line 220
    .line 221
    invoke-direct {p0}, Lcom/applovin/impl/k5;->o()Lcom/applovin/impl/d0;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-eqz v0, :cond_9

    .line 226
    .line 227
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    :cond_9
    invoke-direct {p0}, Lcom/applovin/impl/k5;->p()Lcom/applovin/impl/e0;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-eqz v0, :cond_d

    .line 235
    .line 236
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_a
    invoke-direct {p0}, Lcom/applovin/impl/k5;->o()Lcom/applovin/impl/d0;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-eqz v0, :cond_b

    .line 245
    .line 246
    const/4 v2, 0x1

    .line 247
    new-array v2, v2, [Lcom/applovin/impl/c0;

    .line 248
    .line 249
    const/4 v3, 0x0

    .line 250
    aput-object v0, v2, v3

    .line 251
    .line 252
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/applovin/impl/j5;->a(Ljava/util/List;)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    :cond_b
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->f()V

    .line 260
    .line 261
    .line 262
    invoke-direct {p0}, Lcom/applovin/impl/k5;->p()Lcom/applovin/impl/e0;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-eqz v0, :cond_d

    .line 267
    .line 268
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    goto :goto_1

    .line 272
    :cond_c
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->f()V

    .line 273
    .line 274
    .line 275
    invoke-direct {p0}, Lcom/applovin/impl/k5;->o()Lcom/applovin/impl/d0;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    if-eqz v0, :cond_d

    .line 280
    .line 281
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    :cond_d
    :goto_1
    invoke-virtual {p0, v1}, Lcom/applovin/impl/j5;->a(Ljava/util/List;)Ljava/util/List;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->f()V

    .line 288
    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_e
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->j()V

    .line 292
    .line 293
    .line 294
    if-eqz v0, :cond_11

    .line 295
    .line 296
    iget-boolean v0, p0, Lcom/applovin/impl/k5;->r:Z

    .line 297
    .line 298
    if-eqz v0, :cond_f

    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->f()V

    .line 301
    .line 302
    .line 303
    :cond_f
    invoke-direct {p0}, Lcom/applovin/impl/k5;->m()V

    .line 304
    .line 305
    .line 306
    iget-boolean v0, p0, Lcom/applovin/impl/k5;->r:Z

    .line 307
    .line 308
    if-nez v0, :cond_10

    .line 309
    .line 310
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->f()V

    .line 311
    .line 312
    .line 313
    :cond_10
    invoke-direct {p0}, Lcom/applovin/impl/k5;->n()V

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_11
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->f()V

    .line 318
    .line 319
    .line 320
    invoke-direct {p0}, Lcom/applovin/impl/k5;->m()V

    .line 321
    .line 322
    .line 323
    :goto_2
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->k()V

    .line 324
    .line 325
    .line 326
    return-void
.end method

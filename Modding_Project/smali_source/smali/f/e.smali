.class public final Lf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lfa/c;

.field public final b:Ljava/lang/String;

.field public final c:Lca/d;

.field public final d:Ljava/lang/Object;

.field public final e:Lca/e;

.field public f:Lca/f;

.field public final g:Lg/a;

.field public h:Z


# direct methods
.method public constructor <init>(Lfa/c;Ljava/lang/String;Lca/d;Ljava/lang/Object;Lca/e;)V
    .locals 2

    .line 1
    const-string v0, "loader"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cacheKey"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adInfo"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "adLoadParam"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lf/e;->a:Lfa/c;

    .line 25
    .line 26
    iput-object p2, p0, Lf/e;->b:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p3, p0, Lf/e;->c:Lca/d;

    .line 29
    .line 30
    iput-object p4, p0, Lf/e;->d:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object p5, p0, Lf/e;->e:Lca/e;

    .line 33
    .line 34
    new-instance p1, Lg/a;

    .line 35
    .line 36
    invoke-direct {p1}, Lg/a;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iput-wide v0, p1, Lg/a;->a:J

    .line 44
    .line 45
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    iput-wide v0, p1, Lg/a;->b:J

    .line 48
    .line 49
    iput-object p1, p0, Lf/e;->g:Lg/a;

    .line 50
    .line 51
    invoke-virtual {p3, p0}, Lca/d;->v(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lga/a;->a:Lga/a;

    .line 55
    .line 56
    const-string p2, "AdManager:ApplovinMax:Listener"

    .line 57
    .line 58
    invoke-static {p5, p2}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    new-instance p4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p5, "toMaxAdListener:init this"

    .line 65
    .line 66
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p1, p2, p3}, Lga/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public static final c(Lf/e;)V
    .locals 5

    .line 1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 2
    .line 3
    iget-object v1, p0, Lf/e;->e:Lca/e;

    .line 4
    .line 5
    const-string v2, "AdManager:ApplovinMax:Listener"

    .line 6
    .line 7
    invoke-static {v1, v2}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v4, "toMaxAdListener:adDisplayed"

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v4, p0, Lf/e;->c:Lca/d;

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v1, v3}, Lga/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lf/e;->f:Lca/f;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lf/e;->e:Lca/e;

    .line 35
    .line 36
    invoke-static {v1, v2}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "err:adRequestParam is null"

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lf/e;->f:Lca/f;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lf/e;->a:Lfa/c;

    .line 50
    .line 51
    invoke-virtual {v1}, Lda/f;->r()Ld/a;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object p0, p0, Lf/e;->c:Lca/d;

    .line 56
    .line 57
    invoke-virtual {v1, p0, v0}, Ld/a;->i(Lca/d;Lca/f;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public static final d(Lf/e;Lcom/applovin/mediation/MaxAd;)V
    .locals 12

    .line 1
    const-string v0, "ad"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getRevenue()D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/16 v2, 0x3e8

    .line 11
    .line 12
    int-to-double v2, v2

    .line 13
    mul-double/2addr v0, v2

    .line 14
    mul-double/2addr v0, v2

    .line 15
    double-to-long v0, v0

    .line 16
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getRevenuePrecision()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lf/e;->a:Lfa/c;

    .line 21
    .line 22
    invoke-virtual {v3}, Lda/f;->t()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lcom/applovin/sdk/AppLovinSdk;->getConfiguration()Lcom/applovin/sdk/AppLovinSdkConfiguration;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v3}, Lcom/applovin/sdk/AppLovinSdkConfiguration;->getCountryCode()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getNetworkName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getPlacement()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getNetworkPlacement()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    sget-object v7, Lga/a;->a:Lga/a;

    .line 57
    .line 58
    iget-object v8, p0, Lf/e;->e:Lca/e;

    .line 59
    .line 60
    const-string v9, "AdManager:ApplovinMax:Listener"

    .line 61
    .line 62
    invoke-static {v8, v9}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v10, "RevenueListener:adUnitId("

    .line 69
    .line 70
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v5, ") revenue("

    .line 77
    .line 78
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getRevenue()D

    .line 82
    .line 83
    .line 84
    move-result-wide v10

    .line 85
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, ") precision("

    .line 89
    .line 90
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, ") countryCode("

    .line 97
    .line 98
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, ") adFormat("

    .line 105
    .line 106
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p1, ") networkName("

    .line 113
    .line 114
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const/16 p1, 0x29

    .line 121
    .line 122
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v7, v8, p1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lf/e;->f:Lca/f;

    .line 133
    .line 134
    if-eqz p1, :cond_0

    .line 135
    .line 136
    iget-object v4, p0, Lf/e;->a:Lfa/c;

    .line 137
    .line 138
    invoke-virtual {v4}, Lda/f;->r()Ld/a;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    iget-object p0, p0, Lf/e;->c:Lca/d;

    .line 143
    .line 144
    new-instance v5, Lca/h;

    .line 145
    .line 146
    const-string v6, "precision"

    .line 147
    .line 148
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v6, "countryCode"

    .line 152
    .line 153
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-direct {v5, v2, v0, v1, v3}, Lca/h;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, p0, p1, v5}, Ld/a;->d(Lca/d;Lca/f;Lca/h;)V

    .line 160
    .line 161
    .line 162
    :cond_0
    return-void
.end method

.method public static final e(Lf/e;Lcom/applovin/mediation/MaxError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/e;->f:Lca/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lga/a;->a:Lga/a;

    .line 6
    .line 7
    iget-object v1, p0, Lf/e;->e:Lca/e;

    .line 8
    .line 9
    const-string v2, "AdManager:ApplovinMax:Listener"

    .line 10
    .line 11
    invoke-static {v1, v2}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "err:adRequestParam is null"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lf/e;->c:Lca/d;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lca/d;->v(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lf/e;->f:Lca/f;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lf/e;->a:Lfa/c;

    .line 31
    .line 32
    iget-object v2, p0, Lf/e;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lda/f;->M(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lf/e;->a:Lfa/c;

    .line 38
    .line 39
    invoke-virtual {v1}, Lda/f;->r()Ld/a;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object p0, p0, Lf/e;->c:Lca/d;

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/applovin/mediation/MaxError;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    const-string p1, "unknow"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v2, "error.message ?: \"unknow\""

    .line 55
    .line 56
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p1, v0}, Ld/a;->f(Lca/d;Ljava/lang/String;Lca/f;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Lcom/applovin/mediation/MaxAdRevenueListener;
    .locals 1

    .line 1
    new-instance v0, Lf/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lf/d;-><init>(Lf/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final b(Lca/f;)V
    .locals 4

    .line 1
    const-string v0, "reqp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lga/a;->a:Lga/a;

    .line 7
    .line 8
    iget-object v1, p0, Lf/e;->e:Lca/e;

    .line 9
    .line 10
    const-string v2, "AdManager:ApplovinMax:Listener"

    .line 11
    .line 12
    invoke-static {v1, v2}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "toMaxAdListener:setShowParam"

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lf/e;->c:Lca/d;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lga/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lf/e;->f:Lca/f;

    .line 36
    .line 37
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "ad"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/applovin/mediation/ads/MaxAppOpenAd;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/applovin/mediation/ads/MaxAppOpenAd;

    .line 11
    .line 12
    new-instance v0, Lf/b;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lf/b;-><init>(Lf/e;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/ads/MaxAppOpenAd;->setListener(Lcom/applovin/mediation/MaxAdListener;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lf/e;->a()Lcom/applovin/mediation/MaxAdRevenueListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/ads/MaxAppOpenAd;->setRevenueListener(Lcom/applovin/mediation/MaxAdRevenueListener;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    instance-of v0, p1, Lcom/applovin/mediation/ads/MaxInterstitialAd;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    check-cast p1, Lcom/applovin/mediation/ads/MaxInterstitialAd;

    .line 33
    .line 34
    new-instance v0, Lf/b;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lf/b;-><init>(Lf/e;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->setListener(Lcom/applovin/mediation/MaxAdListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lf/e;->a()Lcom/applovin/mediation/MaxAdRevenueListener;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->setRevenueListener(Lcom/applovin/mediation/MaxAdRevenueListener;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    instance-of v0, p1, Lcom/applovin/mediation/ads/MaxRewardedAd;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    check-cast p1, Lcom/applovin/mediation/ads/MaxRewardedAd;

    .line 55
    .line 56
    new-instance v0, Lf/c;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lf/c;-><init>(Lf/e;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/ads/MaxRewardedAd;->setListener(Lcom/applovin/mediation/MaxRewardedAdListener;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lf/e;->a()Lcom/applovin/mediation/MaxAdRevenueListener;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/ads/MaxRewardedAd;->setRevenueListener(Lcom/applovin/mediation/MaxAdRevenueListener;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    .line 73
    .line 74
    const-string v0, "not implement Listener of this type ad"

    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

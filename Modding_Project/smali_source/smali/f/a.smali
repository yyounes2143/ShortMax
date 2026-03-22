.class public final Lf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/g;


# instance fields
.field public final a:Lfa/c;

.field public final b:Lms/i;


# direct methods
.method public constructor <init>(Lfa/c;)V
    .locals 1

    .line 1
    const-string v0, "adLoader"

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
    iput-object p1, p0, Lf/a;->a:Lfa/c;

    .line 10
    .line 11
    new-instance p1, Lad-manager/e/z;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lad-manager/e/z;-><init>(Lf/a;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lf/a;->b:Lms/i;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lca/d;Lca/f;)V
    .locals 3

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adRequestParam"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lga/a;->a:Lga/a;

    .line 12
    .line 13
    const-string v1, "AdManager:ApplovinMax:Shower"

    .line 14
    .line 15
    invoke-static {p1, v1}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "showInterstitialAd"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-class v0, Lcom/applovin/mediation/ads/MaxInterstitialAd;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0, p2}, Lf/a;->g(Lca/d;Ljava/lang/Class;Lca/f;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/applovin/mediation/ads/MaxInterstitialAd;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lf/a;->b:Lms/i;

    .line 36
    .line 37
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ld/a;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Ld/a;->a(Lca/d;Lca/f;)Landroid/app/Activity;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Lca/d;->g()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    instance-of v2, p1, Lf/e;

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    check-cast p1, Lf/e;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 p1, 0x0

    .line 65
    :goto_0
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lf/e;->b(Lca/f;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->showAd(Landroid/app/Activity;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final b(Lca/d;Lca/f;)V
    .locals 1

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "adRequestParam"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Lca/d;Lca/f;)V
    .locals 3

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adRequestParam"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lga/a;->a:Lga/a;

    .line 12
    .line 13
    const-string v1, "AdManager:ApplovinMax:Shower"

    .line 14
    .line 15
    invoke-static {p1, v1}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "showAppOpenAd"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-class v0, Lcom/applovin/mediation/ads/MaxAppOpenAd;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0, p2}, Lf/a;->g(Lca/d;Ljava/lang/Class;Lca/f;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/applovin/mediation/ads/MaxAppOpenAd;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Lca/d;->g()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    instance-of v1, p1, Lf/e;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    check-cast p1, Lf/e;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    :goto_0
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lf/e;->b(Lca/f;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxAppOpenAd;->showAd()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final d(Lca/d;Lca/f;)V
    .locals 1

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "adRequestParam"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final e(Lca/d;Lca/f;)V
    .locals 1

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "adRequestParam"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f(Lca/d;Lca/f;)V
    .locals 3

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adRequestParam"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lga/a;->a:Lga/a;

    .line 12
    .line 13
    const-string v1, "AdManager:ApplovinMax:Shower"

    .line 14
    .line 15
    invoke-static {p1, v1}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "showRewardVideoAd"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-class v0, Lcom/applovin/mediation/ads/MaxRewardedAd;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0, p2}, Lf/a;->g(Lca/d;Ljava/lang/Class;Lca/f;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/applovin/mediation/ads/MaxRewardedAd;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lf/a;->b:Lms/i;

    .line 36
    .line 37
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ld/a;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Ld/a;->a(Lca/d;Lca/f;)Landroid/app/Activity;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Lca/d;->g()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    instance-of v2, p1, Lf/e;

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    check-cast p1, Lf/e;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 p1, 0x0

    .line 65
    :goto_0
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lf/e;->b(Lca/f;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/ads/MaxRewardedAd;->showAd(Landroid/app/Activity;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final g(Lca/d;Ljava/lang/Class;Lca/f;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lca/d;->m()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lca/d;->m()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object p2, Lga/a;->a:Lga/a;

    .line 21
    .line 22
    const-string v0, "AdManager:ApplovinMax:Shower"

    .line 23
    .line 24
    invoke-static {p1, v0}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "removeAd Ad case errType"

    .line 29
    .line 30
    invoke-virtual {p2, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "removeAd from AdCachePools -> adInfo="

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p2, v0, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lf/a;->a:Lfa/c;

    .line 55
    .line 56
    invoke-virtual {p1}, Lca/d;->i()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p2, v0}, Lda/f;->M(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lf/a;->b:Lms/i;

    .line 64
    .line 65
    invoke-interface {p2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Ld/a;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    const-string p2, "realAd is null"

    .line 75
    .line 76
    invoke-static {p1, p2, p3}, Ld/a;->f(Lca/d;Ljava/lang/String;Lca/f;)V

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    :goto_0
    return-object p1
.end method

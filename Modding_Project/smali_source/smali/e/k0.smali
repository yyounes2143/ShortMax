.class public final Le/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/g;


# instance fields
.field public final a:Le/t;

.field public final b:Lms/i;


# direct methods
.method public constructor <init>(Le/t;)V
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
    iput-object p1, p0, Le/k0;->a:Le/t;

    .line 10
    .line 11
    new-instance p1, Lad-manager/d/k0;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lad-manager/d/k0;-><init>(Le/k0;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Le/k0;->b:Lms/i;

    .line 21
    .line 22
    return-void
.end method

.method public static final i(Lcom/google/android/gms/ads/AdView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->resume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final j(Le/k0;Lca/d;Lca/f;Lcom/google/android/gms/ads/AdValue;)V
    .locals 5

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Le/k0;->b:Lms/i;

    .line 7
    .line 8
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ld/a;

    .line 13
    .line 14
    new-instance v0, Lca/h;

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const-string v4, "p0.currencyCode"

    .line 33
    .line 34
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, v2, v3, p3}, Lca/h;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, v0}, Ld/a;->d(Lca/d;Lca/f;Lca/h;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static final k(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lga/a;->a:Lga/a;

    .line 7
    .line 8
    const-string v0, "AdManagerAdmobShower"

    .line 9
    .line 10
    const-string v1, "AdmobRewardVideoAd -> onUserEarnedReward"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 17
    .line 18
    return-void
.end method

.method public static final l(Le/k0;Lca/d;Lca/f;Lcom/google/android/gms/ads/AdValue;)V
    .locals 5

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Le/k0;->b:Lms/i;

    .line 7
    .line 8
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ld/a;

    .line 13
    .line 14
    new-instance v0, Lca/h;

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const-string v4, "it.currencyCode"

    .line 33
    .line 34
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, v2, v3, p3}, Lca/h;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, v0}, Ld/a;->d(Lca/d;Lca/f;Lca/h;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static final m(Le/k0;Lca/d;Lca/f;Lcom/google/android/gms/ads/AdValue;)V
    .locals 5

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Le/k0;->b:Lms/i;

    .line 7
    .line 8
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ld/a;

    .line 13
    .line 14
    new-instance v0, Lca/h;

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const-string v4, "p0.currencyCode"

    .line 33
    .line 34
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, v2, v3, p3}, Lca/h;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, v0}, Ld/a;->d(Lca/d;Lca/f;Lca/h;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static final n(Le/k0;Lca/d;Lca/f;Lcom/google/android/gms/ads/AdValue;)V
    .locals 5

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Le/k0;->b:Lms/i;

    .line 7
    .line 8
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ld/a;

    .line 13
    .line 14
    new-instance v0, Lca/h;

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const-string v4, "p0.currencyCode"

    .line 33
    .line 34
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, v2, v3, p3}, Lca/h;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, v0}, Ld/a;->d(Lca/d;Lca/f;Lca/h;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static final o(Le/k0;Lca/d;Lca/f;Lcom/google/android/gms/ads/AdValue;)V
    .locals 5

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Le/k0;->b:Lms/i;

    .line 7
    .line 8
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ld/a;

    .line 13
    .line 14
    new-instance v0, Lca/h;

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const-string v4, "p0.currencyCode"

    .line 33
    .line 34
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, v2, v3, p3}, Lca/h;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, v0}, Ld/a;->d(Lca/d;Lca/f;Lca/h;)V

    .line 41
    .line 42
    .line 43
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
    const-class v0, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, p2}, Le/k0;->g(Lca/d;Ljava/lang/Class;Lca/f;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Le/k0;->b:Lms/i;

    .line 23
    .line 24
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ld/a;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Ld/a;->a(Lca/d;Lca/f;)Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    new-instance v2, Le/i0;

    .line 41
    .line 42
    invoke-direct {v2, p0, p1, p2}, Le/i0;-><init>(Le/k0;Lca/d;Lca/f;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Le/u;

    .line 49
    .line 50
    invoke-direct {v2, p0, p1, p2, v0}, Le/u;-><init>(Le/k0;Lca/d;Lca/f;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final b(Lca/d;Lca/f;)V
    .locals 11

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
    const-class v1, Lcom/google/android/gms/ads/AdView;

    .line 12
    .line 13
    invoke-virtual {p0, p1, v1, p2}, Le/k0;->g(Lca/d;Ljava/lang/Class;Lca/f;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/ads/AdView;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v2, p0, Le/k0;->b:Lms/i;

    .line 23
    .line 24
    invoke-interface {v2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ld/a;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lca/f;->c()Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/view/ViewGroup;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    :goto_0
    const-string v2, "AdManagerAdmobShower"

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    sget-object v0, Lga/a;->a:Lga/a;

    .line 55
    .line 56
    const-string v1, "showBannerAd -> container is null"

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Le/k0;->h(Lca/d;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Le/k0;->b:Lms/i;

    .line 65
    .line 66
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ld/a;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-string v0, "container is null"

    .line 76
    .line 77
    invoke-static {p1, v0, p2}, Ld/a;->f(Lca/d;Ljava/lang/String;Lca/f;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    new-instance v3, Le/d0;

    .line 82
    .line 83
    invoke-direct {v3, p0, p1, p2}, Le/d0;-><init>(Le/k0;Lca/d;Lca/f;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/BaseAdView;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 87
    .line 88
    .line 89
    new-instance v3, Le/q;

    .line 90
    .line 91
    invoke-direct {v3, p0, p1, p2, v1}, Le/q;-><init>(Le/k0;Lca/d;Lca/f;Lcom/google/android/gms/ads/AdView;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 95
    .line 96
    .line 97
    sget-object p1, Lad-manager/d/n0;->d:Lad-manager/d/n0;

    .line 98
    .line 99
    new-instance p2, Lad-manager/d/o0;

    .line 100
    .line 101
    invoke-direct {p2, v1}, Lad-manager/d/o0;-><init>(Lcom/google/android/gms/ads/AdView;)V

    .line 102
    .line 103
    .line 104
    const-string v3, "parent"

    .line 105
    .line 106
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v3, "onDetachedFromParent"

    .line 110
    .line 111
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v3, "onVisibleChange"

    .line 115
    .line 116
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-lez v3, :cond_5

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    const/4 v4, 0x0

    .line 130
    :goto_1
    if-ge v4, v3, :cond_4

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    instance-of v6, v5, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;

    .line 137
    .line 138
    if-eqz v6, :cond_3

    .line 139
    .line 140
    check-cast v5, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;

    .line 141
    .line 142
    invoke-virtual {v5}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->b()V

    .line 143
    .line 144
    .line 145
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 149
    .line 150
    .line 151
    :cond_5
    new-instance v3, Lcom/hades/aar/admanager/view/nativead/DetachableContainer;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    const-string v4, "parent.context"

    .line 158
    .line 159
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const/4 v9, 0x6

    .line 163
    const/4 v10, 0x0

    .line 164
    const/4 v7, 0x0

    .line 165
    const/4 v8, 0x0

    .line 166
    move-object v5, v3

    .line 167
    invoke-direct/range {v5 .. v10}, Lcom/hades/aar/admanager/view/nativead/DetachableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 168
    .line 169
    .line 170
    new-instance v4, Lad-manager/c/l;

    .line 171
    .line 172
    invoke-direct {v4, p1}, Lad-manager/c/l;-><init>(Lad-manager/d/n0;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v4}, Lcom/hades/aar/admanager/view/nativead/DetachableContainer;->setOnDetachFromParent(Lkotlin/jvm/functions/Function0;)V

    .line 176
    .line 177
    .line 178
    new-instance p1, Lad-manager/c/m;

    .line 179
    .line 180
    invoke-direct {p1, p2}, Lad-manager/c/m;-><init>(Lad-manager/d/o0;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, p1}, Lcom/hades/aar/admanager/view/nativead/DetachableContainer;->setOnVisibilityChangeListener(Lkotlin/jvm/functions/Function2;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v3}, Ld/d;->c(Landroid/widget/FrameLayout;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v1}, Lcom/hades/aar/admanager/view/nativead/DetachableContainer;->b(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    :try_start_0
    new-instance p1, Le/e0;

    .line 196
    .line 197
    invoke-direct {p1, v1}, Le/e0;-><init>(Lcom/google/android/gms/ads/AdView;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :catch_0
    sget-object p1, Lga/a;->a:Lga/a;

    .line 205
    .line 206
    const-string p2, "showBannerAd -> resume error"

    .line 207
    .line 208
    invoke-virtual {p1, v2, p2}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :goto_2
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
    const-class v0, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, p2}, Le/k0;->g(Lca/d;Ljava/lang/Class;Lca/f;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Le/k0;->b:Lms/i;

    .line 23
    .line 24
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ld/a;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Ld/a;->a(Lca/d;Lca/f;)Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    new-instance v2, Le/j0;

    .line 41
    .line 42
    invoke-direct {v2, p0, p1, p2}, Le/j0;-><init>(Le/k0;Lca/d;Lca/f;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Le/p;

    .line 49
    .line 50
    invoke-direct {v2, p0, p1, p2, v0}, Le/p;-><init>(Le/k0;Lca/d;Lca/f;Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V

    .line 57
    .line 58
    .line 59
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
    const-string v0, "adRequestParam"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lca/f;->n()Lca/f$e;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const-string v0, "not support"

    .line 18
    .line 19
    invoke-interface {p2, p1, v0}, Lca/f$e;->a(Lca/d;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p1, Lga/a;->a:Lga/a;

    .line 23
    .line 24
    const-string p2, "AdManagerAdmobShower"

    .line 25
    .line 26
    const-string v0, "showMediaVideoAd -> not support"

    .line 27
    .line 28
    invoke-virtual {p1, p2, v0}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final e(Lca/d;Lca/f;)V
    .locals 9

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "adRequestParam"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-class v2, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 12
    .line 13
    invoke-virtual {p0, p1, v2, p2}, Le/k0;->g(Lca/d;Ljava/lang/Class;Lca/f;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    move-object v4, v2

    .line 18
    check-cast v4, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v2, p0, Le/k0;->b:Lms/i;

    .line 24
    .line 25
    invoke-interface {v2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ld/a;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lca/f;->c()Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/view/ViewGroup;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v2, 0x0

    .line 51
    :goto_0
    if-nez v2, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Le/k0;->b:Lms/i;

    .line 54
    .line 55
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ld/a;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Ld/a;->a(Lca/d;Lca/f;)Landroid/app/Activity;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    sget-object v2, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    const-string v2, "context"

    .line 74
    .line 75
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "param"

    .line 82
    .line 83
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v2, "randomUUID().toString()"

    .line 95
    .line 96
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v3, "show -> id="

    .line 102
    .line 103
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v3, ", info="

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    sget-object v3, Lga/a;->a:Lga/a;

    .line 122
    .line 123
    const-string v4, "AdManagerFullScreenAdActivity"

    .line 124
    .line 125
    invoke-virtual {v3, v4, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    sget-object v2, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 129
    .line 130
    new-instance v3, Lkotlin/Pair;

    .line 131
    .line 132
    invoke-direct {v3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    new-instance p1, Landroid/content/Intent;

    .line 139
    .line 140
    const-class p2, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;

    .line 141
    .line 142
    invoke-direct {p1, v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .line 144
    .line 145
    const-string p2, "extra_ad_show_id"

    .line 146
    .line 147
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_3
    new-instance v0, Le/f0;

    .line 155
    .line 156
    invoke-direct {v0, p0, p1, p2}, Le/f0;-><init>(Le/k0;Lca/d;Lca/f;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 160
    .line 161
    .line 162
    new-instance v3, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;

    .line 163
    .line 164
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string v5, "adContainer.context"

    .line 169
    .line 170
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v5, p0, Le/k0;->b:Lms/i;

    .line 174
    .line 175
    invoke-interface {v5}, Lms/i;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    check-cast v5, Ld/a;

    .line 180
    .line 181
    invoke-virtual {p1}, Lca/d;->d()Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v1, "aggregatedSdk"

    .line 192
    .line 193
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Lca/f;->e()Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-eqz v1, :cond_4

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    goto :goto_1

    .line 207
    :cond_4
    sget-object v1, Lcom/hades/aar/admanager/core/AdAggregatedSdk;->ADMOB:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 208
    .line 209
    if-ne v6, v1, :cond_5

    .line 210
    .line 211
    sget v1, Lba/b;->c:I

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_5
    sget v1, Lba/b;->d:I

    .line 215
    .line 216
    :goto_1
    invoke-direct {v3, v0, v1}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;-><init>(Landroid/content/Context;I)V

    .line 217
    .line 218
    .line 219
    sget v0, Lba/a;->b:I

    .line 220
    .line 221
    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    .line 222
    .line 223
    .line 224
    new-instance v0, Le/y;

    .line 225
    .line 226
    invoke-direct {v0, p1, p0, p2}, Le/y;-><init>(Lca/d;Le/k0;Lca/f;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v0}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->setMOnDestroyListener(Lia/c;)V

    .line 230
    .line 231
    .line 232
    new-instance v0, Le/a0;

    .line 233
    .line 234
    invoke-direct {v0, p1, p2}, Le/a0;-><init>(Lca/d;Lca/f;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, v0}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->setMVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Le/k0;->a:Le/t;

    .line 241
    .line 242
    invoke-virtual {p1}, Lca/d;->i()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    new-instance v1, Le/w;

    .line 247
    .line 248
    invoke-direct {v1, p0, p2}, Le/w;-><init>(Le/k0;Lca/f;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, p1, v1}, Lda/f;->h(Ljava/lang/String;Ld/e;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-lez p1, :cond_8

    .line 259
    .line 260
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    const/4 v0, 0x0

    .line 265
    :goto_2
    if-ge v0, p1, :cond_7

    .line 266
    .line 267
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    instance-of v5, v1, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;

    .line 272
    .line 273
    if-eqz v5, :cond_6

    .line 274
    .line 275
    check-cast v1, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;

    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->b()V

    .line 278
    .line 279
    .line 280
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 284
    .line 285
    .line 286
    :cond_8
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    invoke-static {v3}, Ld/d;->c(Landroid/widget/FrameLayout;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2}, Lca/f;->k()Landroid/widget/ImageView$ScaleType;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    const/4 v7, 0x2

    .line 297
    const/4 v8, 0x0

    .line 298
    const/4 v5, 0x0

    .line 299
    invoke-static/range {v3 .. v8}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->setNativeAd$default(Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;Lcom/google/android/gms/ads/nativead/NativeAd;Lia/b;Landroid/widget/ImageView$ScaleType;ILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    return-void
.end method

.method public final f(Lca/d;Lca/f;)V
    .locals 10

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
    const-class v0, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, p2}, Le/k0;->g(Lca/d;Ljava/lang/Class;Lca/f;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Le/k0;->b:Lms/i;

    .line 23
    .line 24
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ld/a;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Ld/a;->a(Lca/d;Lca/f;)Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    if-nez v7, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 41
    .line 42
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v1, Le/g0;

    .line 46
    .line 47
    invoke-direct {v1, p0, p1, p2}, Le/g0;-><init>(Le/k0;Lca/d;Lca/f;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 51
    .line 52
    .line 53
    new-instance v9, Le/b0;

    .line 54
    .line 55
    move-object v1, v9

    .line 56
    move-object v2, p0

    .line 57
    move-object v3, p1

    .line 58
    move-object v4, p2

    .line 59
    move-object v5, v0

    .line 60
    move-object v6, v8

    .line 61
    invoke-direct/range {v1 .. v6}, Le/b0;-><init>(Le/k0;Lca/d;Lca/f;Lcom/google/android/gms/ads/rewarded/RewardedAd;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v9}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lca/k;->a:Lca/k;

    .line 68
    .line 69
    sget-object p2, Lcom/hades/aar/admanager/core/AdFormat;->REWARDED_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lca/k;->i(Lcom/hades/aar/admanager/core/AdFormat;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    sget-object p1, Lga/a;->a:Lga/a;

    .line 78
    .line 79
    const-string p2, "AdManagerAdmobShower"

    .line 80
    .line 81
    const-string v0, "AdmobRewardVideoAd -> onUserEarnedReward"

    .line 82
    .line 83
    invoke-virtual {p1, p2, v0}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 p1, 0x1

    .line 87
    iput-boolean p1, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    new-instance p1, Le/h0;

    .line 91
    .line 92
    invoke-direct {p1, v8}, Le/h0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v7, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method

.method public final g(Lca/d;Ljava/lang/Class;Lca/f;)Ljava/lang/Object;
    .locals 1

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
    invoke-virtual {p0, p1}, Le/k0;->h(Lca/d;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Le/k0;->b:Lms/i;

    .line 24
    .line 25
    invoke-interface {p2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Ld/a;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-string p2, "realAd is null"

    .line 35
    .line 36
    invoke-static {p1, p2, p3}, Ld/a;->f(Lca/d;Ljava/lang/String;Lca/f;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    :goto_0
    return-object p1
.end method

.method public final h(Lca/d;)V
    .locals 3

    .line 1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "removeAd from AdCachePools -> adInfo="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "AdManagerAdmobShower"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Le/k0;->a:Le/t;

    .line 23
    .line 24
    invoke-virtual {p1}, Lca/d;->i()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lda/f;->M(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

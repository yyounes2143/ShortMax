.class public final Le/u;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/k0;

.field public final synthetic b:Lca/d;

.field public final synthetic c:Lca/f;

.field public final synthetic d:Lcom/google/android/gms/ads/interstitial/InterstitialAd;


# direct methods
.method public constructor <init>(Le/k0;Lca/d;Lca/f;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/u;->a:Le/k0;

    .line 2
    .line 3
    iput-object p2, p0, Le/u;->b:Lca/d;

    .line 4
    .line 5
    iput-object p3, p0, Le/u;->c:Lca/f;

    .line 6
    .line 7
    iput-object p4, p0, Le/u;->d:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 3

    .line 1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 2
    .line 3
    const-string v1, "AdManagerAdmobShower"

    .line 4
    .line 5
    const-string v2, "AdmobInterstitialAd -> onAdClicked"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Le/u;->c:Lca/f;

    .line 11
    .line 12
    invoke-virtual {v0}, Lca/f;->g()Lca/f$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Le/u;->b:Lca/d;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lca/f$b;->a(Lca/d;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onAdDismissedFullScreenContent()V
    .locals 4

    .line 1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 2
    .line 3
    const-string v1, "AdManagerAdmobShower"

    .line 4
    .line 5
    const-string v2, "AdmobInterstitialAd -> onAdDismissedFullScreenContent"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Le/u;->d:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Le/u;->a:Le/k0;

    .line 17
    .line 18
    iget-object v2, p0, Le/u;->b:Lca/d;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Le/k0;->h(Lca/d;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Le/u;->a:Le/k0;

    .line 24
    .line 25
    iget-object v0, v0, Le/k0;->b:Lms/i;

    .line 26
    .line 27
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ld/a;

    .line 32
    .line 33
    iget-object v2, p0, Le/u;->b:Lca/d;

    .line 34
    .line 35
    iget-object v3, p0, Le/u;->c:Lca/f;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3, v1}, Ld/a;->e(Lca/d;Lca/f;Ljava/lang/Boolean;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 3

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lga/a;->a:Lga/a;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "AdmobInterstitialAd -> onAdFailedToShowFullScreenContent("

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x29

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "AdManagerAdmobShower"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Le/u;->d:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Le/u;->a:Le/k0;

    .line 39
    .line 40
    iget-object v1, p0, Le/u;->b:Lca/d;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Le/k0;->h(Lca/d;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Le/u;->a:Le/k0;

    .line 46
    .line 47
    iget-object v0, v0, Le/k0;->b:Lms/i;

    .line 48
    .line 49
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ld/a;

    .line 54
    .line 55
    iget-object v1, p0, Le/u;->b:Lca/d;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v2, p0, Le/u;->c:Lca/f;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {v1, p1, v2}, Ld/a;->f(Lca/d;Ljava/lang/String;Lca/f;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final onAdShowedFullScreenContent()V
    .locals 3

    .line 1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 2
    .line 3
    const-string v1, "AdManagerAdmobShower"

    .line 4
    .line 5
    const-string v2, "AdmobInterstitialAd -> onAdShowedFullScreenContent"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Le/u;->a:Le/k0;

    .line 11
    .line 12
    iget-object v0, v0, Le/k0;->b:Lms/i;

    .line 13
    .line 14
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ld/a;

    .line 19
    .line 20
    iget-object v1, p0, Le/u;->b:Lca/d;

    .line 21
    .line 22
    iget-object v2, p0, Le/u;->c:Lca/f;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ld/a;->i(Lca/d;Lca/f;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

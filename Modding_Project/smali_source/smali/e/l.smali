.class public final Le/l;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/t;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lg/a;

.field public final synthetic d:Lca/e;


# direct methods
.method public constructor <init>(Le/t;Ljava/lang/String;Lg/a;Lca/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l;->a:Le/t;

    .line 2
    .line 3
    iput-object p2, p0, Le/l;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Le/l;->c:Lg/a;

    .line 6
    .line 7
    iput-object p4, p0, Le/l;->d:Lca/e;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 4

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le/l;->a:Le/t;

    .line 7
    .line 8
    iget-object v1, p0, Le/l;->d:Lca/e;

    .line 9
    .line 10
    iget-object v2, p0, Le/l;->c:Lg/a;

    .line 11
    .line 12
    iget-object v3, p0, Le/l;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3, p1}, Le/t;->X(Le/t;Lca/e;Lg/a;Ljava/lang/String;Lcom/google/android/gms/ads/LoadAdError;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onAdLoaded(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 2
    .line 3
    const-string v0, "ad"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Le/l;->a:Le/t;

    .line 9
    .line 10
    iget-object v1, p0, Le/l;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Le/l;->c:Lg/a;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v1, p1, v2, v3}, Le/t;->Z(Ljava/lang/String;Ljava/lang/Object;Lg/a;Lcom/google/android/gms/ads/ResponseInfo;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.class public final Le/b0;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/k0;

.field public final synthetic b:Lca/d;

.field public final synthetic c:Lca/f;

.field public final synthetic d:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Le/k0;Lca/d;Lca/f;Lcom/google/android/gms/ads/rewarded/RewardedAd;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b0;->a:Le/k0;

    .line 2
    .line 3
    iput-object p2, p0, Le/b0;->b:Lca/d;

    .line 4
    .line 5
    iput-object p3, p0, Le/b0;->c:Lca/f;

    .line 6
    .line 7
    iput-object p4, p0, Le/b0;->d:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 8
    .line 9
    iput-object p5, p0, Le/b0;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/b0;->a:Le/k0;

    .line 2
    .line 3
    iget-object v0, v0, Le/k0;->b:Lms/i;

    .line 4
    .line 5
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ld/a;

    .line 10
    .line 11
    iget-object v1, p0, Le/b0;->b:Lca/d;

    .line 12
    .line 13
    iget-object v2, p0, Le/b0;->c:Lca/f;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Ld/a;->h(Lca/d;Lca/f;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onAdDismissedFullScreenContent()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/b0;->d:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Le/b0;->a:Le/k0;

    .line 8
    .line 9
    iget-object v1, p0, Le/b0;->b:Lca/d;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Le/k0;->h(Lca/d;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Le/b0;->a:Le/k0;

    .line 15
    .line 16
    iget-object v0, v0, Le/k0;->b:Lms/i;

    .line 17
    .line 18
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ld/a;

    .line 23
    .line 24
    iget-object v1, p0, Le/b0;->b:Lca/d;

    .line 25
    .line 26
    iget-object v2, p0, Le/b0;->c:Lca/f;

    .line 27
    .line 28
    iget-object v3, p0, Le/b0;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 29
    .line 30
    iget-boolean v3, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2, v3}, Ld/a;->e(Lca/d;Lca/f;Ljava/lang/Boolean;)V

    .line 40
    .line 41
    .line 42
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
    iget-object v0, p0, Le/b0;->d:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Le/b0;->a:Le/k0;

    .line 13
    .line 14
    iget-object v1, p0, Le/b0;->b:Lca/d;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Le/k0;->h(Lca/d;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Le/b0;->a:Le/k0;

    .line 20
    .line 21
    iget-object v0, v0, Le/k0;->b:Lms/i;

    .line 22
    .line 23
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ld/a;

    .line 28
    .line 29
    iget-object v1, p0, Le/b0;->b:Lca/d;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v2, p0, Le/b0;->c:Lca/f;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v1, p1, v2}, Ld/a;->f(Lca/d;Ljava/lang/String;Lca/f;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onAdShowedFullScreenContent()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/b0;->a:Le/k0;

    .line 2
    .line 3
    iget-object v0, v0, Le/k0;->b:Lms/i;

    .line 4
    .line 5
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ld/a;

    .line 10
    .line 11
    iget-object v1, p0, Le/b0;->b:Lca/d;

    .line 12
    .line 13
    iget-object v2, p0, Le/b0;->c:Lca/f;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ld/a;->i(Lca/d;Lca/f;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

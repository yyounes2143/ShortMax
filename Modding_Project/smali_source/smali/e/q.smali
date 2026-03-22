.class public final Le/q;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/k0;

.field public final synthetic b:Lca/d;

.field public final synthetic c:Lca/f;

.field public final synthetic d:Lcom/google/android/gms/ads/AdView;


# direct methods
.method public constructor <init>(Le/k0;Lca/d;Lca/f;Lcom/google/android/gms/ads/AdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/q;->a:Le/k0;

    .line 2
    .line 3
    iput-object p2, p0, Le/q;->b:Lca/d;

    .line 4
    .line 5
    iput-object p3, p0, Le/q;->c:Lca/f;

    .line 6
    .line 7
    iput-object p4, p0, Le/q;->d:Lcom/google/android/gms/ads/AdView;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/q;->a:Le/k0;

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
    iget-object v1, p0, Le/q;->b:Lca/d;

    .line 12
    .line 13
    iget-object v2, p0, Le/q;->c:Lca/f;

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

.method public final onAdClosed()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAdImpression()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le/q;->a:Le/k0;

    .line 5
    .line 6
    iget-object v0, v0, Le/k0;->b:Lms/i;

    .line 7
    .line 8
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ld/a;

    .line 13
    .line 14
    iget-object v1, p0, Le/q;->b:Lca/d;

    .line 15
    .line 16
    iget-object v2, p0, Le/q;->c:Lca/f;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ld/a;->i(Lca/d;Lca/f;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onAdLoaded()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/q;->a:Le/k0;

    .line 2
    .line 3
    iget-object v1, v0, Le/k0;->a:Le/t;

    .line 4
    .line 5
    iget-object v2, p0, Le/q;->b:Lca/d;

    .line 6
    .line 7
    sget v0, Le/t;->q:I

    .line 8
    .line 9
    iget-object v0, p0, Le/q;->d:Lcom/google/android/gms/ads/AdView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Le/d;->a(Lcom/google/android/gms/ads/ResponseInfo;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-wide/16 v3, -0x1

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    invoke-virtual/range {v1 .. v6}, Lda/f;->J(Lca/d;JLjava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

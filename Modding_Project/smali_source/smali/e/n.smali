.class public final Le/n;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/t;

.field public final synthetic b:Lca/e;

.field public final synthetic c:Lg/a;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lca/d;


# direct methods
.method public constructor <init>(Le/t;Lca/e;Lg/a;Ljava/lang/String;Lca/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n;->a:Le/t;

    .line 2
    .line 3
    iput-object p2, p0, Le/n;->b:Lca/e;

    .line 4
    .line 5
    iput-object p3, p0, Le/n;->c:Lg/a;

    .line 6
    .line 7
    iput-object p4, p0, Le/n;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Le/n;->e:Lca/d;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/n;->e:Lca/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Le/n;->a:Le/t;

    .line 6
    .line 7
    iget-object v2, p0, Le/n;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lda/f;->u(Ljava/lang/String;)Ld/e;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v1, Le/w;

    .line 16
    .line 17
    const-string v2, "adInfo"

    .line 18
    .line 19
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lga/a;->a:Lga/a;

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v4, "AdmobNativeAd -> onAdClicked "

    .line 27
    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "AdEventHandler"

    .line 39
    .line 40
    invoke-virtual {v2, v4, v3}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v1, Le/w;->b:Lca/f;

    .line 44
    .line 45
    invoke-virtual {v1}, Lca/f;->g()Lca/f$b;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-interface {v1, v0}, Lca/f$b;->a(Lca/d;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

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
    iget-object v0, p0, Le/n;->a:Le/t;

    .line 7
    .line 8
    iget-object v1, p0, Le/n;->b:Lca/e;

    .line 9
    .line 10
    iget-object v2, p0, Le/n;->c:Lg/a;

    .line 11
    .line 12
    iget-object v3, p0, Le/n;->d:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3, p1}, Le/t;->X(Le/t;Lca/e;Lg/a;Ljava/lang/String;Lcom/google/android/gms/ads/LoadAdError;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onAdImpression()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/n;->e:Lca/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Le/n;->a:Le/t;

    .line 6
    .line 7
    iget-object v2, p0, Le/n;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lda/f;->u(Ljava/lang/String;)Ld/e;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v1, Le/w;

    .line 16
    .line 17
    const-string v2, "adInfo"

    .line 18
    .line 19
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lga/a;->a:Lga/a;

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v4, "AdmobNativeAd -> onAdImpression "

    .line 27
    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "AdEventHandler"

    .line 39
    .line 40
    invoke-virtual {v2, v4, v3}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v1, Le/w;->a:Le/k0;

    .line 44
    .line 45
    iget-object v2, v2, Le/k0;->b:Lms/i;

    .line 46
    .line 47
    invoke-interface {v2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ld/a;

    .line 52
    .line 53
    iget-object v3, v1, Le/w;->b:Lca/f;

    .line 54
    .line 55
    invoke-virtual {v2, v0, v3}, Ld/a;->i(Lca/d;Lca/f;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v1, Le/w;->a:Le/k0;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Le/k0;->h(Lca/d;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

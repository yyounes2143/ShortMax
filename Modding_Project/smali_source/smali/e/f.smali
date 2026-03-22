.class public final Le/f;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/t;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/ads/AdView;

.field public final synthetic d:Lg/a;

.field public final synthetic e:Lca/e;


# direct methods
.method public constructor <init>(Le/t;Ljava/lang/String;Lcom/google/android/gms/ads/AdView;Lg/a;Lca/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f;->a:Le/t;

    .line 2
    .line 3
    iput-object p2, p0, Le/f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Le/f;->c:Lcom/google/android/gms/ads/AdView;

    .line 6
    .line 7
    iput-object p4, p0, Le/f;->d:Lg/a;

    .line 8
    .line 9
    iput-object p5, p0, Le/f;->e:Lca/e;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 12
    .line 13
    .line 14
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
    iget-object v0, p0, Le/f;->a:Le/t;

    .line 7
    .line 8
    iget-object v1, p0, Le/f;->e:Lca/e;

    .line 9
    .line 10
    iget-object v2, p0, Le/f;->d:Lg/a;

    .line 11
    .line 12
    iget-object v3, p0, Le/f;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3, p1}, Le/t;->X(Le/t;Lca/e;Lg/a;Ljava/lang/String;Lcom/google/android/gms/ads/LoadAdError;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onAdLoaded()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/f;->a:Le/t;

    .line 2
    .line 3
    iget-object v1, p0, Le/f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Le/f;->c:Lcom/google/android/gms/ads/AdView;

    .line 6
    .line 7
    iget-object v3, p0, Le/f;->d:Lg/a;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/ads/BaseAdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v0, v1, v2, v3, v4}, Le/t;->Z(Ljava/lang/String;Ljava/lang/Object;Lg/a;Lcom/google/android/gms/ads/ResponseInfo;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

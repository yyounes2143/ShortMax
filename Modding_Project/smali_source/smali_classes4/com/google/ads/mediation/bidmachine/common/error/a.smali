.class public final Lcom/google/ads/mediation/bidmachine/common/error/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "tag"

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
    iput-object p1, p0, Lcom/google/ads/mediation/bidmachine/common/error/a;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private final b(Lfr/a;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/ads/mediation/bidmachine/common/error/b;->a(Lfr/a;)Lcom/google/android/gms/ads/AdError;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/error/a;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 2

    .line 1
    const-string v0, "adLoadCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lfr/a;->n:Lfr/a;

    const-string v1, "Expired"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/google/ads/mediation/bidmachine/common/error/a;->b(Lfr/a;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    return-void
.end method

.method public final a(Lfr/a;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1

    .line 2
    const-string v0, "bmError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/common/error/a;->b(Lfr/a;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    return-void
.end method

.method public final a(Lfr/a;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 3
    const-string v0, "bmError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/ads/mediation/bidmachine/common/error/b;->a(Lfr/a;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/error/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

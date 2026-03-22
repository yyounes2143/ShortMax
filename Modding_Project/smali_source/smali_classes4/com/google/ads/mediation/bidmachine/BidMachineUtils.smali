.class public final Lcom/google/ads/mediation/bidmachine/BidMachineUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public static appendRequest(Lcom/google/android/gms/ads/AdRequest$Builder;Lio/bidmachine/AdRequest;)V
    .locals 0
    .param p0    # Lcom/google/android/gms/ads/AdRequest$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/AdRequest$Builder;",
            "Lio/bidmachine/AdRequest<",
            "***>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/ads/mediation/bidmachine/prebid/request/a;->a(Lcom/google/android/gms/ads/AdRequest$Builder;Lio/bidmachine/AdRequest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createAdRequest(Lio/bidmachine/AdRequest;)Lcom/google/android/gms/ads/AdRequest;
    .locals 0
    .param p0    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)",
            "Lcom/google/android/gms/ads/AdRequest;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/ads/mediation/bidmachine/prebid/request/a;->a(Lio/bidmachine/AdRequest;)Lcom/google/android/gms/ads/AdRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static createAdRequestBuilder(Lio/bidmachine/AdRequest;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 0
    .param p0    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/ads/mediation/bidmachine/prebid/request/a;->b(Lio/bidmachine/AdRequest;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/ads/mediation/bidmachine/BidMachineUtils;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of p1, p0, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

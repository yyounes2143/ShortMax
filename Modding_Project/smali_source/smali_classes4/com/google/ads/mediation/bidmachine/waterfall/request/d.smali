.class public final Lcom/google/ads/mediation/bidmachine/waterfall/request/d;
.super Lcom/google/ads/mediation/bidmachine/waterfall/request/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/mediation/bidmachine/waterfall/request/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;Landroid/os/Bundle;Lcom/google/ads/mediation/bidmachine/common/b;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ads/mediation/bidmachine/waterfall/request/d;->a(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Landroid/os/Bundle;Lcom/google/ads/mediation/bidmachine/common/b;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Landroid/os/Bundle;Lcom/google/ads/mediation/bidmachine/common/b;)V
    .locals 1

    .line 2
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "listener"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lio/bidmachine/nativead/NativeRequest$Builder;

    invoke-direct {p1}, Lio/bidmachine/nativead/NativeRequest$Builder;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/waterfall/request/a;->a(Llp/f;Landroid/os/Bundle;)Llp/f;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/NativeRequest$Builder;

    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeRequest$Builder;->build()Lio/bidmachine/AdRequest;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/google/ads/mediation/bidmachine/common/b;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

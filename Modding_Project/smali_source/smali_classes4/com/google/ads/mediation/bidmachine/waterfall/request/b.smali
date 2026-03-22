.class public final Lcom/google/ads/mediation/bidmachine/waterfall/request/b;
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

.method private final a(Lcom/google/android/gms/ads/AdSize;)Lio/bidmachine/banner/BannerSize;
    .locals 1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result p1

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x140

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lio/bidmachine/banner/BannerSize;->Size_728x90:Lio/bidmachine/banner/BannerSize;

    goto :goto_0

    :cond_1
    sget-object p1, Lio/bidmachine/banner/BannerSize;->Size_320x50:Lio/bidmachine/banner/BannerSize;

    goto :goto_0

    :cond_2
    sget-object p1, Lio/bidmachine/banner/BannerSize;->Size_300x250:Lio/bidmachine/banner/BannerSize;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;Landroid/os/Bundle;Lcom/google/ads/mediation/bidmachine/common/b;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ads/mediation/bidmachine/waterfall/request/b;->a(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Landroid/os/Bundle;Lcom/google/ads/mediation/bidmachine/common/b;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Landroid/os/Bundle;Lcom/google/ads/mediation/bidmachine/common/b;)V
    .locals 1

    .line 2
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object p1

    const-string v0, "getAdSize(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/ads/mediation/bidmachine/waterfall/request/b;->a(Lcom/google/android/gms/ads/AdSize;)Lio/bidmachine/banner/BannerSize;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported AdSize: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x78

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    move-result-object p1

    const-string p2, "incorrectContent(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/google/ads/mediation/bidmachine/common/b;->a(Lfr/a;)V

    return-void

    :cond_0
    new-instance p1, Lnm/b$c;

    invoke-direct {p1}, Lnm/b$c;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/waterfall/request/a;->a(Llp/f;Landroid/os/Bundle;)Llp/f;

    move-result-object p1

    check-cast p1, Lnm/b$c;

    invoke-virtual {p1, v0}, Lnm/b$c;->c(Lio/bidmachine/banner/BannerSize;)Lnm/b$c;

    move-result-object p1

    invoke-virtual {p1}, Lnm/b$c;->build()Lio/bidmachine/AdRequest;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/google/ads/mediation/bidmachine/common/b;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

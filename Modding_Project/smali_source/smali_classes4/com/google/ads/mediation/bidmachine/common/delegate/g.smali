.class public final Lcom/google/ads/mediation/bidmachine/common/delegate/g;
.super Lcom/google/ads/mediation/bidmachine/common/delegate/c;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/AdListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/bidmachine/common/auction/a;)V
    .locals 1

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "loadCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "auctionResultHandler"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/mediation/bidmachine/common/delegate/c;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/bidmachine/common/auction/a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lmp/b;Lio/bidmachine/nativead/view/NativeMediaView;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/g;->b(Lmp/b;Lio/bidmachine/nativead/view/NativeMediaView;)Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected b(Lmp/b;Lio/bidmachine/nativead/view/NativeMediaView;)Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
    .locals 1

    .line 1
    const-string v0, "nativeAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mediaView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/google/ads/mediation/bidmachine/common/g;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lcom/google/ads/mediation/bidmachine/common/g;-><init>(Lmp/b;Lio/bidmachine/nativead/view/NativeMediaView;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

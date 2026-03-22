.class public abstract Lcom/google/ads/mediation/bidmachine/waterfall/b;
.super Lcom/google/ads/mediation/bidmachine/common/a;
.source "SourceFile"


# instance fields
.field private final e:Lcom/google/ads/mediation/bidmachine/waterfall/request/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/AdsType;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/bidmachine/waterfall/request/a;)V
    .locals 1

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adsType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adLoadCallback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "adRequestFactory"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/mediation/bidmachine/common/a;-><init>(Ljava/lang/String;Lio/bidmachine/AdsType;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 22
    .line 23
    .line 24
    iput-object p4, p0, Lcom/google/ads/mediation/bidmachine/waterfall/b;->e:Lcom/google/ads/mediation/bidmachine/waterfall/request/a;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method protected a(Lio/bidmachine/AdsType;Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;Lcom/google/ads/mediation/bidmachine/common/b;)V
    .locals 1

    .line 1
    const-string v0, "adsType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "adConfiguration"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "listener"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "getServerParameters(...)"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/ads/mediation/bidmachine/common/c;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Lcom/google/ads/mediation/bidmachine/common/c;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/waterfall/b;->e:Lcom/google/ads/mediation/bidmachine/waterfall/request/a;

    .line 38
    .line 39
    invoke-virtual {v0, p2, p1, p3}, Lcom/google/ads/mediation/bidmachine/waterfall/request/a;->a(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;Landroid/os/Bundle;Lcom/google/ads/mediation/bidmachine/common/b;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

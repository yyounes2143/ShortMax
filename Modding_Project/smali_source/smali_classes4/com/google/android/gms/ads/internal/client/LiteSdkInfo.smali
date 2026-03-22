.class public Lcom/google/android/gms/ads/internal/client/LiteSdkInfo;
.super Lcom/google/android/gms/ads/internal/client/zzcx;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzcx;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAdapterCreator()Lcom/google/android/gms/internal/ads/zzbpq;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpm;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbpm;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getLiteSdkVersion()Lcom/google/android/gms/ads/internal/client/zzfd;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzfd;

    .line 2
    .line 3
    const v1, 0xf0d4d50

    .line 4
    .line 5
    .line 6
    const-string v2, "24.5.0"

    .line 7
    .line 8
    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzfd;-><init>(IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

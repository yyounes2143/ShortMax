.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzen;

.field public final synthetic zzb:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzen;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzel;->zza:Lcom/google/android/gms/ads/internal/client/zzen;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzel;->zzb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzel;->zza:Lcom/google/android/gms/ads/internal/client/zzen;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzel;->zzb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzen;->zzl(Lcom/google/android/gms/ads/internal/client/zzen;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

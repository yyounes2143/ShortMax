.class public final synthetic Lcom/google/android/gms/internal/ads/zzfgv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbs;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfgg;

.field public final synthetic zzb:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfgg;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zza:Lcom/google/android/gms/internal/ads/zzfgg;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzb:Ljava/lang/Throwable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zza:Lcom/google/android/gms/internal/ads/zzfgg;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfhb;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgg;->zza()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgu;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgg;->zzb()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzb:Ljava/lang/Throwable;

    .line 16
    .line 17
    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfhb;->zzdF(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzdys;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzhhg;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbvq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhhg;Lcom/google/android/gms/internal/ads/zzbvq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdys;->zza:Lcom/google/android/gms/internal/ads/zzhhg;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdys;->zzb:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdys;->zza:Lcom/google/android/gms/internal/ads/zzhhg;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyw;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdys;->zzb:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdyw;->zzc(Lcom/google/android/gms/internal/ads/zzbvq;)Lcom/google/common/util/concurrent/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzfgo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfgq;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfgg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfgq;Lcom/google/android/gms/internal/ads/zzfgg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgo;->zza:Lcom/google/android/gms/internal/ads/zzfgq;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgo;->zzb:Lcom/google/android/gms/internal/ads/zzfgg;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgo;->zza:Lcom/google/android/gms/internal/ads/zzfgq;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Lcom/google/android/gms/internal/ads/zzfgs;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfgs;->zzc(Lcom/google/android/gms/internal/ads/zzfgs;)Lcom/google/android/gms/internal/ads/zzfgt;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgo;->zzb:Lcom/google/android/gms/internal/ads/zzfgg;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgt;->zzc(Lcom/google/android/gms/internal/ads/zzfgg;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

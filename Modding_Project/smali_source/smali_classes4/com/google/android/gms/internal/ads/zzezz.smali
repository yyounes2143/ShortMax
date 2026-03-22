.class public final synthetic Lcom/google/android/gms/internal/ads/zzezz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfac;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfac;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezz;->zza:Lcom/google/android/gms/internal/ads/zzfac;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezz;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezz;->zza:Lcom/google/android/gms/internal/ads/zzfac;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfac;->zze:Lcom/google/android/gms/internal/ads/zzfad;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfad;->zzd(Lcom/google/android/gms/internal/ads/zzfad;)Lcom/google/android/gms/internal/ads/zzfbd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezz;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfbd;->zzdD(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/zzell;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdje;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeky;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcwb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzell;->zza:Lcom/google/android/gms/internal/ads/zzdje;

    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeky;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzeky;-><init>(Lcom/google/android/gms/internal/ads/zzdsj;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzell;->zzb:Lcom/google/android/gms/internal/ads/zzeky;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdje;->zzg()Lcom/google/android/gms/internal/ads/zzbmy;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lcom/google/android/gms/internal/ads/zzelk;

    .line 18
    .line 19
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzelk;-><init>(Lcom/google/android/gms/internal/ads/zzeky;Lcom/google/android/gms/internal/ads/zzbmy;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzell;->zzc:Lcom/google/android/gms/internal/ads/zzcwb;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcwb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzell;->zzc:Lcom/google/android/gms/internal/ads/zzcwb;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcxm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzell;->zzb:Lcom/google/android/gms/internal/ads/zzeky;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdgw;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgw;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzell;->zzb:Lcom/google/android/gms/internal/ads/zzeky;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzell;->zza:Lcom/google/android/gms/internal/ads/zzdje;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeky;->zzg()Lcom/google/android/gms/ads/internal/client/zzbk;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdgw;-><init>(Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/ads/internal/client/zzbk;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzeky;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzell;->zzb:Lcom/google/android/gms/internal/ads/zzeky;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzell;->zzb:Lcom/google/android/gms/internal/ads/zzeky;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeky;->zzj(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

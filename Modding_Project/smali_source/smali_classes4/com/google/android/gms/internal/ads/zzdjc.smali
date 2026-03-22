.class public final Lcom/google/android/gms/internal/ads/zzdjc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzbhq;

.field zzb:Lcom/google/android/gms/internal/ads/zzbhn;

.field zzc:Lcom/google/android/gms/internal/ads/zzbid;

.field zzd:Lcom/google/android/gms/internal/ads/zzbia;

.field zze:Lcom/google/android/gms/internal/ads/zzbmy;

.field final zzf:Landroidx/collection/SimpleArrayMap;

.field final zzg:Landroidx/collection/SimpleArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjc;->zzf:Landroidx/collection/SimpleArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjc;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbhn;)Lcom/google/android/gms/internal/ads/zzdjc;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjc;->zzb:Lcom/google/android/gms/internal/ads/zzbhn;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbhq;)Lcom/google/android/gms/internal/ads/zzdjc;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjc;->zza:Lcom/google/android/gms/internal/ads/zzbhq;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhw;Lcom/google/android/gms/internal/ads/zzbht;)Lcom/google/android/gms/internal/ads/zzdjc;
    .locals 1
    .param p3    # Lcom/google/android/gms/internal/ads/zzbht;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjc;->zzf:Landroidx/collection/SimpleArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjc;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 9
    .line 10
    invoke-virtual {p2, p1, p3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbmy;)Lcom/google/android/gms/internal/ads/zzdjc;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjc;->zze:Lcom/google/android/gms/internal/ads/zzbmy;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbia;)Lcom/google/android/gms/internal/ads/zzdjc;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjc;->zzd:Lcom/google/android/gms/internal/ads/zzbia;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbid;)Lcom/google/android/gms/internal/ads/zzdjc;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjc;->zzc:Lcom/google/android/gms/internal/ads/zzbid;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzdje;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdje;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdje;-><init>(Lcom/google/android/gms/internal/ads/zzdjc;Lcom/google/android/gms/internal/ads/zzdjd;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

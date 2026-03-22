.class public final Lcom/google/android/gms/internal/ads/zzbiq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/formats/zzg;

.field private final zzb:Lcom/google/android/gms/ads/formats/zzf;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/internal/ads/zzbhk;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/zzg;Lcom/google/android/gms/ads/formats/zzf;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/ads/formats/zzf;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiq;->zza:Lcom/google/android/gms/ads/formats/zzg;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiq;->zzb:Lcom/google/android/gms/ads/formats/zzf;

    .line 7
    .line 8
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzbiq;)Lcom/google/android/gms/ads/formats/zzf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbiq;->zzb:Lcom/google/android/gms/ads/formats/zzf;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzbiq;)Lcom/google/android/gms/ads/formats/zzg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbiq;->zza:Lcom/google/android/gms/ads/formats/zzg;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzbiq;Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/internal/ads/zzbhk;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbiq;->zzf(Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/internal/ads/zzbhk;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final declared-synchronized zzf(Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/internal/ads/zzbhk;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiq;->zzc:Lcom/google/android/gms/internal/ads/zzbhk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhk;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhk;-><init>(Lcom/google/android/gms/internal/ads/zzbhj;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiq;->zzc:Lcom/google/android/gms/internal/ads/zzbhk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    throw p1
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzbht;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiq;->zzb:Lcom/google/android/gms/ads/formats/zzf;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbin;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbin;-><init>(Lcom/google/android/gms/internal/ads/zzbiq;Lcom/google/android/gms/internal/ads/zzbip;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzbhw;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbio;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbio;-><init>(Lcom/google/android/gms/internal/ads/zzbiq;Lcom/google/android/gms/internal/ads/zzbip;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

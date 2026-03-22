.class public final Lcom/google/android/gms/internal/ads/zzbtd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

.field private final zzb:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zza:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzb:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    .line 7
    .line 8
    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbtd;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzb:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzbtd;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zza:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzbtd;Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbtd;->zzf(Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final declared-synchronized zzf(Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzc:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;
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
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbte;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbte;-><init>(Lcom/google/android/gms/internal/ads/zzbhj;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzc:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;
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
.method public final zza()Lcom/google/android/gms/internal/ads/zzbht;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzb:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

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
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbta;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbta;-><init>(Lcom/google/android/gms/internal/ads/zzbtd;Lcom/google/android/gms/internal/ads/zzbtc;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbhw;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtb;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbtb;-><init>(Lcom/google/android/gms/internal/ads/zzbtd;Lcom/google/android/gms/internal/ads/zzbtc;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

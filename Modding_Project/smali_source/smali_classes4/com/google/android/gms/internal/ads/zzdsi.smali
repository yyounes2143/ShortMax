.class public final Lcom/google/android/gms/internal/ads/zzdsi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdsj;

.field private final zzb:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zza:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zzb:Ljava/util/Map;

    .line 15
    .line 16
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzdsi;)Lcom/google/android/gms/internal/ads/zzdsi;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zza:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zzb:Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsj;->zzc(Lcom/google/android/gms/internal/ads/zzdsj;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzdsi;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zza:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsj;->zzb(Lcom/google/android/gms/internal/ads/zzdsj;)Lcom/google/android/gms/internal/ads/zzdso;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zzb:Ljava/util/Map;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdss;->zzf(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzdsi;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zza:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsj;->zzb(Lcom/google/android/gms/internal/ads/zzdsj;)Lcom/google/android/gms/internal/ads/zzdso;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zzb:Ljava/util/Map;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdss;->zzg(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/ads/zzdsi;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zza:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsj;->zzb(Lcom/google/android/gms/internal/ads/zzdsj;)Lcom/google/android/gms/internal/ads/zzdso;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zzb:Ljava/util/Map;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdss;->zze(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zzb:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzfca;)Lcom/google/android/gms/internal/ads/zzdsi;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzw:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "aai"

    .line 4
    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 6
    .line 7
    .line 8
    const-string v0, "request_id"

    .line 9
    .line 10
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzan:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 13
    .line 14
    .line 15
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzb:I

    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfca;->zza(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "ad_format"

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzfcd;)Lcom/google/android/gms/internal/ads/zzdsi;
    .locals 1

    .line 1
    const-string v0, "gqi"

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zza:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsj;->zzb(Lcom/google/android/gms/internal/ads/zzdsj;)Lcom/google/android/gms/internal/ads/zzdso;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zzb:Ljava/util/Map;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdss;->zzb(Ljava/util/Map;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final zzi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zza:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsj;->zzd(Lcom/google/android/gms/internal/ads/zzdsj;)Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsh;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdsh;-><init>(Lcom/google/android/gms/internal/ads/zzdsi;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zza:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsj;->zzd(Lcom/google/android/gms/internal/ads/zzdsj;)Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsf;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdsf;-><init>(Lcom/google/android/gms/internal/ads/zzdsi;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsi;->zza:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsj;->zzd(Lcom/google/android/gms/internal/ads/zzdsj;)Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsg;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdsg;-><init>(Lcom/google/android/gms/internal/ads/zzdsi;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

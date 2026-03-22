.class public final Lcom/google/android/gms/internal/ads/zzfgq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfgs;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/common/util/concurrent/e;

.field private final zze:Ljava/util/List;

.field private final zzf:Lcom/google/common/util/concurrent/e;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfgs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/e;Ljava/util/List;Lcom/google/common/util/concurrent/e;)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Lcom/google/android/gms/internal/ads/zzfgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzd:Lcom/google/common/util/concurrent/e;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zze:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzf:Lcom/google/common/util/concurrent/e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfgs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/e;Ljava/util/List;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfgr;)V
    .locals 7

    .line 1
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfgq;-><init>(Lcom/google/android/gms/internal/ads/zzfgs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/e;Ljava/util/List;Lcom/google/common/util/concurrent/e;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfgg;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgg;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzc:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Lcom/google/android/gms/internal/ads/zzfgs;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfgs;->zzf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzf:Lcom/google/common/util/concurrent/e;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfgg;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/e;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Lcom/google/android/gms/internal/ads/zzfgs;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfgs;->zzc(Lcom/google/android/gms/internal/ads/zzfgs;)Lcom/google/android/gms/internal/ads/zzfgt;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfgt;->zza(Lcom/google/android/gms/internal/ads/zzfgg;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzd:Lcom/google/common/util/concurrent/e;

    .line 30
    .line 31
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfgo;

    .line 32
    .line 33
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzfgo;-><init>(Lcom/google/android/gms/internal/ads/zzfgq;Lcom/google/android/gms/internal/ads/zzfgg;)V

    .line 34
    .line 35
    .line 36
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 37
    .line 38
    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/e;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgp;

    .line 42
    .line 43
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfgp;-><init>(Lcom/google/android/gms/internal/ads/zzfgq;Lcom/google/android/gms/internal/ads/zzfgg;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzgdn;->zzr(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgdj;Ljava/util/concurrent/Executor;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Lcom/google/android/gms/internal/ads/zzfgs;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Lcom/google/android/gms/internal/ads/zzfgg;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfgs;->zzb(Ljava/lang/Object;Lcom/google/common/util/concurrent/e;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgcu;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzfgq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Lcom/google/android/gms/internal/ads/zzfgs;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfgs;->zze(Lcom/google/android/gms/internal/ads/zzfgs;)Lcom/google/android/gms/internal/ads/zzgdy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzf:Lcom/google/common/util/concurrent/e;

    .line 10
    .line 11
    invoke-static {v2, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzf(Lcom/google/common/util/concurrent/e;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzc:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzd:Lcom/google/common/util/concurrent/e;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zze:Ljava/util/List;

    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfgq;-><init>(Lcom/google/android/gms/internal/ads/zzfgs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/e;Ljava/util/List;Lcom/google/common/util/concurrent/e;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

.method public final zzd(Lcom/google/common/util/concurrent/e;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgn;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgn;-><init>(Lcom/google/common/util/concurrent/e;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfgq;->zzg(Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzfge;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgm;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgm;-><init>(Lcom/google/android/gms/internal/ads/zzfge;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzf(Lcom/google/android/gms/internal/ads/zzgcu;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzgcu;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Lcom/google/android/gms/internal/ads/zzfgs;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfgs;->zze(Lcom/google/android/gms/internal/ads/zzfgs;)Lcom/google/android/gms/internal/ads/zzgdy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzg(Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzfgq;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzf:Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Lcom/google/android/gms/internal/ads/zzfgs;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzc:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzd:Lcom/google/common/util/concurrent/e;

    .line 12
    .line 13
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zze:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    move-object v0, v7

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfgq;-><init>(Lcom/google/android/gms/internal/ads/zzfgs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/e;Ljava/util/List;Lcom/google/common/util/concurrent/e;)V

    .line 21
    .line 22
    .line 23
    return-object v7
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 8

    .line 1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzd:Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zze:Ljava/util/List;

    .line 4
    .line 5
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzf:Lcom/google/common/util/concurrent/e;

    .line 6
    .line 7
    new-instance v7, Lcom/google/android/gms/internal/ads/zzfgq;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Lcom/google/android/gms/internal/ads/zzfgs;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v3, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfgq;-><init>(Lcom/google/android/gms/internal/ads/zzfgs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/e;Ljava/util/List;Lcom/google/common/util/concurrent/e;)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public final zzi(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzfgq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Lcom/google/android/gms/internal/ads/zzfgs;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfgs;->zzg(Lcom/google/android/gms/internal/ads/zzfgs;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzf:Lcom/google/common/util/concurrent/e;

    .line 10
    .line 11
    invoke-static {v2, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzo(Lcom/google/common/util/concurrent/e;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/e;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzc:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzd:Lcom/google/common/util/concurrent/e;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zze:Ljava/util/List;

    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfgq;-><init>(Lcom/google/android/gms/internal/ads/zzfgs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/e;Ljava/util/List;Lcom/google/common/util/concurrent/e;)V

    .line 25
    .line 26
    .line 27
    return-object v7
.end method

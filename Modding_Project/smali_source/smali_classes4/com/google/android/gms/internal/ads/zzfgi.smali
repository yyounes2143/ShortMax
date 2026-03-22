.class public final Lcom/google/android/gms/internal/ads/zzfgi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfgs;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/util/List;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfgs;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfgr;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zza:Lcom/google/android/gms/internal/ads/zzfgs;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zzb:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zzc:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 9

    .line 1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zzc:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgdn;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgdl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgh;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdl;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfgq;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zza:Lcom/google/android/gms/internal/ads/zzfgs;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfgs;->zze(Lcom/google/android/gms/internal/ads/zzfgs;)Lcom/google/android/gms/internal/ads/zzgdy;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgdl;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgi;->zzb:Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    move-object v0, v8

    .line 35
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfgq;-><init>(Lcom/google/android/gms/internal/ads/zzfgs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/e;Ljava/util/List;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfgr;)V

    .line 36
    .line 37
    .line 38
    return-object v8
.end method

.class public abstract Lcom/google/android/gms/internal/ads/zzfgs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field private static final zza:Lcom/google/common/util/concurrent/e;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfgt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgs;->zza:Lcom/google/common/util/concurrent/e;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgdy;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfgt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgs;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgs;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgs;->zzd:Lcom/google/android/gms/internal/ads/zzfgt;

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfgs;)Lcom/google/android/gms/internal/ads/zzfgt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgs;->zzd:Lcom/google/android/gms/internal/ads/zzfgt;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzd()Lcom/google/common/util/concurrent/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgs;->zza:Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzfgs;)Lcom/google/android/gms/internal/ads/zzgdy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgs;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzfgs;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgs;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final varargs zza(Ljava/lang/Object;[Lcom/google/common/util/concurrent/e;)Lcom/google/android/gms/internal/ads/zzfgi;
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgi;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfgi;-><init>(Lcom/google/android/gms/internal/ads/zzfgs;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfgr;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Lcom/google/common/util/concurrent/e;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 9

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfgq;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v7, 0x0

    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move-object v4, p2

    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfgq;-><init>(Lcom/google/android/gms/internal/ads/zzfgs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/e;Ljava/util/List;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfgr;)V

    .line 15
    .line 16
    .line 17
    return-object v8
.end method

.method protected abstract zzf(Ljava/lang/Object;)Ljava/lang/String;
.end method

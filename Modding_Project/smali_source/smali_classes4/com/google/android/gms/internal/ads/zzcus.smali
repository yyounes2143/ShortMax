.class public final Lcom/google/android/gms/internal/ads/zzcus;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcus;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcus;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    .line 13
    .line 14
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzcus;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzcus;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzcus;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/ads/zzcwq;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcrr;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrr;->zzc()Lcom/google/android/gms/internal/ads/zzfca;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v4, v0

    .line 25
    check-cast v4, Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffu;->zzc()Lcom/google/android/gms/internal/ads/zzgdy;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 32
    .line 33
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcrs;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrs;->zzc()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcus;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move-object v7, v0

    .line 46
    check-cast v7, Lcom/google/android/gms/internal/ads/zzcym;

    .line 47
    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcur;

    .line 49
    .line 50
    move-object v1, v0

    .line 51
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcur;-><init>(Lcom/google/android/gms/internal/ads/zzcwq;Lcom/google/android/gms/internal/ads/zzfca;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcym;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

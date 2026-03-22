.class public final Lcom/google/android/gms/internal/ads/zzeve;
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
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeve;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeve;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeve;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeve;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeve;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    .line 13
    .line 14
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzeve;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzeve;

    .line 2
    .line 3
    move-object v0, v8

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
    move-object v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzeve;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 12
    .line 13
    .line 14
    return-object v8
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbzj;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;IZZ)Lcom/google/android/gms/internal/ads/zzevc;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzevc;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move v5, p4

    .line 9
    move v6, p5

    .line 10
    move v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzevc;-><init>(Lcom/google/android/gms/internal/ads/zzbzj;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;IZZ)V

    .line 12
    .line 13
    .line 14
    return-object v8
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzckz;->zza()Lcom/google/android/gms/internal/ads/zzbzj;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeve;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzchl;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchl;->zza()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeve;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v3, v0

    .line 20
    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffu;->zzc()Lcom/google/android/gms/internal/ads/zzgdy;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeve;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/gms/internal/ads/zzewk;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzewk;->zzc()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeve;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 39
    .line 40
    check-cast v0, Lcom/google/android/gms/internal/ads/zzewl;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzewl;->zzc()Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeve;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    .line 51
    .line 52
    check-cast v0, Lcom/google/android/gms/internal/ads/zzewm;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzewm;->zzc()Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    new-instance v8, Lcom/google/android/gms/internal/ads/zzevc;

    .line 63
    .line 64
    move-object v0, v8

    .line 65
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzevc;-><init>(Lcom/google/android/gms/internal/ads/zzbzj;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;IZZ)V

    .line 66
    .line 67
    .line 68
    return-object v8
.end method

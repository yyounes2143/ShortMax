.class public final Lcom/google/android/gms/internal/ads/zzdxe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 7
    .line 8
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzdxe;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxe;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdxe;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfha;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzs()Lcom/google/android/gms/ads/internal/util/zzaa;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/util/zzaa;->zza(Landroid/content/Context;)Landroid/webkit/CookieManager;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfgu;->zzv:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdwy;

    .line 31
    .line 32
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzdwy;-><init>(Landroid/webkit/CookieManager;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzfgk;->zza(Ljava/util/concurrent/Callable;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfgs;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-wide/16 v1, 0x1

    .line 40
    .line 41
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfgq;->zzi(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwz;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdwz;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfgl;

    .line 53
    .line 54
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzfgl;-><init>(Lcom/google/android/gms/internal/ads/zzfge;)V

    .line 55
    .line 56
    .line 57
    const-class v1, Ljava/lang/Exception;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgcu;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Lcom/google/android/gms/internal/ads/zzfgg;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.class final Lcom/google/android/gms/internal/ads/zzbyh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/gms/common/util/Clock;

.field private zzc:Lcom/google/android/gms/ads/internal/util/zzg;

.field private zzd:Lcom/google/android/gms/internal/ads/zzbyo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbyj;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/util/zzg;)Lcom/google/android/gms/internal/ads/zzbyh;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyh;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbyh;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyh;->zza:Landroid/content/Context;

    .line 5
    .line 6
    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/common/util/Clock;)Lcom/google/android/gms/internal/ads/zzbyh;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyh;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 5
    .line 6
    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbyo;)Lcom/google/android/gms/internal/ads/zzbyh;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyh;->zzd:Lcom/google/android/gms/internal/ads/zzbyo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzbyp;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyh;->zza:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyh;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 9
    .line 10
    const-class v1, Lcom/google/android/gms/common/util/Clock;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyh;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 16
    .line 17
    const-class v1, Lcom/google/android/gms/ads/internal/util/zzg;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyh;->zzd:Lcom/google/android/gms/internal/ads/zzbyo;

    .line 23
    .line 24
    const-class v1, Lcom/google/android/gms/internal/ads/zzbyo;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyi;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyh;->zza:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyh;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbyh;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbyh;->zzd:Lcom/google/android/gms/internal/ads/zzbyo;

    .line 38
    .line 39
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbyi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzbyo;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

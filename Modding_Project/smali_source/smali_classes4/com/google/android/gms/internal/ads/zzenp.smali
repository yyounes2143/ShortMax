.class public final Lcom/google/android/gms/internal/ads/zzenp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenp;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 5
    .line 6
    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzenp;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenp;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzenp;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzenn;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffu;->zzc()Lcom/google/android/gms/internal/ads/zzgdy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenp;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbzs;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/ads/zzenn;

    .line 14
    .line 15
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzenn;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbzs;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzenp;->zza()Lcom/google/android/gms/internal/ads/zzenn;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/ads/zzepp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepp;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepp;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 7
    .line 8
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzepp;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzepp;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzepp;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzesb;->zzc()Lcom/google/android/gms/internal/ads/zzerz;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepp;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v4, v0

    .line 12
    check-cast v4, Lcom/google/android/gms/common/util/Clock;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffu;->zzc()Lcom/google/android/gms/internal/ads/zzgdy;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepp;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v6, v0

    .line 25
    check-cast v6, Lcom/google/android/gms/internal/ads/zzdsj;

    .line 26
    .line 27
    new-instance v7, Lcom/google/android/gms/internal/ads/zzeou;

    .line 28
    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbet;->zzf:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    move-object v0, v7

    .line 42
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzeou;-><init>(Lcom/google/android/gms/internal/ads/zzeuc;JLcom/google/android/gms/common/util/Clock;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdsj;)V

    .line 43
    .line 44
    .line 45
    return-object v7
.end method

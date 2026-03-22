.class public final Lcom/google/android/gms/internal/ads/zzehl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzehk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzehk;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehl;->zza:Lcom/google/android/gms/internal/ads/zzehk;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehl;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehl;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehl;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehl;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    .line 13
    .line 14
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzehk;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzehl;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzehl;

    .line 2
    .line 3
    move-object v0, v6

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
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzehl;-><init>(Lcom/google/android/gms/internal/ads/zzehk;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehl;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/common/util/Clock;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehl;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/gms/internal/ads/zzehe;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzehe;->zza()Lcom/google/android/gms/internal/ads/zzehd;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehl;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/google/android/gms/internal/ads/zzedr;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehl;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    .line 26
    .line 27
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/google/android/gms/internal/ads/zzfjy;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzehl;->zza:Lcom/google/android/gms/internal/ads/zzehk;

    .line 34
    .line 35
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehk;->zza(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzehd;Lcom/google/android/gms/internal/ads/zzedr;Lcom/google/android/gms/internal/ads/zzfjy;)Lcom/google/android/gms/internal/ads/zzehb;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

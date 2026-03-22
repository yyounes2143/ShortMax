.class public final Lcom/google/android/gms/internal/ads/zzegs;
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
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegs;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegs;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    .line 13
    .line 14
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzegs;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzegs;

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
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzegs;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegs;->zza:Lcom/google/android/gms/internal/ads/zzhha;

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
    check-cast v2, Lcom/google/android/gms/internal/ads/zzche;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcvq;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvq;->zza()Lcom/google/android/gms/internal/ads/zzcvf;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 19
    .line 20
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdcr;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcr;->zza()Lcom/google/android/gms/internal/ads/zzdbw;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v5, v0

    .line 33
    check-cast v5, Lcom/google/android/gms/internal/ads/zzehb;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegs;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v6, v0

    .line 42
    check-cast v6, Lcom/google/android/gms/internal/ads/zzedr;

    .line 43
    .line 44
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegr;

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzegr;-><init>(Lcom/google/android/gms/internal/ads/zzche;Lcom/google/android/gms/internal/ads/zzcvf;Lcom/google/android/gms/internal/ads/zzdbw;Lcom/google/android/gms/internal/ads/zzehb;Lcom/google/android/gms/internal/ads/zzedr;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

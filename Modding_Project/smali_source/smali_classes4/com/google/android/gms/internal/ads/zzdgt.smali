.class public final Lcom/google/android/gms/internal/ads/zzdgt;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgt;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgt;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgt;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdgt;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdgt;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    .line 13
    .line 14
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzdgt;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzdgt;

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
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdgt;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgt;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdft;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdft;->zza()Lcom/google/android/gms/internal/ads/zzbyk;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgt;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/gms/internal/ads/zzchl;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchl;->zza()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgt;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v4, v0

    .line 24
    check-cast v4, Lcom/google/android/gms/internal/ads/zzbyo;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgt;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdfk;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfk;->zza()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgt;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v6, v0

    .line 41
    check-cast v6, Lcom/google/android/gms/internal/ads/zzbcj$zza$zza;

    .line 42
    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgs;

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdgs;-><init>(Lcom/google/android/gms/internal/ads/zzbyk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbyo;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbcj$zza$zza;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

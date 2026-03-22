.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;
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
    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 7
    .line 8
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzchl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchl;->zza()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcko;->zza()Lcom/google/android/gms/internal/ads/zzbcn;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzepn;->zzc()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/util/List;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 20
    .line 21
    check-cast v3, Lcom/google/android/gms/internal/ads/zzchz;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzchz;->zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-instance v4, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;

    .line 28
    .line 29
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbcn;Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    .line 30
    .line 31
    .line 32
    return-object v4
.end method

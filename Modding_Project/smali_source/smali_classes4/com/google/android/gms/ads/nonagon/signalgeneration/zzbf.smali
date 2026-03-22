.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbf;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbf;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbf;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 9
    .line 10
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbf;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbf;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbf;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbf;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbf;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbm;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffu;->zzc()Lcom/google/android/gms/internal/ads/zzgdy;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbf;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 22
    .line 23
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x2

    .line 34
    if-ne v3, v4, :cond_0

    .line 35
    .line 36
    move-object v0, v1

    .line 37
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzddv;

    .line 38
    .line 39
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzddv;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 40
    .line 41
    .line 42
    return-object v1
.end method

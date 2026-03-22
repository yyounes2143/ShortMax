.class public final Lcom/google/android/gms/internal/ads/zzenj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbzw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzbzw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenj;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenj;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzenj;->zzc:Lcom/google/android/gms/internal/ads/zzbzw;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzenj;)Lcom/google/android/gms/internal/ads/zzenk;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenk;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenj;->zzc:Lcom/google/android/gms/internal/ads/zzbzw;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzenj;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcw;->zzj:Lcom/google/android/gms/ads/internal/client/zzx;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbzw;->zzm()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzenk;-><init>(Lcom/google/android/gms/ads/internal/client/zzx;Z)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeni;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeni;-><init>(Lcom/google/android/gms/internal/ads/zzenj;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenj;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

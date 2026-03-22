.class public final Lcom/google/android/gms/internal/ads/zzepa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdqe;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfcw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzdqe;Lcom/google/android/gms/internal/ads/zzfcw;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepa;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepa;->zzb:Lcom/google/android/gms/internal/ads/zzdqe;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepa;->zzd:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepa;->zzc:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzepa;)Lcom/google/android/gms/internal/ads/zzepb;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa;->zzd:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepa;->zzb:Lcom/google/android/gms/internal/ads/zzdqe;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcw;->zzf:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzepa;->zzc:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzdqe;->zzb(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zza()Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzepb;

    .line 18
    .line 19
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzepb;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeoz;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeoz;-><init>(Lcom/google/android/gms/internal/ads/zzepa;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepa;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

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

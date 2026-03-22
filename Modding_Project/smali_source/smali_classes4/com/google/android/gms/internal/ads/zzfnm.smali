.class public final Lcom/google/android/gms/internal/ads/zzfnm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Lorg/json/JSONObject;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfnv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfnv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnm;->zzb:Lcom/google/android/gms/internal/ads/zzfnv;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnm;->zza:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnw;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfnw;-><init>(Lcom/google/android/gms/internal/ads/zzfnm;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnm;->zzb:Lcom/google/android/gms/internal/ads/zzfnv;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfnv;->zzb(Lcom/google/android/gms/internal/ads/zzfnu;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzc(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzfnx;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p1

    .line 7
    move-wide v4, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfnx;-><init>(Lcom/google/android/gms/internal/ads/zzfnm;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnm;->zzb:Lcom/google/android/gms/internal/ads/zzfnv;

    .line 12
    .line 13
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzfnv;->zzb(Lcom/google/android/gms/internal/ads/zzfnu;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zzd(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzfny;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p1

    .line 7
    move-wide v4, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfny;-><init>(Lcom/google/android/gms/internal/ads/zzfnm;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnm;->zzb:Lcom/google/android/gms/internal/ads/zzfnv;

    .line 12
    .line 13
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzfnv;->zzb(Lcom/google/android/gms/internal/ads/zzfnu;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zze(Lorg/json/JSONObject;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnm;->zza:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/zzhgx;
.super Lcom/google/android/gms/internal/ads/zzhgm;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzhgw;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhgm;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhgx;
    .locals 0

    .line 1
    const-string p1, "Network"

    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhgm;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhgm;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhgy;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhgm;->zza:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhgy;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhgw;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/ads/zzehw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedo;


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdpz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzehw;->zza:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzb:Lcom/google/android/gms/internal/ads/zzdpz;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzedp;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfdd;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehw;->zza:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/zzedp;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzb:Lcom/google/android/gms/internal/ads/zzdpz;

    .line 13
    .line 14
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdpz;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfdu;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzedp;

    .line 19
    .line 20
    new-instance v2, Lcom/google/android/gms/internal/ads/zzefe;

    .line 21
    .line 22
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzefe;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p2, v2, p1}, Lcom/google/android/gms/internal/ads/zzedp;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcxi;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit p0

    .line 35
    return-object v1

    .line 36
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

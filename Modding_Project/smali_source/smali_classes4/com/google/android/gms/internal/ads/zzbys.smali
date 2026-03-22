.class final Lcom/google/android/gms/internal/ads/zzbys;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbyt;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbyt;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbys;->zza:Lcom/google/android/gms/internal/ads/zzbyt;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbys;->zzb:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbys;->zza:Lcom/google/android/gms/internal/ads/zzbyt;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->zza(Lcom/google/android/gms/internal/ads/zzbyt;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/google/android/gms/internal/ads/zzbyr;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbys;->zzb:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzbyr;->zza:Lcom/google/android/gms/internal/ads/zzbyt;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbyr;->zzb:Ljava/util/Map;

    .line 29
    .line 30
    invoke-static {v4, v2, p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzbyt;->zzb(Lcom/google/android/gms/internal/ads/zzbyt;Ljava/util/Map;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method

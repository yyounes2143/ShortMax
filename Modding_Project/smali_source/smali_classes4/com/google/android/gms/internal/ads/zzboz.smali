.class final Lcom/google/android/gms/internal/ads/zzboz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbku;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbpa;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzboc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbpa;Lcom/google/android/gms/internal/ads/zzboc;Lcom/google/android/gms/internal/ads/zzcak;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboz;->zza:Lcom/google/android/gms/internal/ads/zzbpa;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboz;->zzb:Lcom/google/android/gms/internal/ads/zzboc;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzboz;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzboz;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbol;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbol;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboz;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbol;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbol;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboz;->zzb:Lcom/google/android/gms/internal/ads/zzboc;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboc;->zzb()V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :catch_0
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzboz;->zzb:Lcom/google/android/gms/internal/ads/zzboc;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboc;->zzb()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final zzb(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboz;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboz;->zza:Lcom/google/android/gms/internal/ads/zzbpa;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbpa;->zzc(Lcom/google/android/gms/internal/ads/zzbpa;)Lcom/google/android/gms/internal/ads/zzboo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzboo;->zza(Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcak;->zzc(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboz;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboz;->zzb:Lcom/google/android/gms/internal/ads/zzboc;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboc;->zzb()V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :catch_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzboz;->zzb:Lcom/google/android/gms/internal/ads/zzboc;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboc;->zzb()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

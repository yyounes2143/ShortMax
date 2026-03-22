.class public final Lcom/google/android/gms/internal/ads/zzaxm;
.super Lcom/google/android/gms/internal/ads/zzayk;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;II)V
    .locals 7

    .line 1
    const-string v3, "gABvx04l+Prrr7UIzRlxJTdbXEyGkYLmeTdDcw+INuA="

    .line 2
    .line 3
    const/4 v6, 0x5

    .line 4
    const-string v2, "ptULCqFpkxWHwh0HVZoMpk0Xr91rKWbEROvrSrbrHF8bfcD+J1G9qxssmqT2HcO0"

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v4, p4

    .line 9
    move v5, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzayk;-><init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzd:Lcom/google/android/gms/internal/ads/zzast;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzast;->zzm(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzast;->zzl(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayk;->zze:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayk;->zza:Lcom/google/android/gms/internal/ads/zzawx;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawx;->zzb()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, [I

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    const/4 v2, 0x0

    .line 32
    :try_start_0
    aget v2, v1, v2

    .line 33
    .line 34
    int-to-long v2, v2

    .line 35
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzast;->zzm(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    aget v2, v1, v2

    .line 40
    .line 41
    int-to-long v2, v2

    .line 42
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzast;->zzl(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    aget v1, v1, v2

    .line 47
    .line 48
    const/high16 v2, -0x80000000

    .line 49
    .line 50
    if-eq v1, v2, :cond_0

    .line 51
    .line 52
    int-to-long v1, v1

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzast;->zzk(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw v1
.end method

.class public final Lcom/google/android/gms/internal/ads/zzaxy;
.super Lcom/google/android/gms/internal/ads/zzayk;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;II)V
    .locals 7

    .line 1
    const-string v3, "GzjxqsxzxT+aATwD+mE+LGwR24OtaI/aqws6qGNlH18="

    .line 2
    .line 3
    const/4 v6, 0x3

    .line 4
    const-string v2, "+T/U1hw7+KZ4U7a2mmAOu7BJ15632T6q77fmzX/Xgjcy3uK841Ng+VsVpINIYuXP"

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzdf:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayk;->zze:Ljava/lang/reflect/Method;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayk;->zza:Lcom/google/android/gms/internal/ads/zzawx;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawx;->zzb()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Lcom/google/android/gms/internal/ads/zzawd;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzawd;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzd:Lcom/google/android/gms/internal/ads/zzast;

    .line 41
    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzawd;->zza:J

    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzast;->zzj(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 46
    .line 47
    .line 48
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzawd;->zzb:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzast;->zzA(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception v1

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw v1
.end method

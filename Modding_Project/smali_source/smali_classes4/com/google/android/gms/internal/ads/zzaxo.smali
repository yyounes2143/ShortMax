.class public final Lcom/google/android/gms/internal/ads/zzaxo;
.super Lcom/google/android/gms/internal/ads/zzayk;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zzh:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;JII)V
    .locals 7

    .line 1
    const-string v3, "nJy2u10FH1OsIt1ONuXNmQ7d3Q3+he826LogUVDBAds="

    .line 2
    .line 3
    const/16 v6, 0x19

    .line 4
    .line 5
    const-string v2, "bz3lIaHWpCquphICM8d57wBZcB7vA3QBLpLSSF22FzCVTv7HI8nqsTojeybBUatg"

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p4

    .line 10
    move v5, p7

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzayk;-><init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;II)V

    .line 12
    .line 13
    .line 14
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzaxo;->zzh:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayk;->zze:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzd:Lcom/google/android/gms/internal/ads/zzast;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzast;->zzr(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 21
    .line 22
    .line 23
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaxo;->zzh:J

    .line 24
    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    cmp-long v5, v3, v5

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    sub-long/2addr v0, v3

    .line 32
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzast;->zzR(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzast;->zzS(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v2

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw v0
.end method

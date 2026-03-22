.class public final Lcom/google/android/gms/internal/ads/zzaxv;
.super Lcom/google/android/gms/internal/ads/zzayk;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zzh:Lcom/google/android/gms/internal/ads/zzawa;

.field private final zzi:J

.field private final zzj:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;IILcom/google/android/gms/internal/ads/zzawa;JJ)V
    .locals 8

    .line 1
    move-object v7, p0

    .line 2
    const-string v3, "bHzouddPHTqhUNsOeni/FRK++KVVMe5yU+yUqilZ/gg="

    .line 3
    .line 4
    const/16 v6, 0xb

    .line 5
    .line 6
    const-string v2, "Q2alXHIIp2vvtZN4ZNw4W3dXvS5FZxkSx8F3noC2XP6gq0/XB0ulYQV32h8ZSW0i"

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v4, p4

    .line 11
    move v5, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzayk;-><init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;II)V

    .line 13
    .line 14
    .line 15
    move-object v0, p7

    .line 16
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzaxv;->zzh:Lcom/google/android/gms/internal/ads/zzawa;

    .line 17
    .line 18
    move-wide/from16 v0, p8

    .line 19
    .line 20
    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaxv;->zzi:J

    .line 21
    .line 22
    move-wide/from16 v0, p10

    .line 23
    .line 24
    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaxv;->zzj:J

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxv;->zzh:Lcom/google/android/gms/internal/ads/zzawa;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayk;->zze:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawa;->zzb()Landroid/net/NetworkCapabilities;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaxv;->zzi:J

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaxv;->zzj:J

    .line 18
    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    new-instance v1, Lcom/google/android/gms/internal/ads/zzavy;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzavy;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzd:Lcom/google/android/gms/internal/ads/zzast;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzavy;->zza:Ljava/lang/Long;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzast;->zzx(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 49
    .line 50
    .line 51
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzavy;->zzb:Ljava/lang/Long;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    const-wide/16 v4, 0x0

    .line 58
    .line 59
    cmp-long v2, v2, v4

    .line 60
    .line 61
    if-ltz v2, :cond_0

    .line 62
    .line 63
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzavy;->zzb:Ljava/lang/Long;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzast;->zzO(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzavy;->zzc:Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    cmp-long v2, v2, v4

    .line 82
    .line 83
    if-ltz v2, :cond_1

    .line 84
    .line 85
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzavy;->zzc:Ljava/lang/Long;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v1

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzast;->zzf(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 92
    .line 93
    .line 94
    :cond_1
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw v1

    .line 98
    :cond_2
    return-void
.end method

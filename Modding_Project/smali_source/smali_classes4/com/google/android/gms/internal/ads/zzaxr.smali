.class public final Lcom/google/android/gms/internal/ads/zzaxr;
.super Lcom/google/android/gms/internal/ads/zzayk;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zzh:Ljava/util/Map;

.field private final zzi:Landroid/view/View;

.field private final zzj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;IILjava/util/Map;Landroid/view/View;Landroid/content/Context;)V
    .locals 8

    .line 1
    move-object v7, p0

    .line 2
    const-string v3, "dam+Wb9GR7yMSr36KIsK6PGM3yrtzGfNR9lAtk4lliE="

    .line 3
    .line 4
    const/16 v6, 0x55

    .line 5
    .line 6
    const-string v2, "q8irn8XqClynUBOsRuq73Jawzwc3gJeVDnk3iDYtMcevrbEAuNWFzcNhN+feXrfp"

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
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzaxr;->zzh:Ljava/util/Map;

    .line 17
    .line 18
    move-object/from16 v0, p8

    .line 19
    .line 20
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzaxr;->zzi:Landroid/view/View;

    .line 21
    .line 22
    move-object/from16 v0, p9

    .line 23
    .line 24
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzaxr;->zzj:Landroid/content/Context;

    .line 25
    .line 26
    return-void
.end method

.method private final zzb(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzh:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    return-wide v0

    .line 24
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 25
    .line 26
    return-wide v0
.end method


# virtual methods
.method protected final zza()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaxr;->zzb(I)J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzaxr;->zzb(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    new-array v6, v3, [J

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    aput-wide v1, v6, v7

    .line 15
    .line 16
    aput-wide v4, v6, v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzj:Landroid/content/Context;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayk;->zza:Lcom/google/android/gms/internal/ads/zzawx;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawx;->zzb()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayk;->zze:Ljava/lang/reflect/Method;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzi:Landroid/view/View;

    .line 31
    .line 32
    filled-new-array {v6, v1, v4}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, [J

    .line 42
    .line 43
    aget-wide v4, v1, v7

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzh:Ljava/util/Map;

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    aget-wide v7, v1, v0

    .line 52
    .line 53
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    aget-wide v6, v1, v3

    .line 61
    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v3, 0x3

    .line 67
    aget-wide v8, v1, v3

    .line 68
    .line 69
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzd:Lcom/google/android/gms/internal/ads/zzast;

    .line 77
    .line 78
    monitor-enter v0

    .line 79
    :try_start_0
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzast;->zzt(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzast;->zzs(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 83
    .line 84
    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception v1

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw v1
.end method

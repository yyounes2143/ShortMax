.class public final Lcom/google/android/gms/internal/ads/zzfle;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/ads/internal/ClientApi;

.field private zze:Lcom/google/android/gms/internal/ads/zzbpq;

.field private final zzf:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    new-instance p1, Lcom/google/android/gms/ads/internal/ClientApi;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/ClientApi;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzf:Lcom/google/android/gms/common/util/Clock;

    .line 18
    .line 19
    return-void
.end method

.method private static zzd()Lcom/google/android/gms/internal/ads/zzfkg;
    .locals 10

    .line 1
    new-instance v9, Lcom/google/android/gms/internal/ads/zzfkg;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzB:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzC:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Long;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    const-wide v7, 0x3fc999999999999aL    # 0.2

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 41
    .line 42
    move-object v0, v9

    .line 43
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzfkg;-><init>(JDJD)V

    .line 44
    .line 45
    .line 46
    return-object v9
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzce;)Lcom/google/android/gms/internal/ads/zzfld;
    .locals 11
    .param p2    # Lcom/google/android/gms/ads/internal/client/zzce;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/zzfv;->zzb:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_3

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    :goto_0
    const/4 v0, 0x0

    .line 24
    return-object v0

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfle;->zza:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 30
    .line 31
    new-instance v10, Lcom/google/android/gms/internal/ads/zzfkf;

    .line 32
    .line 33
    iget v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 34
    .line 35
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfle;->zze:Lcom/google/android/gms/internal/ads/zzbpq;

    .line 36
    .line 37
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    .line 39
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzf:Lcom/google/android/gms/common/util/Clock;

    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfle;->zzd()Lcom/google/android/gms/internal/ads/zzfkg;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    move-object v0, v10

    .line 46
    move-object v5, p1

    .line 47
    move-object v6, p2

    .line 48
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzfkf;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/common/util/Clock;)V

    .line 49
    .line 50
    .line 51
    return-object v10

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfle;->zza:Landroid/content/Context;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 57
    .line 58
    new-instance v10, Lcom/google/android/gms/internal/ads/zzflh;

    .line 59
    .line 60
    iget v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 61
    .line 62
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfle;->zze:Lcom/google/android/gms/internal/ads/zzbpq;

    .line 63
    .line 64
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    .line 66
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzf:Lcom/google/android/gms/common/util/Clock;

    .line 67
    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfle;->zzd()Lcom/google/android/gms/internal/ads/zzfkg;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    move-object v0, v10

    .line 73
    move-object v5, p1

    .line 74
    move-object v6, p2

    .line 75
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzflh;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/common/util/Clock;)V

    .line 76
    .line 77
    .line 78
    return-object v10

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfle;->zza:Landroid/content/Context;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 84
    .line 85
    new-instance v10, Lcom/google/android/gms/internal/ads/zzfki;

    .line 86
    .line 87
    iget v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 88
    .line 89
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfle;->zze:Lcom/google/android/gms/internal/ads/zzbpq;

    .line 90
    .line 91
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 92
    .line 93
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfle;->zzf:Lcom/google/android/gms/common/util/Clock;

    .line 94
    .line 95
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfle;->zzd()Lcom/google/android/gms/internal/ads/zzfkg;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    move-object v0, v10

    .line 100
    move-object v5, p1

    .line 101
    move-object v6, p2

    .line 102
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzfki;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/common/util/Clock;)V

    .line 103
    .line 104
    .line 105
    return-object v10
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzch;)Lcom/google/android/gms/internal/ads/zzfld;
    .locals 13
    .param p3    # Lcom/google/android/gms/ads/internal/client/zzch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p2

    .line 3
    iget v1, v7, Lcom/google/android/gms/ads/internal/client/zzfv;->zzb:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    if-eq v1, v2, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    :goto_0
    const/4 v1, 0x0

    .line 26
    return-object v1

    .line 27
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfle;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 28
    .line 29
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfle;->zza:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfle;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 32
    .line 33
    new-instance v12, Lcom/google/android/gms/internal/ads/zzfkf;

    .line 34
    .line 35
    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 36
    .line 37
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfle;->zze:Lcom/google/android/gms/internal/ads/zzbpq;

    .line 38
    .line 39
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfle;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    .line 41
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzfle;->zzf:Lcom/google/android/gms/common/util/Clock;

    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfle;->zzd()Lcom/google/android/gms/internal/ads/zzfkg;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    move-object v1, v12

    .line 48
    move-object v2, p1

    .line 49
    move-object v7, p2

    .line 50
    move-object/from16 v8, p3

    .line 51
    .line 52
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzfkf;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/common/util/Clock;)V

    .line 53
    .line 54
    .line 55
    return-object v12

    .line 56
    :cond_2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfle;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 57
    .line 58
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfle;->zza:Landroid/content/Context;

    .line 59
    .line 60
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfle;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 61
    .line 62
    new-instance v12, Lcom/google/android/gms/internal/ads/zzflh;

    .line 63
    .line 64
    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 65
    .line 66
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfle;->zze:Lcom/google/android/gms/internal/ads/zzbpq;

    .line 67
    .line 68
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfle;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 69
    .line 70
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzfle;->zzf:Lcom/google/android/gms/common/util/Clock;

    .line 71
    .line 72
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfle;->zzd()Lcom/google/android/gms/internal/ads/zzfkg;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    move-object v1, v12

    .line 77
    move-object v2, p1

    .line 78
    move-object v7, p2

    .line 79
    move-object/from16 v8, p3

    .line 80
    .line 81
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzflh;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/common/util/Clock;)V

    .line 82
    .line 83
    .line 84
    return-object v12

    .line 85
    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfle;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 86
    .line 87
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfle;->zza:Landroid/content/Context;

    .line 88
    .line 89
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfle;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 90
    .line 91
    new-instance v12, Lcom/google/android/gms/internal/ads/zzfki;

    .line 92
    .line 93
    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 94
    .line 95
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfle;->zze:Lcom/google/android/gms/internal/ads/zzbpq;

    .line 96
    .line 97
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfle;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 98
    .line 99
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzfle;->zzf:Lcom/google/android/gms/common/util/Clock;

    .line 100
    .line 101
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfle;->zzd()Lcom/google/android/gms/internal/ads/zzfkg;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    move-object v1, v12

    .line 106
    move-object v2, p1

    .line 107
    move-object v7, p2

    .line 108
    move-object/from16 v8, p3

    .line 109
    .line 110
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzfki;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/common/util/Clock;)V

    .line 111
    .line 112
    .line 113
    return-object v12
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbpq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->zze:Lcom/google/android/gms/internal/ads/zzbpq;

    .line 2
    .line 3
    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/zzcdq;
.super Lcom/google/android/gms/internal/ads/zzcdn;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final synthetic zzd:I

.field private static final zze:Ljava/util/Set;

.field private static final zzf:Ljava/text/DecimalFormat;


# instance fields
.field private zzg:Ljava/io/File;

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdq;->zze:Ljava/util/Set;

    .line 11
    .line 12
    new-instance v0, Ljava/text/DecimalFormat;

    .line 13
    .line 14
    const-string v1, "#,###"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdq;->zzf:Ljava/text/DecimalFormat;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzccb;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcdn;-><init>(Lcom/google/android/gms/internal/ads/zzccb;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zza:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 13
    .line 14
    const-string p1, "Context.getCacheDir() returned null"

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqs;->zza()Lcom/google/android/gms/internal/ads/zzfqu;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "admobVideoStreams"

    .line 27
    .line 28
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzfqt;->zza(Lcom/google/android/gms/internal/ads/zzfqu;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v0, 0x0

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 64
    .line 65
    const-string v1, "Could not create preload cache directory at "

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    .line 88
    .line 89
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    return-void

    .line 97
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 108
    .line 109
    const-string v1, "Could not set cache file permissions at "

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    .line 119
    .line 120
    return-void
.end method

.method private final zza(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqs;->zza()Lcom/google/android/gms/internal/ads/zzfqu;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v3, ".done"

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfqt;->zza(Lcom/google/android/gms/internal/ads/zzfqu;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method


# virtual methods
.method public final zzf()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdq;->zzh:Z

    .line 3
    .line 4
    return-void
.end method

.method public final zzt(Ljava/lang/String;)Z
    .locals 30

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v0, 0x1

    .line 1
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_1c

    :cond_0
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    if-nez v1, :cond_1

    move v4, v10

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    move v3, v10

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, v1, v3

    .line 3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".done"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/2addr v4, v0

    :cond_2
    add-int/2addr v3, v0

    goto :goto_0

    .line 4
    :cond_3
    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzs:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v4, v1, :cond_9

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    if-nez v1, :cond_4

    goto :goto_4

    .line 7
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const-wide v3, 0x7fffffffffffffffL

    move v5, v10

    move-object v6, v11

    :goto_2
    if-ge v5, v2, :cond_6

    aget-object v7, v1, v5

    .line 8
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".done"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 9
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v14, v12, v3

    if-gez v14, :cond_5

    move-object v6, v7

    move-wide v3, v12

    :cond_5
    add-int/2addr v5, v0

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_7

    .line 10
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v1

    .line 11
    invoke-direct {v8, v6}, Lcom/google/android/gms/internal/ads/zzcdq;->zza(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_3

    :cond_7
    move v1, v10

    :cond_8
    :goto_3
    if-nez v1, :cond_0

    .line 14
    :goto_4
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Unable to expire stream cache"

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    const-string v0, "expireFailed"

    .line 16
    invoke-virtual {v8, v9, v11, v0, v11}, Lcom/google/android/gms/internal/ads/zzcdn;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 17
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v12, Ljava/io/File;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqs;->zza()Lcom/google/android/gms/internal/ads/zzfqu;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    .line 19
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzfqt;->zza(Lcom/google/android/gms/internal/ads/zzfqu;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-direct {v8, v12}, Lcom/google/android/gms/internal/ads/zzcdq;->zza(Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    .line 22
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5

    .line 23
    :cond_a
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 24
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v3, "Stream cache hit at "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzh(Ljava/lang/String;Ljava/lang/String;I)V

    return v0

    .line 27
    :cond_b
    :goto_5
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzcdq;->zzg:Ljava/io/File;

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzcdq;->zze:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 29
    monitor-enter v3

    .line 30
    :try_start_0
    invoke-interface {v3, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream cache already in progress at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inProgress"

    invoke-virtual {v8, v9, v0, v1, v11}, Lcom/google/android/gms/internal/ads/zzcdn;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    monitor-exit v3

    return v10

    :catchall_0
    move-exception v0

    goto/16 :goto_1b

    .line 35
    :cond_c
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v15, "error"

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrf;->zza()Lcom/google/android/gms/internal/ads/zzfrr;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcdp;

    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzcdp;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x109

    const/4 v5, -0x1

    .line 37
    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzfrr;->zzn(Lcom/google/android/gms/internal/ads/zzfrq;II)Ljava/net/HttpURLConnection;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 38
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0x190

    if-ge v2, v4, :cond_d

    goto :goto_a

    :cond_d
    const-string v15, "badUrl"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 39
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP request failed. Code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP status code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_6
    move-object v2, v1

    :goto_7
    move-object v1, v14

    goto/16 :goto_18

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    :goto_8
    move-object v2, v11

    goto :goto_7

    :catch_4
    move-exception v0

    :goto_9
    move-object v1, v14

    move-object/from16 v24, v15

    goto/16 :goto_17

    :catch_5
    move-exception v0

    goto :goto_9

    .line 41
    :cond_e
    :goto_a
    :try_start_4
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    if-gez v7, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream cache aborted, missing content-length header at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contentLengthMissing"

    invoke-virtual {v8, v9, v0, v1, v11}, Lcom/google/android/gms/internal/ads/zzcdn;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-interface {v3, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return v10

    :cond_f
    sget-object v6, Lcom/google/android/gms/internal/ads/zzcdq;->zzf:Ljava/text/DecimalFormat;

    int-to-long v4, v7

    .line 46
    invoke-virtual {v6, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzt:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 47
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v4

    .line 48
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v7, v5, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exceeds limit at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 50
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File too big for full file cache. Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sizeExceeded"

    invoke-virtual {v8, v9, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-interface {v3, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return v10

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bytes from "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 55
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 57
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    new-instance v3, Ljava/io/FileOutputStream;

    .line 58
    invoke-direct {v3, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 59
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const/high16 v1, 0x100000

    .line 60
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 61
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    move-result-object v16

    .line 62
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v17

    sget-object v11, Lcom/google/android/gms/internal/ads/zzbde;->zzQ:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 63
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbx;

    invoke-direct {v0, v10, v11}, Lcom/google/android/gms/ads/internal/util/zzbx;-><init>(J)V

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbde;->zzP:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 65
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v10

    .line 66
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_13

    move-object/from16 v19, v3

    const/4 v3, 0x0

    .line 67
    :goto_b
    :try_start_6
    invoke-interface {v4, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v20
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_11

    if-ltz v20, :cond_16

    add-int v3, v3, v20

    if-gt v3, v5, :cond_15

    .line 68
    :try_start_7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 69
    :goto_c
    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v20

    if-gtz v20, :cond_14

    .line 70
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 71
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v17

    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v10

    cmp-long v20, v20, v22

    if-gtz v20, :cond_13

    move-object/from16 v20, v1

    .line 72
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzcdq;->zzh:Z

    if-nez v1, :cond_12

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzb()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 74
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    sget-object v1, Lcom/google/android/gms/ads/internal/util/client/zzf;->zza:Landroid/os/Handler;

    move-object/from16 v22, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdh;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_8

    const/16 v23, 0x0

    move-object/from16 v24, v15

    move-object v15, v1

    move-object v1, v0

    move-object/from16 v25, v2

    move-object/from16 v2, p0

    move/from16 v26, v3

    move-object/from16 v3, p1

    move-object/from16 v27, v4

    move-object/from16 v4, v21

    move/from16 v21, v5

    move/from16 v5, v26

    move-object/from16 v28, v14

    move-object v14, v6

    move v6, v7

    move/from16 v29, v7

    move/from16 v7, v23

    .line 75
    :try_start_8
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcdh;-><init>(Lcom/google/android/gms/internal/ads/zzcdn;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    :catch_6
    move-exception v0

    :goto_d
    move-object/from16 v1, v28

    goto/16 :goto_16

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    :goto_e
    move-object/from16 v28, v14

    move-object/from16 v24, v15

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_e

    :cond_11
    move-object/from16 v22, v0

    move-object/from16 v25, v2

    move/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v21, v5

    move/from16 v29, v7

    move-object/from16 v28, v14

    move-object/from16 v24, v15

    move-object v14, v6

    :goto_f
    move-object v6, v14

    move-object/from16 v1, v20

    move/from16 v5, v21

    move-object/from16 v0, v22

    move-object/from16 v15, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v14, v28

    move/from16 v7, v29

    goto/16 :goto_b

    :cond_12
    move-object/from16 v28, v14

    move-object/from16 v24, v15

    .line 76
    const-string v15, "externalAbort"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6

    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "abort requested"

    .line 77
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_a

    :catch_a
    move-exception v0

    goto :goto_10

    :catch_b
    move-exception v0

    :goto_10
    move-object/from16 v11, v19

    move-object/from16 v1, v28

    :goto_11
    const/4 v2, 0x0

    goto/16 :goto_18

    :cond_13
    move-object/from16 v28, v14

    move-object/from16 v24, v15

    .line 78
    :try_start_a
    const-string v15, "downloadTimeout"
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    .line 79
    :try_start_b
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout exceeded. Limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_a

    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream cache time limit exceeded"

    .line 80
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    move-exception v0

    goto :goto_12

    :catch_d
    move-exception v0

    :goto_12
    move-object v2, v11

    move-object/from16 v11, v19

    move-object/from16 v1, v28

    goto/16 :goto_18

    :cond_14
    move-object/from16 v28, v14

    goto/16 :goto_c

    :cond_15
    move/from16 v26, v3

    move-object/from16 v28, v14

    move-object/from16 v24, v15

    .line 81
    :try_start_d
    const-string v15, "sizeExceeded"
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6

    .line 82
    :try_start_e
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File too big for full file cache. Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_a

    :try_start_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream cache file size limit exceeded"

    .line 83
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_c

    :cond_16
    move-object/from16 v28, v14

    move-object/from16 v24, v15

    move-object v14, v6

    .line 84
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x3

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzm(I)Z

    move-result v0

    if-eqz v0, :cond_17

    int-to-long v0, v3

    .line 86
    invoke-virtual {v14, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preloaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " bytes from "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    :cond_17
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v12, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 90
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setLastModified(J)Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_13

    .line 92
    :cond_18
    :try_start_11
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_6

    .line 93
    :catch_e
    :goto_13
    :try_start_12
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v3}, Lcom/google/android/gms/internal/ads/zzcdn;->zzh(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcdq;->zze:Ljava/util/Set;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_6

    move-object/from16 v1, v28

    .line 94
    :try_start_13
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_f

    const/4 v0, 0x1

    return v0

    :catch_f
    move-exception v0

    goto :goto_16

    :catch_10
    move-exception v0

    goto :goto_16

    :catch_11
    move-exception v0

    :goto_14
    move-object v1, v14

    move-object/from16 v24, v15

    goto :goto_16

    :catch_12
    move-exception v0

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_15
    move-object/from16 v19, v3

    goto :goto_14

    :catch_14
    move-exception v0

    goto :goto_15

    :goto_16
    move-object/from16 v11, v19

    move-object/from16 v15, v24

    goto/16 :goto_11

    :goto_17
    move-object/from16 v15, v24

    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 95
    :goto_18
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_19

    const-string v3, "VideoStreamFullFileCache.preload"

    .line 96
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 97
    :cond_19
    :try_start_14
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_15

    :catch_15
    iget-boolean v3, v8, Lcom/google/android/gms/internal/ads/zzcdq;->zzh:Z

    if-eqz v3, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preload aborted for URL \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 99
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    goto :goto_19

    .line 100
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preload failed for URL \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 102
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :goto_19
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 104
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Could not delete partial cache file at "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 106
    :cond_1b
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v15, v2}, Lcom/google/android/gms/internal/ads/zzcdn;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcdq;->zze:Ljava/util/Set;

    .line 107
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_1a
    const/4 v1, 0x0

    return v1

    .line 108
    :goto_1b
    :try_start_15
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    throw v0

    .line 109
    :cond_1c
    const-string v0, "noCacheDir"

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v8, v9, v1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

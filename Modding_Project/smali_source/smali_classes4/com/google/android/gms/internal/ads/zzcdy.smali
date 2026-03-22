.class final Lcom/google/android/gms/internal/ads/zzcdy;
.super Lcom/google/android/gms/internal/ads/zzgc;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhe;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final zzc:Ljavax/net/ssl/SSLSocketFactory;

.field private final zzd:I

.field private final zze:I

.field private final zzf:Ljava/lang/String;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhd;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgo;

.field private zzi:Ljava/net/HttpURLConnection;

.field private zzj:Ljava/io/InputStream;

.field private zzk:Z

.field private zzl:I

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:I

.field private final zzr:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdy;->zza:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdy;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhj;III)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdx;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcdx;-><init>(Lcom/google/android/gms/internal/ads/zzcdy;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzc:Ljavax/net/ssl/SSLSocketFactory;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzr:Ljava/util/Set;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdd;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzf:Ljava/lang/String;

    .line 23
    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhd;

    .line 25
    .line 26
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhd;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzg:Lcom/google/android/gms/internal/ads/zzhd;

    .line 30
    .line 31
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzd:I

    .line 32
    .line 33
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zze:I

    .line 34
    .line 35
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzq:I

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgc;->zzf(Lcom/google/android/gms/internal/ads/zzhj;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzcdy;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzq:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzcdy;Ljava/net/Socket;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzr:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final zzn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzi:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 11
    .line 12
    const-string v1, "Unexpected error while disconnecting"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzi:Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzo:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzm:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcdy;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, [B

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const/16 v3, 0x1000

    .line 24
    .line 25
    new-array v3, v3, [B

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzo:J

    .line 32
    .line 33
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzm:J

    .line 34
    .line 35
    cmp-long v8, v4, v6

    .line 36
    .line 37
    if-eqz v8, :cond_4

    .line 38
    .line 39
    array-length v8, v3

    .line 40
    sub-long/2addr v6, v4

    .line 41
    int-to-long v4, v8

    .line 42
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    long-to-int v4, v4

    .line 47
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzj:Ljava/io/InputStream;

    .line 48
    .line 49
    invoke-virtual {v5, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_3

    .line 58
    .line 59
    if-eq v4, v2, :cond_2

    .line 60
    .line 61
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzo:J

    .line 62
    .line 63
    int-to-long v7, v4

    .line 64
    add-long/2addr v5, v7

    .line 65
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzo:J

    .line 66
    .line 67
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzgc;->zzg(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_3
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    if-nez p3, :cond_5

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzn:J

    .line 90
    .line 91
    const-wide/16 v3, -0x1

    .line 92
    .line 93
    cmp-long v5, v0, v3

    .line 94
    .line 95
    if-eqz v5, :cond_7

    .line 96
    .line 97
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzp:J

    .line 98
    .line 99
    sub-long/2addr v0, v5

    .line 100
    const-wide/16 v5, 0x0

    .line 101
    .line 102
    cmp-long v5, v0, v5

    .line 103
    .line 104
    if-nez v5, :cond_6

    .line 105
    .line 106
    :goto_2
    move v1, v2

    .line 107
    goto :goto_3

    .line 108
    :cond_6
    int-to-long v5, p3

    .line 109
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    long-to-int p3, v0

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzj:Ljava/io/InputStream;

    .line 115
    .line 116
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-ne v1, v2, :cond_9

    .line 121
    .line 122
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzn:J

    .line 123
    .line 124
    cmp-long p1, p1, v3

    .line 125
    .line 126
    if-nez p1, :cond_8

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :cond_9
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzp:J

    .line 136
    .line 137
    int-to-long v2, v1

    .line 138
    add-long/2addr p1, v2

    .line 139
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzp:J

    .line 140
    .line 141
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzgc;->zzg(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    :goto_3
    return v1

    .line 145
    :goto_4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzha;

    .line 146
    .line 147
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzh:Lcom/google/android/gms/internal/ads/zzgo;

    .line 148
    .line 149
    const/16 v0, 0x7d0

    .line 150
    .line 151
    const/4 v1, 0x2

    .line 152
    invoke-direct {p2, p1, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 153
    .line 154
    .line 155
    throw p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgo;)J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "Unable to connect to "

    .line 7
    .line 8
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzh:Lcom/google/android/gms/internal/ads/zzgo;

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzp:J

    .line 13
    .line 14
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzo:J

    .line 15
    .line 16
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 17
    .line 18
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzgo;->zza:Landroid/net/Uri;

    .line 19
    .line 20
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzgo;->zze:J

    .line 28
    .line 29
    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzgo;->zzf:J

    .line 30
    .line 31
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzgo;->zzb(I)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/4 v13, 0x0

    .line 36
    :goto_0
    add-int/lit8 v14, v13, 0x1

    .line 37
    .line 38
    const/16 v15, 0x14

    .line 39
    .line 40
    if-gt v13, v15, :cond_16

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 43
    .line 44
    .line 45
    move-result-object v13

    .line 46
    check-cast v13, Ljava/net/HttpURLConnection;

    .line 47
    .line 48
    instance-of v15, v13, Ljavax/net/ssl/HttpsURLConnection;

    .line 49
    .line 50
    if-eqz v15, :cond_0

    .line 51
    .line 52
    move-object v15, v13

    .line 53
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 54
    .line 55
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzc:Ljavax/net/ssl/SSLSocketFactory;

    .line 56
    .line 57
    invoke-virtual {v15, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    move-object v4, v0

    .line 63
    goto/16 :goto_a

    .line 64
    .line 65
    :cond_0
    :goto_1
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzd:I

    .line 66
    .line 67
    invoke-virtual {v13, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 68
    .line 69
    .line 70
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zze:I

    .line 71
    .line 72
    invoke-virtual {v13, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 73
    .line 74
    .line 75
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzg:Lcom/google/android/gms/internal/ads/zzhd;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhd;->zza()Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v15

    .line 93
    if-eqz v15, :cond_1

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    check-cast v15, Ljava/util/Map$Entry;

    .line 100
    .line 101
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v16

    .line 105
    move-object/from16 v12, v16

    .line 106
    .line 107
    check-cast v12, Ljava/lang/String;

    .line 108
    .line 109
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v15

    .line 113
    check-cast v15, Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v13, v12, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_1
    cmp-long v2, v8, v4

    .line 120
    .line 121
    const-wide/16 v18, -0x1

    .line 122
    .line 123
    if-nez v2, :cond_2

    .line 124
    .line 125
    cmp-long v2, v10, v18

    .line 126
    .line 127
    if-eqz v2, :cond_4

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_2
    move-wide v4, v8

    .line 131
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v12, "bytes="

    .line 137
    .line 138
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v12, "-"

    .line 145
    .line 146
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    cmp-long v12, v10, v18

    .line 154
    .line 155
    if-eqz v12, :cond_3

    .line 156
    .line 157
    add-long/2addr v4, v10

    .line 158
    add-long v4, v4, v18

    .line 159
    .line 160
    new-instance v12, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    :cond_3
    const-string v4, "Range"

    .line 176
    .line 177
    invoke-virtual {v13, v4, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_4
    const-string v2, "User-Agent"

    .line 181
    .line 182
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzf:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v13, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    if-nez v6, :cond_5

    .line 188
    .line 189
    const-string v2, "Accept-Encoding"

    .line 190
    .line 191
    const-string v4, "identity"

    .line 192
    .line 193
    invoke-virtual {v13, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_5
    const/4 v2, 0x0

    .line 197
    invoke-virtual {v13, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v13, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v13}, Ljava/net/URLConnection;->connect()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    const/16 v5, 0x12c

    .line 211
    .line 212
    if-eq v4, v5, :cond_6

    .line 213
    .line 214
    const/16 v5, 0x12d

    .line 215
    .line 216
    if-eq v4, v5, :cond_6

    .line 217
    .line 218
    const/16 v5, 0x12e

    .line 219
    .line 220
    if-eq v4, v5, :cond_6

    .line 221
    .line 222
    const/16 v5, 0x12f

    .line 223
    .line 224
    if-eq v4, v5, :cond_6

    .line 225
    .line 226
    const/16 v5, 0x133

    .line 227
    .line 228
    if-eq v4, v5, :cond_6

    .line 229
    .line 230
    const/16 v5, 0x134

    .line 231
    .line 232
    if-ne v4, v5, :cond_7

    .line 233
    .line 234
    :cond_6
    const/4 v4, 0x1

    .line 235
    const-wide/16 v16, 0x0

    .line 236
    .line 237
    goto/16 :goto_8

    .line 238
    .line 239
    :cond_7
    iput-object v13, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzi:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .line 241
    :try_start_1
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzl:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 246
    .line 247
    const/16 v2, 0xc8

    .line 248
    .line 249
    if-lt v0, v2, :cond_11

    .line 250
    .line 251
    const/16 v3, 0x12b

    .line 252
    .line 253
    if-le v0, v3, :cond_8

    .line 254
    .line 255
    goto/16 :goto_7

    .line 256
    .line 257
    :cond_8
    if-ne v0, v2, :cond_9

    .line 258
    .line 259
    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzgo;->zze:J

    .line 260
    .line 261
    const-wide/16 v4, 0x0

    .line 262
    .line 263
    cmp-long v0, v2, v4

    .line 264
    .line 265
    if-nez v0, :cond_a

    .line 266
    .line 267
    :cond_9
    const-wide/16 v2, 0x0

    .line 268
    .line 269
    :cond_a
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzm:J

    .line 270
    .line 271
    const/4 v2, 0x1

    .line 272
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzgo;->zzb(I)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-nez v0, :cond_10

    .line 277
    .line 278
    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzgo;->zzf:J

    .line 279
    .line 280
    cmp-long v0, v2, v18

    .line 281
    .line 282
    if-eqz v0, :cond_b

    .line 283
    .line 284
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzn:J

    .line 285
    .line 286
    goto/16 :goto_6

    .line 287
    .line 288
    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzi:Ljava/net/HttpURLConnection;

    .line 289
    .line 290
    const-string v2, "Content-Length"

    .line 291
    .line 292
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    const-string v4, "]"

    .line 301
    .line 302
    if-nez v3, :cond_c

    .line 303
    .line 304
    :try_start_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 305
    .line 306
    .line 307
    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 308
    goto :goto_4

    .line 309
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    const-string v5, "Unexpected Content-Length ["

    .line 315
    .line 316
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    sget v5, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 330
    .line 331
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    :cond_c
    move-wide/from16 v5, v18

    .line 335
    .line 336
    :goto_4
    const-string v3, "Content-Range"

    .line 337
    .line 338
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-nez v3, :cond_e

    .line 347
    .line 348
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcdy;->zza:Ljava/util/regex/Pattern;

    .line 349
    .line 350
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 355
    .line 356
    .line 357
    move-result v8

    .line 358
    if-eqz v8, :cond_e

    .line 359
    .line 360
    const/4 v8, 0x2

    .line 361
    :try_start_3
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 366
    .line 367
    .line 368
    move-result-wide v8

    .line 369
    const/4 v10, 0x1

    .line 370
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 375
    .line 376
    .line 377
    move-result-wide v10

    .line 378
    sub-long/2addr v8, v10

    .line 379
    const-wide/16 v16, 0x0

    .line 380
    .line 381
    cmp-long v3, v5, v16

    .line 382
    .line 383
    const-wide/16 v10, 0x1

    .line 384
    .line 385
    add-long/2addr v8, v10

    .line 386
    if-gez v3, :cond_d

    .line 387
    .line 388
    move-wide v5, v8

    .line 389
    goto :goto_5

    .line 390
    :cond_d
    cmp-long v3, v5, v8

    .line 391
    .line 392
    if-eqz v3, :cond_e

    .line 393
    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    const-string v10, "Inconsistent headers ["

    .line 400
    .line 401
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v2, "] ["

    .line 408
    .line 409
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 423
    .line 424
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 428
    .line 429
    .line 430
    move-result-wide v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 431
    goto :goto_5

    .line 432
    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .line 436
    .line 437
    const-string v3, "Unexpected Content-Range ["

    .line 438
    .line 439
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 453
    .line 454
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    :cond_e
    :goto_5
    cmp-long v0, v5, v18

    .line 458
    .line 459
    if-eqz v0, :cond_f

    .line 460
    .line 461
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzm:J

    .line 462
    .line 463
    sub-long v18, v5, v2

    .line 464
    .line 465
    :cond_f
    move-wide/from16 v2, v18

    .line 466
    .line 467
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzn:J

    .line 468
    .line 469
    goto :goto_6

    .line 470
    :cond_10
    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzgo;->zzf:J

    .line 471
    .line 472
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzn:J

    .line 473
    .line 474
    :goto_6
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzi:Ljava/net/HttpURLConnection;

    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzj:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 481
    .line 482
    const/4 v2, 0x1

    .line 483
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzk:Z

    .line 484
    .line 485
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgc;->zzj(Lcom/google/android/gms/internal/ads/zzgo;)V

    .line 486
    .line 487
    .line 488
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzn:J

    .line 489
    .line 490
    return-wide v2

    .line 491
    :catch_3
    move-exception v0

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcdy;->zzn()V

    .line 493
    .line 494
    .line 495
    new-instance v2, Lcom/google/android/gms/internal/ads/zzha;

    .line 496
    .line 497
    const/16 v3, 0x7d0

    .line 498
    .line 499
    const/4 v4, 0x1

    .line 500
    invoke-direct {v2, v0, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 501
    .line 502
    .line 503
    throw v2

    .line 504
    :cond_11
    :goto_7
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzi:Ljava/net/HttpURLConnection;

    .line 505
    .line 506
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 507
    .line 508
    .line 509
    move-result-object v6

    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcdy;->zzn()V

    .line 511
    .line 512
    .line 513
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhc;

    .line 514
    .line 515
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzl:I

    .line 516
    .line 517
    const/4 v5, 0x0

    .line 518
    sget-object v8, Lcom/google/android/gms/internal/ads/zzex;->zzb:[B

    .line 519
    .line 520
    const/4 v4, 0x0

    .line 521
    move-object v2, v0

    .line 522
    move-object/from16 v7, p1

    .line 523
    .line 524
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgo;[B)V

    .line 525
    .line 526
    .line 527
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzcdy;->zzl:I

    .line 528
    .line 529
    const/16 v3, 0x1a0

    .line 530
    .line 531
    if-ne v2, v3, :cond_12

    .line 532
    .line 533
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgk;

    .line 534
    .line 535
    const/16 v3, 0x7d8

    .line 536
    .line 537
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(I)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 541
    .line 542
    .line 543
    :cond_12
    throw v0

    .line 544
    :catch_4
    move-exception v0

    .line 545
    move-object v4, v0

    .line 546
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcdy;->zzn()V

    .line 547
    .line 548
    .line 549
    new-instance v0, Lcom/google/android/gms/internal/ads/zzha;

    .line 550
    .line 551
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzgo;->zza:Landroid/net/Uri;

    .line 552
    .line 553
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    const/16 v6, 0x7d0

    .line 566
    .line 567
    const/4 v8, 0x1

    .line 568
    move-object v2, v0

    .line 569
    move-object/from16 v5, p1

    .line 570
    .line 571
    move v7, v8

    .line 572
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 573
    .line 574
    .line 575
    throw v0

    .line 576
    :goto_8
    :try_start_5
    const-string v5, "Location"

    .line 577
    .line 578
    invoke-virtual {v13, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 583
    .line 584
    .line 585
    if-eqz v5, :cond_15

    .line 586
    .line 587
    new-instance v12, Ljava/net/URL;

    .line 588
    .line 589
    invoke-direct {v12, v0, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    const-string v5, "https"

    .line 597
    .line 598
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    if-nez v5, :cond_14

    .line 603
    .line 604
    const-string v5, "http"

    .line 605
    .line 606
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    move-result v5

    .line 610
    if-eqz v5, :cond_13

    .line 611
    .line 612
    goto :goto_9

    .line 613
    :cond_13
    new-instance v2, Ljava/net/ProtocolException;

    .line 614
    .line 615
    const-string v4, "Unsupported protocol redirect: "

    .line 616
    .line 617
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    throw v2

    .line 629
    :cond_14
    :goto_9
    move v2, v4

    .line 630
    move-object v0, v12

    .line 631
    move v13, v14

    .line 632
    move-wide/from16 v4, v16

    .line 633
    .line 634
    goto/16 :goto_0

    .line 635
    .line 636
    :cond_15
    new-instance v0, Ljava/net/ProtocolException;

    .line 637
    .line 638
    const-string v2, "Null location redirect"

    .line 639
    .line 640
    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    throw v0

    .line 644
    :cond_16
    new-instance v0, Ljava/net/NoRouteToHostException;

    .line 645
    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    .line 647
    .line 648
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .line 650
    .line 651
    const-string v4, "Too many redirects: "

    .line 652
    .line 653
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    invoke-direct {v0, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 667
    :goto_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzha;

    .line 668
    .line 669
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzgo;->zza:Landroid/net/Uri;

    .line 670
    .line 671
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v3

    .line 683
    const/16 v6, 0x7d0

    .line 684
    .line 685
    const/4 v8, 0x1

    .line 686
    move-object v2, v0

    .line 687
    move-object/from16 v5, p1

    .line 688
    .line 689
    move v7, v8

    .line 690
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 691
    .line 692
    .line 693
    throw v0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzi:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final zzd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzj:Ljava/io/InputStream;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v2

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception v2

    .line 16
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzha;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzh:Lcom/google/android/gms/internal/ads/zzgo;

    .line 19
    .line 20
    const/16 v5, 0x7d0

    .line 21
    .line 22
    const/4 v6, 0x3

    .line 23
    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 24
    .line 25
    .line 26
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzj:Ljava/io/InputStream;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdy;->zzn()V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzk:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzk:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgc;->zzh()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzr:Ljava/util/Set;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzj:Ljava/io/InputStream;

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdy;->zzn()V

    .line 50
    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzk:Z

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzk:Z

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgc;->zzh()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzr:Ljava/util/Set;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 64
    .line 65
    .line 66
    throw v2
.end method

.method public final zze()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzi:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method final zzm(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzq:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzr:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/net/Socket;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->zzq:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 35
    .line 36
    const-string v1, "Failed to update receive buffer size."

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

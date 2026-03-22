.class final Lcom/google/android/gms/internal/ads/zzcer;
.super Lcom/google/android/gms/internal/ads/zzgc;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhe;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# instance fields
.field private final zzb:I

.field private final zzc:I

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhd;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgo;

.field private zzg:Ljava/net/HttpURLConnection;

.field private final zzh:Ljava/util/Queue;

.field private zzi:Ljava/io/InputStream;

.field private zzj:Z

.field private zzk:I

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private final zzq:J

.field private final zzr:J


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
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcer;->zza:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhj;IIJJ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdd;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzd:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhd;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhd;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcer;->zze:Lcom/google/android/gms/internal/ads/zzhd;

    .line 16
    .line 17
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzb:I

    .line 18
    .line 19
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzc:I

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayDeque;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzh:Ljava/util/Queue;

    .line 27
    .line 28
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzq:J

    .line 29
    .line 30
    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzr:J

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgc;->zzf(Lcom/google/android/gms/internal/ads/zzhj;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method private final zzl()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzh:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 21
    .line 22
    const-string v1, "Unexpected error while disconnecting"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzg:Ljava/net/HttpURLConnection;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v0, p3

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    :try_start_0
    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzl:J

    .line 11
    .line 12
    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzm:J

    .line 13
    .line 14
    sub-long/2addr v1, v3

    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    cmp-long v1, v1, v5

    .line 18
    .line 19
    const/4 v8, -0x1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    move v0, v8

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzn:J

    .line 25
    .line 26
    add-long/2addr v1, v3

    .line 27
    int-to-long v9, v0

    .line 28
    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzr:J

    .line 29
    .line 30
    add-long/2addr v1, v9

    .line 31
    add-long/2addr v1, v3

    .line 32
    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzp:J

    .line 33
    .line 34
    const-wide/16 v11, 0x1

    .line 35
    .line 36
    add-long v13, v5, v11

    .line 37
    .line 38
    cmp-long v0, v1, v13

    .line 39
    .line 40
    if-lez v0, :cond_2

    .line 41
    .line 42
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzo:J

    .line 43
    .line 44
    cmp-long v2, v5, v0

    .line 45
    .line 46
    if-gez v2, :cond_2

    .line 47
    .line 48
    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzq:J

    .line 49
    .line 50
    add-long/2addr v5, v13

    .line 51
    sub-long/2addr v5, v3

    .line 52
    const-wide/16 v2, -0x1

    .line 53
    .line 54
    add-long/2addr v5, v2

    .line 55
    add-long v15, v13, v9

    .line 56
    .line 57
    add-long/2addr v2, v15

    .line 58
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 63
    .line 64
    .line 65
    move-result-wide v5

    .line 66
    const/4 v0, 0x2

    .line 67
    move-object/from16 v1, p0

    .line 68
    .line 69
    move-wide v2, v13

    .line 70
    move-wide v13, v5

    .line 71
    move-wide v4, v13

    .line 72
    move v6, v0

    .line 73
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcer;->zzk(JJI)Ljava/net/HttpURLConnection;

    .line 74
    .line 75
    .line 76
    iput-wide v13, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzp:J

    .line 77
    .line 78
    move-wide v5, v13

    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    :goto_0
    add-long/2addr v5, v11

    .line 83
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzn:J

    .line 84
    .line 85
    sub-long/2addr v5, v0

    .line 86
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzm:J

    .line 87
    .line 88
    sub-long/2addr v5, v0

    .line 89
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    long-to-int v0, v0

    .line 94
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzi:Ljava/io/InputStream;

    .line 95
    .line 96
    move-object/from16 v2, p1

    .line 97
    .line 98
    move/from16 v3, p2

    .line 99
    .line 100
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eq v0, v8, :cond_3

    .line 105
    .line 106
    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzm:J

    .line 107
    .line 108
    int-to-long v3, v0

    .line 109
    add-long/2addr v1, v3

    .line 110
    iput-wide v1, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzm:J

    .line 111
    .line 112
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzgc;->zzg(I)V

    .line 113
    .line 114
    .line 115
    :goto_1
    return v0

    .line 116
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 119
    .line 120
    .line 121
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzha;

    .line 123
    .line 124
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzcer;->zzf:Lcom/google/android/gms/internal/ads/zzgo;

    .line 125
    .line 126
    const/16 v3, 0x7d0

    .line 127
    .line 128
    const/4 v4, 0x2

    .line 129
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 130
    .line 131
    .line 132
    throw v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgo;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzf:Lcom/google/android/gms/internal/ads/zzgo;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzm:J

    .line 6
    .line 7
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzgo;->zze:J

    .line 8
    .line 9
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzf:J

    .line 10
    .line 11
    const-wide/16 v8, -0x1

    .line 12
    .line 13
    cmp-long v2, v0, v8

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzq:J

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzq:J

    .line 21
    .line 22
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    :goto_0
    add-long/2addr v0, v3

    .line 27
    add-long v5, v0, v8

    .line 28
    .line 29
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzn:J

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    move-object v2, p0

    .line 33
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzcer;->zzk(JJI)Ljava/net/HttpURLConnection;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzg:Ljava/net/HttpURLConnection;

    .line 38
    .line 39
    const-string v1, "Content-Range"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcer;->zza:Ljava/util/regex/Pattern;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 69
    .line 70
    .line 71
    const/4 v3, 0x2

    .line 72
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    const/4 v5, 0x3

    .line 81
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzf:J

    .line 90
    .line 91
    cmp-long v7, v5, v8

    .line 92
    .line 93
    if-eqz v7, :cond_1

    .line 94
    .line 95
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzl:J

    .line 96
    .line 97
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzn:J

    .line 98
    .line 99
    add-long/2addr v0, v5

    .line 100
    add-long/2addr v0, v8

    .line 101
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzo:J

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzn:J

    .line 109
    .line 110
    sub-long v5, v0, v5

    .line 111
    .line 112
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzl:J

    .line 113
    .line 114
    add-long/2addr v0, v8

    .line 115
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzo:J

    .line 116
    .line 117
    :goto_1
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzp:J

    .line 118
    .line 119
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzj:Z

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgc;->zzj(Lcom/google/android/gms/internal/ads/zzgo;)V

    .line 122
    .line 123
    .line 124
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzl:J

    .line 125
    .line 126
    return-wide v0

    .line 127
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v2, "Unexpected Content-Range ["

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v2, "]"

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 150
    .line 151
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcep;

    .line 155
    .line 156
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcep;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgo;)V

    .line 157
    .line 158
    .line 159
    throw v1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzg:Ljava/net/HttpURLConnection;

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
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzi:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v2

    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception v2

    .line 14
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzha;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzf:Lcom/google/android/gms/internal/ads/zzgo;

    .line 17
    .line 18
    const/16 v5, 0x7d0

    .line 19
    .line 20
    const/4 v6, 0x3

    .line 21
    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 22
    .line 23
    .line 24
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzi:Ljava/io/InputStream;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcer;->zzl()V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzj:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzj:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgc;->zzh()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzi:Ljava/io/InputStream;

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcer;->zzl()V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzj:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzj:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgc;->zzh()V

    .line 52
    .line 53
    .line 54
    :cond_2
    throw v2
.end method

.method public final zze()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzg:Ljava/net/HttpURLConnection;

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

.method final zzk(JJI)Ljava/net/HttpURLConnection;
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    const-string v0, "Unable to connect to "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzf:Lcom/google/android/gms/internal/ads/zzgo;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgo;->zza:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 21
    .line 22
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzb:I

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 25
    .line 26
    .line 27
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzc:I

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcer;->zze:Lcom/google/android/gms/internal/ads/zzhd;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhd;->zza()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/util/Map$Entry;

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v2, v5, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    move-object v4, p1

    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v4, "bytes="

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, "-"

    .line 92
    .line 93
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string p2, "Range"

    .line 104
    .line 105
    invoke-virtual {v2, p2, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string p1, "User-Agent"

    .line 109
    .line 110
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzd:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string p1, "Accept-Encoding"

    .line 116
    .line 117
    const-string p2, "identity"

    .line 118
    .line 119
    invoke-virtual {v2, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string p1, "GET"

    .line 123
    .line 124
    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzh:Ljava/util/Queue;

    .line 131
    .line 132
    invoke-interface {p1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzf:Lcom/google/android/gms/internal/ads/zzgo;

    .line 136
    .line 137
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgo;->zza:Landroid/net/Uri;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzk:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 148
    .line 149
    const/16 p1, 0xc8

    .line 150
    .line 151
    if-lt p2, p1, :cond_2

    .line 152
    .line 153
    const/16 p1, 0x12b

    .line 154
    .line 155
    if-gt p2, p1, :cond_2

    .line 156
    .line 157
    :try_start_2
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzi:Ljava/io/InputStream;

    .line 162
    .line 163
    if-eqz p2, :cond_1

    .line 164
    .line 165
    new-instance p2, Ljava/io/SequenceInputStream;

    .line 166
    .line 167
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzi:Ljava/io/InputStream;

    .line 168
    .line 169
    invoke-direct {p2, p3, p1}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 170
    .line 171
    .line 172
    move-object p1, p2

    .line 173
    goto :goto_1

    .line 174
    :catch_1
    move-exception p1

    .line 175
    goto :goto_2

    .line 176
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzi:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    .line 178
    return-object v2

    .line 179
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcer;->zzl()V

    .line 180
    .line 181
    .line 182
    new-instance p2, Lcom/google/android/gms/internal/ads/zzha;

    .line 183
    .line 184
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzf:Lcom/google/android/gms/internal/ads/zzgo;

    .line 185
    .line 186
    const/16 p4, 0x7d0

    .line 187
    .line 188
    invoke-direct {p2, p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 189
    .line 190
    .line 191
    throw p2

    .line 192
    :cond_2
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcer;->zzl()V

    .line 197
    .line 198
    .line 199
    new-instance p2, Lcom/google/android/gms/internal/ads/zzceq;

    .line 200
    .line 201
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzk:I

    .line 202
    .line 203
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzf:Lcom/google/android/gms/internal/ads/zzgo;

    .line 204
    .line 205
    invoke-direct {p2, p3, p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzceq;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/zzgo;I)V

    .line 206
    .line 207
    .line 208
    throw p2

    .line 209
    :catch_2
    move-exception p2

    .line 210
    move-object v3, p2

    .line 211
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcer;->zzl()V

    .line 212
    .line 213
    .line 214
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    new-instance p2, Lcom/google/android/gms/internal/ads/zzha;

    .line 219
    .line 220
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzf:Lcom/google/android/gms/internal/ads/zzgo;

    .line 221
    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    const/16 v5, 0x7d0

    .line 227
    .line 228
    move-object v1, p2

    .line 229
    move v6, p5

    .line 230
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 231
    .line 232
    .line 233
    throw p2

    .line 234
    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    new-instance p2, Lcom/google/android/gms/internal/ads/zzha;

    .line 239
    .line 240
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcer;->zzf:Lcom/google/android/gms/internal/ads/zzgo;

    .line 241
    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    const/16 v6, 0x7d0

    .line 247
    .line 248
    move-object v2, p2

    .line 249
    move v7, p5

    .line 250
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 251
    .line 252
    .line 253
    throw p2
.end method

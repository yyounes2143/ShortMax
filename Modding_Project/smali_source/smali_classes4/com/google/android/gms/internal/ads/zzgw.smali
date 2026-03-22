.class public final Lcom/google/android/gms/internal/ads/zzgw;
.super Lcom/google/android/gms/internal/ads/zzgc;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhe;


# instance fields
.field private final zza:Z

.field private final zzb:I

.field private final zzc:I

.field private final zzd:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzhd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhd;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzh:Ljava/net/HttpURLConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzj:Z

.field private zzk:I

.field private zzl:J

.field private zzm:J


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;IIZZLcom/google/android/gms/internal/ads/zzhd;Lcom/google/android/gms/internal/ads/zzfvq;ZLcom/google/android/gms/internal/ads/zzgv;)V
    .locals 0

    .line 1
    const/4 p5, 0x1

    .line 2
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzd:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzb:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzc:I

    .line 10
    .line 11
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzgw;->zza:Z

    .line 12
    .line 13
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgw;->zze:Lcom/google/android/gms/internal/ads/zzhd;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhd;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhd;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzf:Lcom/google/android/gms/internal/ads/zzhd;

    .line 21
    .line 22
    return-void
.end method

.method private final zzk(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzb:I

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 10
    .line 11
    .line 12
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzc:I

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgw;->zze:Lcom/google/android/gms/internal/ads/zzhd;

    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzhd;->zza()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzf:Lcom/google/android/gms/internal/ads/zzhd;

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzhd;->zza()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-eqz p3, :cond_0

    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    check-cast p3, Ljava/util/Map$Entry;

    .line 62
    .line 63
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p10

    .line 67
    check-cast p10, Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    check-cast p3, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, p10, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-wide/16 p2, 0x0

    .line 80
    .line 81
    cmp-long p10, p4, p2

    .line 82
    .line 83
    const-wide/16 v0, -0x1

    .line 84
    .line 85
    if-nez p10, :cond_2

    .line 86
    .line 87
    cmp-long p4, p6, v0

    .line 88
    .line 89
    if-nez p4, :cond_1

    .line 90
    .line 91
    const/4 p2, 0x0

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move-wide p4, p2

    .line 94
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string p3, "bytes="

    .line 100
    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p3, "-"

    .line 108
    .line 109
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    cmp-long p3, p6, v0

    .line 113
    .line 114
    if-eqz p3, :cond_3

    .line 115
    .line 116
    add-long/2addr p4, p6

    .line 117
    add-long/2addr p4, v0

    .line 118
    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    :goto_1
    if-eqz p2, :cond_4

    .line 126
    .line 127
    const-string p3, "Range"

    .line 128
    .line 129
    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzd:Ljava/lang/String;

    .line 133
    .line 134
    if-eqz p2, :cond_5

    .line 135
    .line 136
    const-string p3, "User-Agent"

    .line 137
    .line 138
    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_5
    const/4 p2, 0x1

    .line 142
    if-eq p2, p8, :cond_6

    .line 143
    .line 144
    const-string p2, "identity"

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    const-string p2, "gzip"

    .line 148
    .line 149
    :goto_2
    const-string p3, "Accept-Encoding"

    .line 150
    .line 151
    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 155
    .line 156
    .line 157
    const/4 p2, 0x0

    .line 158
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 159
    .line 160
    .line 161
    sget p2, Lcom/google/android/gms/internal/ads/zzgo;->zzh:I

    .line 162
    .line 163
    const-string p2, "GET"

    .line 164
    .line 165
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 169
    .line 170
    .line 171
    return-object p1
.end method

.method private final zzl(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgo;)Ljava/net/URL;
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x7d1

    .line 3
    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 7
    .line 8
    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v3, "https"

    .line 16
    .line 17
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const-string v3, "http"

    .line 24
    .line 25
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance p2, Lcom/google/android/gms/internal/ads/zzha;

    .line 37
    .line 38
    const-string v2, "Unsupported protocol redirect: "

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p2, p1, p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 45
    .line 46
    .line 47
    throw p2

    .line 48
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzgw;->zza:Z

    .line 49
    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzha;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v4, "Disallowed cross-protocol redirect ("

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, " to "

    .line 83
    .line 84
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, ")"

    .line 91
    .line 92
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {v2, p1, p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 100
    .line 101
    .line 102
    throw v2

    .line 103
    :cond_3
    :goto_1
    return-object v2

    .line 104
    :catch_0
    move-exception p1

    .line 105
    new-instance p2, Lcom/google/android/gms/internal/ads/zzha;

    .line 106
    .line 107
    invoke-direct {p2, p1, p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 108
    .line 109
    .line 110
    throw p2

    .line 111
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzha;

    .line 112
    .line 113
    const-string p2, "Null location redirect"

    .line 114
    .line 115
    invoke-direct {p1, p2, p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method private final zzm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzh:Ljava/net/HttpURLConnection;

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
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "DefaultHttpDataSource"

    .line 11
    .line 12
    const-string v2, "Unexpected error while disconnecting"

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_2

    .line 5
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzl:J

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzm:J

    .line 15
    .line 16
    sub-long/2addr v0, v4

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v2, v0, v4

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    :goto_0
    move p1, v3

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    int-to-long v4, p3

    .line 26
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    long-to-int p3, v0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto :goto_3

    .line 34
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzi:Ljava/io/InputStream;

    .line 35
    .line 36
    sget-object v1, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ne p1, v3, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzm:J

    .line 46
    .line 47
    int-to-long v0, p1

    .line 48
    add-long/2addr p2, v0

    .line 49
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzm:J

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgc;->zzg(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :goto_2
    return p1

    .line 55
    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzg:Lcom/google/android/gms/internal/ads/zzgo;

    .line 56
    .line 57
    sget-object p3, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 58
    .line 59
    const/4 p3, 0x2

    .line 60
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzha;->zza(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;I)Lcom/google/android/gms/internal/ads/zzha;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgo;)J
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzha;
        }
    .end annotation

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    const/4 v14, 0x1

    .line 6
    iput-object v13, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzg:Lcom/google/android/gms/internal/ads/zzgo;

    .line 7
    .line 8
    const-wide/16 v10, 0x0

    .line 9
    .line 10
    iput-wide v10, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzm:J

    .line 11
    .line 12
    iput-wide v10, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzl:J

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgc;->zzi(Lcom/google/android/gms/internal/ads/zzgo;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 18
    .line 19
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzgo;->zza:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-wide v7, v13, Lcom/google/android/gms/internal/ads/zzgo;->zze:J

    .line 29
    .line 30
    iget-wide v5, v13, Lcom/google/android/gms/internal/ads/zzgo;->zzf:J

    .line 31
    .line 32
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzgo;->zzb(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzgw;->zza:Z

    .line 37
    .line 38
    const/4 v15, 0x0

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    iget-object v9, v13, Lcom/google/android/gms/internal/ads/zzgo;->zzd:Ljava/util/Map;

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    const/4 v4, 0x0

    .line 45
    const/16 v16, 0x1

    .line 46
    .line 47
    move-object/from16 v1, p0

    .line 48
    .line 49
    move-wide/from16 v17, v5

    .line 50
    .line 51
    move-wide v5, v7

    .line 52
    move-wide/from16 v7, v17

    .line 53
    .line 54
    move-object/from16 v17, v9

    .line 55
    .line 56
    move v9, v0

    .line 57
    move-wide/from16 v19, v10

    .line 58
    .line 59
    move/from16 v10, v16

    .line 60
    .line 61
    move-object/from16 v11, v17

    .line 62
    .line 63
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzgw;->zzk(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto/16 :goto_d

    .line 70
    .line 71
    :cond_0
    move-wide/from16 v17, v5

    .line 72
    .line 73
    move-wide/from16 v19, v10

    .line 74
    .line 75
    move-object v11, v2

    .line 76
    move v1, v15

    .line 77
    :goto_0
    add-int/lit8 v10, v1, 0x1

    .line 78
    .line 79
    const/16 v2, 0x14

    .line 80
    .line 81
    if-gt v1, v2, :cond_15

    .line 82
    .line 83
    iget-object v9, v13, Lcom/google/android/gms/internal/ads/zzgo;->zzd:Ljava/util/Map;

    .line 84
    .line 85
    const/4 v3, 0x1

    .line 86
    const/4 v4, 0x0

    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    move-object/from16 v1, p0

    .line 90
    .line 91
    move-object v2, v11

    .line 92
    move-wide v5, v7

    .line 93
    move-wide/from16 v21, v7

    .line 94
    .line 95
    move-wide/from16 v7, v17

    .line 96
    .line 97
    move-object/from16 v23, v9

    .line 98
    .line 99
    move v9, v0

    .line 100
    move/from16 v24, v10

    .line 101
    .line 102
    move/from16 v10, v16

    .line 103
    .line 104
    move-object/from16 v25, v11

    .line 105
    .line 106
    move-object/from16 v11, v23

    .line 107
    .line 108
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzgw;->zzk(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    const-string v3, "Location"

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const/16 v4, 0x12c

    .line 123
    .line 124
    if-eq v2, v4, :cond_14

    .line 125
    .line 126
    const/16 v4, 0x12d

    .line 127
    .line 128
    if-eq v2, v4, :cond_14

    .line 129
    .line 130
    const/16 v4, 0x12e

    .line 131
    .line 132
    if-eq v2, v4, :cond_14

    .line 133
    .line 134
    const/16 v4, 0x12f

    .line 135
    .line 136
    if-eq v2, v4, :cond_14

    .line 137
    .line 138
    const/16 v4, 0x133

    .line 139
    .line 140
    if-eq v2, v4, :cond_14

    .line 141
    .line 142
    const/16 v4, 0x134

    .line 143
    .line 144
    if-ne v2, v4, :cond_1

    .line 145
    .line 146
    goto/16 :goto_c

    .line 147
    .line 148
    :cond_1
    move-object v0, v1

    .line 149
    :goto_1
    iput-object v0, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzh:Ljava/net/HttpURLConnection;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    iput v1, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzk:I

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzk:I

    .line 162
    .line 163
    const/16 v2, 0x7d8

    .line 164
    .line 165
    const-string v4, "Content-Range"

    .line 166
    .line 167
    const/16 v5, 0xc8

    .line 168
    .line 169
    const-wide/16 v6, -0x1

    .line 170
    .line 171
    if-lt v1, v5, :cond_e

    .line 172
    .line 173
    const/16 v8, 0x12b

    .line 174
    .line 175
    if-le v1, v8, :cond_2

    .line 176
    .line 177
    goto/16 :goto_8

    .line 178
    .line 179
    :cond_2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzk:I

    .line 183
    .line 184
    if-ne v1, v5, :cond_3

    .line 185
    .line 186
    iget-wide v10, v13, Lcom/google/android/gms/internal/ads/zzgo;->zze:J

    .line 187
    .line 188
    cmp-long v1, v10, v19

    .line 189
    .line 190
    if-nez v1, :cond_4

    .line 191
    .line 192
    :cond_3
    move-wide/from16 v10, v19

    .line 193
    .line 194
    :cond_4
    const-string v1, "Content-Encoding"

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    const-string v3, "gzip"

    .line 201
    .line 202
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-nez v1, :cond_7

    .line 207
    .line 208
    iget-wide v8, v13, Lcom/google/android/gms/internal/ads/zzgo;->zzf:J

    .line 209
    .line 210
    cmp-long v3, v8, v6

    .line 211
    .line 212
    if-eqz v3, :cond_5

    .line 213
    .line 214
    iput-wide v8, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzl:J

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_5
    const-string v3, "Content-Length"

    .line 218
    .line 219
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzhf;->zza(Ljava/lang/String;Ljava/lang/String;)J

    .line 228
    .line 229
    .line 230
    move-result-wide v3

    .line 231
    cmp-long v5, v3, v6

    .line 232
    .line 233
    if-eqz v5, :cond_6

    .line 234
    .line 235
    sub-long v6, v3, v10

    .line 236
    .line 237
    :cond_6
    iput-wide v6, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzl:J

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_7
    iget-wide v3, v13, Lcom/google/android/gms/internal/ads/zzgo;->zzf:J

    .line 241
    .line 242
    iput-wide v3, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzl:J

    .line 243
    .line 244
    :goto_2
    const/16 v3, 0x7d0

    .line 245
    .line 246
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iput-object v0, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzi:Ljava/io/InputStream;

    .line 251
    .line 252
    if-eqz v1, :cond_8

    .line 253
    .line 254
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 255
    .line 256
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzi:Ljava/io/InputStream;

    .line 257
    .line 258
    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 259
    .line 260
    .line 261
    iput-object v0, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzi:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :catch_1
    move-exception v0

    .line 265
    goto :goto_7

    .line 266
    :cond_8
    :goto_3
    iput-boolean v14, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzj:Z

    .line 267
    .line 268
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgc;->zzj(Lcom/google/android/gms/internal/ads/zzgo;)V

    .line 269
    .line 270
    .line 271
    cmp-long v0, v10, v19

    .line 272
    .line 273
    if-nez v0, :cond_9

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_9
    const/16 v0, 0x1000

    .line 277
    .line 278
    :try_start_2
    new-array v0, v0, [B

    .line 279
    .line 280
    :goto_4
    cmp-long v1, v10, v19

    .line 281
    .line 282
    if-lez v1, :cond_c

    .line 283
    .line 284
    const-wide/16 v4, 0x1000

    .line 285
    .line 286
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 287
    .line 288
    .line 289
    move-result-wide v4

    .line 290
    long-to-int v1, v4

    .line 291
    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzi:Ljava/io/InputStream;

    .line 292
    .line 293
    sget-object v5, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v4, v0, v15, v1}, Ljava/io/InputStream;->read([BII)I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-nez v4, :cond_b

    .line 308
    .line 309
    const/4 v4, -0x1

    .line 310
    if-eq v1, v4, :cond_a

    .line 311
    .line 312
    int-to-long v4, v1

    .line 313
    sub-long/2addr v10, v4

    .line 314
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzgc;->zzg(I)V

    .line 315
    .line 316
    .line 317
    goto :goto_4

    .line 318
    :catch_2
    move-exception v0

    .line 319
    goto :goto_6

    .line 320
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzha;

    .line 321
    .line 322
    invoke-direct {v0, v13, v2, v14}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 323
    .line 324
    .line 325
    throw v0

    .line 326
    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzha;

    .line 327
    .line 328
    new-instance v1, Ljava/io/InterruptedIOException;

    .line 329
    .line 330
    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-direct {v0, v1, v13, v3, v14}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 334
    .line 335
    .line 336
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 337
    :cond_c
    :goto_5
    iget-wide v0, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzl:J

    .line 338
    .line 339
    return-wide v0

    .line 340
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgw;->zzm()V

    .line 341
    .line 342
    .line 343
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzha;

    .line 344
    .line 345
    if-eqz v1, :cond_d

    .line 346
    .line 347
    check-cast v0, Lcom/google/android/gms/internal/ads/zzha;

    .line 348
    .line 349
    throw v0

    .line 350
    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzha;

    .line 351
    .line 352
    invoke-direct {v1, v0, v13, v3, v14}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 353
    .line 354
    .line 355
    throw v1

    .line 356
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgw;->zzm()V

    .line 357
    .line 358
    .line 359
    new-instance v1, Lcom/google/android/gms/internal/ads/zzha;

    .line 360
    .line 361
    invoke-direct {v1, v0, v13, v3, v14}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 362
    .line 363
    .line 364
    throw v1

    .line 365
    :cond_e
    :goto_8
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzk:I

    .line 370
    .line 371
    const/16 v8, 0x1a0

    .line 372
    .line 373
    if-ne v1, v8, :cond_10

    .line 374
    .line 375
    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhf;->zzb(Ljava/lang/String;)J

    .line 380
    .line 381
    .line 382
    move-result-wide v9

    .line 383
    move-object v4, v3

    .line 384
    iget-wide v2, v13, Lcom/google/android/gms/internal/ads/zzgo;->zze:J

    .line 385
    .line 386
    cmp-long v2, v2, v9

    .line 387
    .line 388
    if-nez v2, :cond_11

    .line 389
    .line 390
    iput-boolean v14, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzj:Z

    .line 391
    .line 392
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgc;->zzj(Lcom/google/android/gms/internal/ads/zzgo;)V

    .line 393
    .line 394
    .line 395
    iget-wide v0, v13, Lcom/google/android/gms/internal/ads/zzgo;->zzf:J

    .line 396
    .line 397
    cmp-long v2, v0, v6

    .line 398
    .line 399
    if-eqz v2, :cond_f

    .line 400
    .line 401
    return-wide v0

    .line 402
    :cond_f
    return-wide v19

    .line 403
    :cond_10
    move-object v4, v3

    .line 404
    :cond_11
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    if-eqz v0, :cond_12

    .line 409
    .line 410
    :try_start_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbg;->zzb(Ljava/io/InputStream;)[B

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    :goto_9
    move-object v7, v0

    .line 415
    goto :goto_a

    .line 416
    :cond_12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zzb:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 417
    .line 418
    goto :goto_9

    .line 419
    :catch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zzb:[B

    .line 420
    .line 421
    goto :goto_9

    .line 422
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgw;->zzm()V

    .line 423
    .line 424
    .line 425
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzk:I

    .line 426
    .line 427
    if-ne v0, v8, :cond_13

    .line 428
    .line 429
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgk;

    .line 430
    .line 431
    const/16 v1, 0x7d8

    .line 432
    .line 433
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(I)V

    .line 434
    .line 435
    .line 436
    goto :goto_b

    .line 437
    :cond_13
    const/4 v0, 0x0

    .line 438
    :goto_b
    new-instance v8, Lcom/google/android/gms/internal/ads/zzhc;

    .line 439
    .line 440
    iget v2, v12, Lcom/google/android/gms/internal/ads/zzgw;->zzk:I

    .line 441
    .line 442
    move-object v1, v8

    .line 443
    move-object v3, v4

    .line 444
    move-object v4, v0

    .line 445
    move-object/from16 v6, p1

    .line 446
    .line 447
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgo;[B)V

    .line 448
    .line 449
    .line 450
    throw v8

    .line 451
    :cond_14
    :goto_c
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 452
    .line 453
    .line 454
    move-object/from16 v2, v25

    .line 455
    .line 456
    invoke-direct {v12, v2, v3, v13}, Lcom/google/android/gms/internal/ads/zzgw;->zzl(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgo;)Ljava/net/URL;

    .line 457
    .line 458
    .line 459
    move-result-object v11

    .line 460
    move-wide/from16 v7, v21

    .line 461
    .line 462
    move/from16 v1, v24

    .line 463
    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :cond_15
    move/from16 v24, v10

    .line 467
    .line 468
    new-instance v0, Lcom/google/android/gms/internal/ads/zzha;

    .line 469
    .line 470
    new-instance v1, Ljava/net/NoRouteToHostException;

    .line 471
    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    const-string v3, "Too many redirects: "

    .line 478
    .line 479
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    move/from16 v3, v24

    .line 483
    .line 484
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    const/16 v2, 0x7d1

    .line 495
    .line 496
    invoke-direct {v0, v1, v13, v2, v14}, Lcom/google/android/gms/internal/ads/zzha;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;II)V

    .line 497
    .line 498
    .line 499
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 500
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgw;->zzm()V

    .line 501
    .line 502
    .line 503
    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/ads/zzha;->zza(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgo;I)Lcom/google/android/gms/internal/ads/zzha;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    throw v0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzh:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzg:Lcom/google/android/gms/internal/ads/zzgo;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgo;->zza:Landroid/net/Uri;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
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
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzi:Ljava/io/InputStream;
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
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzg:Lcom/google/android/gms/internal/ads/zzgo;

    .line 17
    .line 18
    sget-object v5, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzi:Ljava/io/InputStream;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgw;->zzm()V

    .line 30
    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzj:Z

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzj:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgc;->zzh()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzh:Ljava/net/HttpURLConnection;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzg:Lcom/google/android/gms/internal/ads/zzgo;

    .line 44
    .line 45
    return-void

    .line 46
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzi:Ljava/io/InputStream;

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgw;->zzm()V

    .line 49
    .line 50
    .line 51
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzj:Z

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzj:Z

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgc;->zzh()V

    .line 58
    .line 59
    .line 60
    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzh:Ljava/net/HttpURLConnection;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzg:Lcom/google/android/gms/internal/ads/zzgo;

    .line 63
    .line 64
    throw v2
.end method

.method public final zze()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgw;->zzh:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyt;->zzd()Lcom/google/android/gms/internal/ads/zzfyt;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgu;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgu;-><init>(Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method

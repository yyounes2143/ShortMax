.class public final Lcom/google/android/gms/internal/ads/zzaqz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapn;


# instance fields
.field private final zza:Ljava/util/Map;

.field private zzb:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaqy;

.field private final zzd:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqy;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/LinkedHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-direct {p2, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zza:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzc:Lcom/google/android/gms/internal/ads/zzaqy;

    const/high16 p1, 0x500000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzd:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/LinkedHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-direct {p2, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zza:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaqv;

    .line 3
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzaqv;-><init>(Lcom/google/android/gms/internal/ads/zzaqz;Ljava/io/File;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzc:Lcom/google/android/gms/internal/ads/zzaqy;

    const/high16 p1, 0x1400000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzd:I

    return-void
.end method

.method static zze(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzn(Ljava/io/InputStream;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzn(Ljava/io/InputStream;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    shl-int/lit8 v1, v1, 0x8

    .line 10
    .line 11
    or-int/2addr v0, v1

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzn(Ljava/io/InputStream;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    shl-int/lit8 v1, v1, 0x10

    .line 17
    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzn(Ljava/io/InputStream;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    shl-int/lit8 p0, p0, 0x18

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    or-int/2addr p0, v0

    .line 26
    return p0
.end method

.method static zzf(Ljava/io/InputStream;)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzn(Ljava/io/InputStream;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzn(Ljava/io/InputStream;)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    int-to-long v2, v2

    .line 11
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzn(Ljava/io/InputStream;)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    int-to-long v4, v4

    .line 16
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzn(Ljava/io/InputStream;)I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    int-to-long v6, v6

    .line 21
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzn(Ljava/io/InputStream;)I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    int-to-long v8, v8

    .line 26
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzn(Ljava/io/InputStream;)I

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    int-to-long v10, v10

    .line 31
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzn(Ljava/io/InputStream;)I

    .line 32
    .line 33
    .line 34
    move-result v12

    .line 35
    int-to-long v12, v12

    .line 36
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzn(Ljava/io/InputStream;)I

    .line 37
    .line 38
    .line 39
    move-result v14

    .line 40
    int-to-long v14, v14

    .line 41
    const-wide/16 v16, 0xff

    .line 42
    .line 43
    and-long v2, v2, v16

    .line 44
    .line 45
    and-long v4, v4, v16

    .line 46
    .line 47
    and-long v6, v6, v16

    .line 48
    .line 49
    and-long v8, v8, v16

    .line 50
    .line 51
    and-long v10, v10, v16

    .line 52
    .line 53
    and-long v12, v12, v16

    .line 54
    .line 55
    and-long v14, v14, v16

    .line 56
    .line 57
    and-long v0, v0, v16

    .line 58
    .line 59
    const/16 v16, 0x8

    .line 60
    .line 61
    shl-long v2, v2, v16

    .line 62
    .line 63
    or-long/2addr v0, v2

    .line 64
    const/16 v2, 0x10

    .line 65
    .line 66
    shl-long v2, v4, v2

    .line 67
    .line 68
    or-long/2addr v0, v2

    .line 69
    const/16 v2, 0x18

    .line 70
    .line 71
    shl-long v2, v6, v2

    .line 72
    .line 73
    or-long/2addr v0, v2

    .line 74
    const/16 v2, 0x20

    .line 75
    .line 76
    shl-long v2, v8, v2

    .line 77
    .line 78
    or-long/2addr v0, v2

    .line 79
    const/16 v2, 0x28

    .line 80
    .line 81
    shl-long v2, v10, v2

    .line 82
    .line 83
    or-long/2addr v0, v2

    .line 84
    const/16 v2, 0x30

    .line 85
    .line 86
    shl-long v2, v12, v2

    .line 87
    .line 88
    or-long/2addr v0, v2

    .line 89
    const/16 v2, 0x38

    .line 90
    .line 91
    shl-long v2, v14, v2

    .line 92
    .line 93
    or-long/2addr v0, v2

    .line 94
    return-wide v0
.end method

.method static zzh(Lcom/google/android/gms/internal/ads/zzaqx;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzf(Ljava/io/InputStream;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaqz;->zzm(Lcom/google/android/gms/internal/ads/zzaqx;J)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "UTF-8"

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method static zzj(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 4
    .line 5
    .line 6
    shr-int/lit8 v0, p1, 0x8

    .line 7
    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 11
    .line 12
    .line 13
    shr-int/lit8 v0, p1, 0x10

    .line 14
    .line 15
    and-int/lit16 v0, v0, 0xff

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 18
    .line 19
    .line 20
    shr-int/lit8 p1, p1, 0x18

    .line 21
    .line 22
    and-int/lit16 p1, p1, 0xff

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method static zzk(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    long-to-int v0, p1

    .line 2
    int-to-byte v0, v0

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    ushr-long v0, p1, v0

    .line 9
    .line 10
    long-to-int v0, v0

    .line 11
    int-to-byte v0, v0

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    ushr-long v0, p1, v0

    .line 18
    .line 19
    long-to-int v0, v0

    .line 20
    int-to-byte v0, v0

    .line 21
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x18

    .line 25
    .line 26
    ushr-long v0, p1, v0

    .line 27
    .line 28
    long-to-int v0, v0

    .line 29
    int-to-byte v0, v0

    .line 30
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x20

    .line 34
    .line 35
    ushr-long v0, p1, v0

    .line 36
    .line 37
    long-to-int v0, v0

    .line 38
    int-to-byte v0, v0

    .line 39
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 40
    .line 41
    .line 42
    const/16 v0, 0x28

    .line 43
    .line 44
    ushr-long v0, p1, v0

    .line 45
    .line 46
    long-to-int v0, v0

    .line 47
    int-to-byte v0, v0

    .line 48
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 49
    .line 50
    .line 51
    const/16 v0, 0x30

    .line 52
    .line 53
    ushr-long v0, p1, v0

    .line 54
    .line 55
    long-to-int v0, v0

    .line 56
    int-to-byte v0, v0

    .line 57
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 58
    .line 59
    .line 60
    const/16 v0, 0x38

    .line 61
    .line 62
    ushr-long/2addr p1, v0

    .line 63
    long-to-int p1, p1

    .line 64
    int-to-byte p1, p1

    .line 65
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method static zzl(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    array-length v0, p1

    .line 8
    int-to-long v1, v0

    .line 9
    invoke-static {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqz;->zzk(Ljava/io/OutputStream;J)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static zzm(Lcom/google/android/gms/internal/ads/zzaqx;J)[B
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqx;->zza()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    cmp-long v0, p1, v1

    .line 12
    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    long-to-int v0, p1

    .line 16
    int-to-long v3, v0

    .line 17
    cmp-long v3, v3, p1

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    new-array p1, v0, [B

    .line 22
    .line 23
    new-instance p2, Ljava/io/DataInputStream;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "streamToBytes length="

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, ", maxLength="

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method private static zzn(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p0
.end method

.method private final zzo(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqw;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zza:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 10
    .line 11
    iget-wide v3, p2, Lcom/google/android/gms/internal/ads/zzaqw;->zza:J

    .line 12
    .line 13
    add-long/2addr v1, v3

    .line 14
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/google/android/gms/internal/ads/zzaqw;

    .line 22
    .line 23
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 24
    .line 25
    iget-wide v4, p2, Lcom/google/android/gms/internal/ads/zzaqw;->zza:J

    .line 26
    .line 27
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzaqw;->zza:J

    .line 28
    .line 29
    sub-long/2addr v4, v6

    .line 30
    add-long/2addr v2, v4

    .line 31
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 32
    .line 33
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final zzp(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zza:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqw;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 12
    .line 13
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzaqw;->zza:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private static final zzq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzapm;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zza:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-object v1

    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqz;->zzg(Ljava/lang/String;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaqx;

    .line 20
    .line 21
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 22
    .line 23
    new-instance v5, Ljava/io/FileInputStream;

    .line 24
    .line 25
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzaqx;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzaqx;)Lcom/google/android/gms/internal/ads/zzaqw;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_1

    .line 49
    .line 50
    const-string v0, "%s: key=%s, found=%s"

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    filled-new-array {v5, p1, v4}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzaqp;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqz;->zzp(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    .line 65
    .line 66
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-object v1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_3

    .line 73
    :catch_0
    move-exception v0

    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaqx;->zza()J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzaqz;->zzm(Lcom/google/android/gms/internal/ads/zzaqx;J)[B

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    new-instance v5, Lcom/google/android/gms/internal/ads/zzapm;

    .line 86
    .line 87
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzapm;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v4, v5, Lcom/google/android/gms/internal/ads/zzapm;->zza:[B

    .line 91
    .line 92
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzc:Ljava/lang/String;

    .line 93
    .line 94
    iput-object v4, v5, Lcom/google/android/gms/internal/ads/zzapm;->zzb:Ljava/lang/String;

    .line 95
    .line 96
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:J

    .line 97
    .line 98
    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/zzapm;->zzc:J

    .line 99
    .line 100
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zze:J

    .line 101
    .line 102
    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/zzapm;->zzd:J

    .line 103
    .line 104
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzf:J

    .line 105
    .line 106
    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/zzapm;->zze:J

    .line 107
    .line 108
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzg:J

    .line 109
    .line 110
    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/zzapm;->zzf:J

    .line 111
    .line 112
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzh:Ljava/util/List;

    .line 113
    .line 114
    new-instance v4, Ljava/util/TreeMap;

    .line 115
    .line 116
    sget-object v6, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 117
    .line 118
    invoke-direct {v4, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_2

    .line 130
    .line 131
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Lcom/google/android/gms/internal/ads/zzapv;

    .line 136
    .line 137
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzapv;->zza()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzapv;->zzb()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_2
    iput-object v4, v5, Lcom/google/android/gms/internal/ads/zzapm;->zzg:Ljava/util/Map;

    .line 150
    .line 151
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzapm;->zzh:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 156
    .line 157
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 158
    .line 159
    .line 160
    monitor-exit p0

    .line 161
    return-object v5

    .line 162
    :goto_1
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 163
    .line 164
    .line 165
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 166
    :goto_2
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v2, "%s: %s"

    .line 179
    .line 180
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaqp;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqz;->zzi(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 184
    .line 185
    .line 186
    monitor-exit p0

    .line 187
    return-object v1

    .line 188
    :goto_3
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 189
    throw p1
.end method

.method public final declared-synchronized zzb()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzc:Lcom/google/android/gms/internal/ads/zzaqy;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqy;->zza()Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "Unable to create cache dir %s"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqp;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    :goto_0
    array-length v2, v0

    .line 45
    if-ge v1, v2, :cond_1

    .line 46
    .line 47
    aget-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaqx;

    .line 54
    .line 55
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 56
    .line 57
    new-instance v7, Ljava/io/FileInputStream;

    .line 58
    .line 59
    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v5, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzaqx;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    :try_start_3
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzaqx;)Lcom/google/android/gms/internal/ads/zzaqw;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iput-wide v3, v6, Lcom/google/android/gms/internal/ads/zzaqw;->zza:J

    .line 73
    .line 74
    iget-object v3, v6, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {p0, v3, v6}, Lcom/google/android/gms/internal/ads/zzaqz;->zzo(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqw;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    .line 78
    .line 79
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_1
    move-exception v3

    .line 84
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 85
    .line 86
    .line 87
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    :catch_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    .line 90
    .line 91
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 97
    throw v0
.end method

.method public final declared-synchronized zzc(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzapm;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzapm;->zzf:J

    .line 11
    .line 12
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzapm;->zze:J

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqz;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method public final declared-synchronized zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapm;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v2, p2

    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 8
    .line 9
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzapm;->zza:[B

    .line 10
    .line 11
    array-length v5, v5

    .line 12
    int-to-long v6, v5

    .line 13
    add-long/2addr v3, v6

    .line 14
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zzd:I

    .line 15
    .line 16
    int-to-long v7, v6

    .line 17
    cmp-long v3, v3, v7

    .line 18
    .line 19
    const v4, 0x3f666666    # 0.9f

    .line 20
    .line 21
    .line 22
    if-lez v3, :cond_0

    .line 23
    .line 24
    int-to-float v3, v5

    .line 25
    int-to-float v5, v6

    .line 26
    mul-float/2addr v5, v4

    .line 27
    cmpl-float v3, v3, v5

    .line 28
    .line 29
    if-gtz v3, :cond_a

    .line 30
    .line 31
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaqz;->zzg(Ljava/lang/String;)Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const/4 v5, 0x0

    .line 36
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    .line 37
    .line 38
    new-instance v7, Ljava/io/FileOutputStream;

    .line 39
    .line 40
    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    .line 45
    .line 46
    new-instance v7, Lcom/google/android/gms/internal/ads/zzaqw;

    .line 47
    .line 48
    invoke-direct {v7, v0, v2}, Lcom/google/android/gms/internal/ads/zzaqw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapm;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    const v8, 0x20150306

    .line 52
    .line 53
    .line 54
    :try_start_2
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzaqz;->zzj(Ljava/io/OutputStream;I)V

    .line 55
    .line 56
    .line 57
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzaqz;->zzl(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzaqw;->zzc:Ljava/lang/String;

    .line 63
    .line 64
    if-nez v8, :cond_1

    .line 65
    .line 66
    const-string v8, ""

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto/16 :goto_7

    .line 71
    .line 72
    :catch_0
    move-exception v0

    .line 73
    goto/16 :goto_5

    .line 74
    .line 75
    :cond_1
    :goto_0
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzaqz;->zzl(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:J

    .line 79
    .line 80
    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzaqz;->zzk(Ljava/io/OutputStream;J)V

    .line 81
    .line 82
    .line 83
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzaqw;->zze:J

    .line 84
    .line 85
    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzaqz;->zzk(Ljava/io/OutputStream;J)V

    .line 86
    .line 87
    .line 88
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzaqw;->zzf:J

    .line 89
    .line 90
    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzaqz;->zzk(Ljava/io/OutputStream;J)V

    .line 91
    .line 92
    .line 93
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzaqw;->zzg:J

    .line 94
    .line 95
    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzaqz;->zzk(Ljava/io/OutputStream;J)V

    .line 96
    .line 97
    .line 98
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzaqw;->zzh:Ljava/util/List;

    .line 99
    .line 100
    if-eqz v8, :cond_2

    .line 101
    .line 102
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/ads/zzaqz;->zzj(Ljava/io/OutputStream;I)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-eqz v9, :cond_3

    .line 118
    .line 119
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    check-cast v9, Lcom/google/android/gms/internal/ads/zzapv;

    .line 124
    .line 125
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzapv;->zza()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-static {v6, v10}, Lcom/google/android/gms/internal/ads/zzaqz;->zzl(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzapv;->zzb()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/ads/zzaqz;->zzl(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzaqz;->zzj(Ljava/io/OutputStream;I)V

    .line 141
    .line 142
    .line 143
    :cond_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .line 145
    .line 146
    :try_start_3
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzapm;->zza:[B

    .line 147
    .line 148
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 155
    .line 156
    .line 157
    move-result-wide v8

    .line 158
    iput-wide v8, v7, Lcom/google/android/gms/internal/ads/zzaqw;->zza:J

    .line 159
    .line 160
    invoke-direct {p0, v0, v7}, Lcom/google/android/gms/internal/ads/zzaqz;->zzo(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqw;)V

    .line 161
    .line 162
    .line 163
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 164
    .line 165
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zzd:I

    .line 166
    .line 167
    int-to-long v8, v0

    .line 168
    cmp-long v2, v6, v8

    .line 169
    .line 170
    if-gez v2, :cond_4

    .line 171
    .line 172
    goto/16 :goto_6

    .line 173
    .line 174
    :cond_4
    sget-boolean v2, Lcom/google/android/gms/internal/ads/zzaqp;->zzb:Z

    .line 175
    .line 176
    if-eqz v2, :cond_5

    .line 177
    .line 178
    const-string v6, "Pruning old cache entries."

    .line 179
    .line 180
    new-array v7, v5, [Ljava/lang/Object;

    .line 181
    .line 182
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzaqp;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_5
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 186
    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 188
    .line 189
    .line 190
    move-result-wide v8

    .line 191
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zza:Ljava/util/Map;

    .line 192
    .line 193
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    move v11, v5

    .line 202
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    if-eqz v12, :cond_8

    .line 207
    .line 208
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    check-cast v12, Ljava/util/Map$Entry;

    .line 213
    .line 214
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    check-cast v12, Lcom/google/android/gms/internal/ads/zzaqw;

    .line 219
    .line 220
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {p0, v13}, Lcom/google/android/gms/internal/ads/zzaqz;->zzg(Ljava/lang/String;)Ljava/io/File;

    .line 223
    .line 224
    .line 225
    move-result-object v14

    .line 226
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    if-eqz v14, :cond_6

    .line 231
    .line 232
    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 233
    .line 234
    move-wide/from16 p1, v6

    .line 235
    .line 236
    iget-wide v5, v12, Lcom/google/android/gms/internal/ads/zzaqw;->zza:J

    .line 237
    .line 238
    sub-long/2addr v13, v5

    .line 239
    iput-wide v13, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_6
    move-wide/from16 p1, v6

    .line 243
    .line 244
    const-string v5, "Could not delete cache entry for key=%s, filename=%s"

    .line 245
    .line 246
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzaqz;->zzq(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    filled-new-array {v13, v6}, [Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzaqp;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 258
    .line 259
    .line 260
    add-int/lit8 v11, v11, 0x1

    .line 261
    .line 262
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 263
    .line 264
    long-to-float v5, v5

    .line 265
    int-to-float v6, v0

    .line 266
    mul-float/2addr v6, v4

    .line 267
    cmpg-float v5, v5, v6

    .line 268
    .line 269
    if-gez v5, :cond_7

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_7
    move-wide/from16 v6, p1

    .line 273
    .line 274
    const/4 v5, 0x0

    .line 275
    goto :goto_2

    .line 276
    :cond_8
    move-wide/from16 p1, v6

    .line 277
    .line 278
    :goto_4
    if-eqz v2, :cond_a

    .line 279
    .line 280
    const-string v0, "pruned %d files, %d bytes, %d ms"

    .line 281
    .line 282
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 287
    .line 288
    move-wide/from16 v6, p1

    .line 289
    .line 290
    sub-long/2addr v4, v6

    .line 291
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 296
    .line 297
    .line 298
    move-result-wide v5

    .line 299
    sub-long/2addr v5, v8

    .line 300
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaqp;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    .line 310
    .line 311
    monitor-exit p0

    .line 312
    return-void

    .line 313
    :goto_5
    :try_start_4
    const-string v2, "%s"

    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaqp;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 327
    .line 328
    .line 329
    const-string v0, "Failed to write header for %s"

    .line 330
    .line 331
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaqp;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    new-instance v0, Ljava/io/IOException;

    .line 343
    .line 344
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 345
    .line 346
    .line 347
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 348
    :catch_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-nez v0, :cond_9

    .line 353
    .line 354
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    const-string v2, "Could not clean up file %s"

    .line 363
    .line 364
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaqp;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    :cond_9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zzc:Lcom/google/android/gms/internal/ads/zzaqy;

    .line 368
    .line 369
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqy;->zza()Ljava/io/File;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-nez v0, :cond_a

    .line 378
    .line 379
    const/4 v2, 0x0

    .line 380
    new-array v0, v2, [Ljava/lang/Object;

    .line 381
    .line 382
    const-string v2, "Re-initializing cache after external clearing."

    .line 383
    .line 384
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaqp;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zza:Ljava/util/Map;

    .line 388
    .line 389
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 390
    .line 391
    .line 392
    const-wide/16 v2, 0x0

    .line 393
    .line 394
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:J

    .line 395
    .line 396
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqz;->zzb()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 397
    .line 398
    .line 399
    monitor-exit p0

    .line 400
    return-void

    .line 401
    :cond_a
    :goto_6
    monitor-exit p0

    .line 402
    return-void

    .line 403
    :goto_7
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 404
    throw v0
.end method

.method public final zzg(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqz;->zzc:Lcom/google/android/gms/internal/ads/zzaqy;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqy;->zza()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaqz;->zzq(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method public final declared-synchronized zzi(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqz;->zzg(Ljava/lang/String;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqz;->zzp(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaqz;->zzq(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqp;->zza(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method

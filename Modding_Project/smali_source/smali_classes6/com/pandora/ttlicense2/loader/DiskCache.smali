.class public Lcom/pandora/ttlicense2/loader/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;,
        Lcom/pandora/ttlicense2/loader/DiskCache$InputStreamWriter;,
        Lcom/pandora/ttlicense2/loader/DiskCache$Writer;
    }
.end annotation


# static fields
.field private static final keyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final directory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/pandora/ttlicense2/loader/DiskCache;->keyMap:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/DiskCache;->directory:Ljava/io/File;

    .line 5
    .line 6
    return-void
.end method

.method public static calLength(Ljava/io/File;)J
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, -0x1

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    array-length v2, p0

    .line 21
    if-lez v2, :cond_2

    .line 22
    .line 23
    array-length v2, p0

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    if-ge v3, v2, :cond_2

    .line 26
    .line 27
    aget-object v4, p0, v3

    .line 28
    .line 29
    invoke-static {v4}, Lcom/pandora/ttlicense2/loader/DiskCache;->calLength(Ljava/io/File;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    add-long/2addr v0, v4

    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    :cond_2
    return-wide v0
.end method

.method public static delete(Ljava/io/File;)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    if-lez v1, :cond_1

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_1

    .line 22
    .line 23
    aget-object v3, v0, v2

    .line 24
    .line 25
    invoke-static {v3}, Lcom/pandora/ttlicense2/loader/DiskCache;->delete(Ljava/io/File;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static fileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/pandora/ttlicense2/loader/DiskCache;->keyMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/pandora/ttlicense2/loader/DiskCache;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ".lic"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object v1
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/math/BigInteger;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x10

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/DiskCache;->directory:Ljava/io/File;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/DiskCache;->delete(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/DiskCache;->fileName(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/DiskCache;->directory:Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    cmp-long p1, v1, v3

    .line 25
    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/pandora/ttlicense2/loader/DiskCache$Writer;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pandora/ttlicense2/loader/DiskCache$Writer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/DiskCache;->fileName(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/DiskCache;->directory:Ljava/io/File;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, ".tmp"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/DiskCache;->delete(Ljava/io/File;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/DiskCache;->directory:Ljava/io/File;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 44
    .line 45
    .line 46
    invoke-interface {p2, v0}, Lcom/pandora/ttlicense2/loader/DiskCache$Writer;->write(Ljava/io/File;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    const-wide/16 v3, 0x0

    .line 60
    .line 61
    cmp-long p2, v1, v3

    .line 62
    .line 63
    if-lez p2, :cond_3

    .line 64
    .line 65
    new-instance p2, Ljava/io/File;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/DiskCache;->directory:Ljava/io/File;

    .line 68
    .line 69
    invoke-direct {p2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-static {p2}, Lcom/pandora/ttlicense2/loader/DiskCache;->delete(Ljava/io/File;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, " -> "

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p2, " error!"

    .line 107
    .line 108
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 120
    .line 121
    .line 122
    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/DiskCache;->fileName(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/DiskCache;->directory:Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/DiskCache;->delete(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

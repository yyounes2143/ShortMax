.class Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;
.super Ljava/lang/Object;
.source "LicenseReader.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/LicenseReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileReadTask"
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final callback:Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;

.field private volatile canceled:Z

.field private final diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

.field private final request:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

.field private result:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;


# direct methods
.method public constructor <init>(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/DiskCache;Landroid/content/res/AssetManager;Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->assetManager:Landroid/content/res/AssetManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->callback:Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic access$000(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)Lcom/pandora/ttlicense2/loader/LicenseReader$Result;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->result:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 2
    .line 3
    return-object p0
.end method

.method private inputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/pandora/ttlicense2/utils/Scheme;->ofUri(Ljava/lang/String;)Lcom/pandora/ttlicense2/utils/Scheme;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/pandora/ttlicense2/loader/LicenseReader$2;->$SwitchMap$com$pandora$ttlicense2$utils$Scheme:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-ne v0, v2, :cond_2

    .line 18
    .line 19
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const-string p1, "/"

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->assetManager:Landroid/content/res/AssetManager;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "Can\'t parse license real assets path! "

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "Unexpected scheme! "

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_3
    new-instance v0, Ljava/io/FileInputStream;

    .line 99
    .line 100
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object v0
.end method

.method private read(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->inputStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x1000

    .line 12
    .line 13
    :try_start_2
    new-array v0, v0, [B

    .line 14
    .line 15
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, -0x1

    .line 20
    if-eq v2, v3, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_2

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const-string/jumbo v0, "utf-8"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 39
    .line 40
    .line 41
    :catch_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 42
    .line 43
    .line 44
    :catch_2
    return-object v0

    .line 45
    :catchall_1
    move-exception v1

    .line 46
    move-object v4, v1

    .line 47
    move-object v1, v0

    .line 48
    move-object v0, v4

    .line 49
    goto :goto_2

    .line 50
    :catch_3
    move-exception v1

    .line 51
    move-object v4, v1

    .line 52
    move-object v1, v0

    .line 53
    move-object v0, v4

    .line 54
    goto :goto_1

    .line 55
    :catchall_2
    move-exception p1

    .line 56
    move-object v1, v0

    .line 57
    move-object v0, p1

    .line 58
    move-object p1, v1

    .line 59
    goto :goto_2

    .line 60
    :catch_4
    move-exception p1

    .line 61
    move-object v1, v0

    .line 62
    move-object v0, p1

    .line 63
    move-object p1, v1

    .line 64
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    :goto_2
    if-eqz p1, :cond_1

    .line 66
    .line 67
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 68
    .line 69
    .line 70
    :catch_5
    :cond_1
    if-eqz v1, :cond_2

    .line 71
    .line 72
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 73
    .line 74
    .line 75
    :catch_6
    :cond_2
    throw v0
.end method

.method private readCachedLicenseFile(Ljava/lang/String;)Lcom/pandora/ttlicense2/LicenseFile;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->diskCache:Lcom/pandora/ttlicense2/loader/DiskCache;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/pandora/ttlicense2/loader/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    const-wide/16 v6, 0x0

    .line 32
    .line 33
    cmp-long v0, v4, v6

    .line 34
    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->readLicenseFile(Ljava/lang/String;)Lcom/pandora/ttlicense2/LicenseFile;

    .line 52
    .line 53
    .line 54
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    sub-long/2addr v4, v2

    .line 65
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "loadCache"

    .line 74
    .line 75
    invoke-static {p0, v0, p1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-object v1
.end method

.method private readLicenseFile(Ljava/lang/String;)Lcom/pandora/ttlicense2/LicenseFile;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->read(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseFile;->parse(Ljava/lang/String;)Lcom/pandora/ttlicense2/LicenseFile;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/io/IOException;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method


# virtual methods
.method public cancel(ZZLjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->canceled:Z

    .line 3
    .line 4
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->canceled:Z

    .line 2
    .line 3
    return v0
.end method

.method public load(Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->readLicenseFile(Ljava/lang/String;)Lcom/pandora/ttlicense2/LicenseFile;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    sub-long/2addr v2, v0

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "load"

    .line 27
    .line 28
    invoke-static {p0, v1, v0}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 32
    .line 33
    iget-boolean v0, v0, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uploadLog:Z

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/pandora/ttlicense2/License;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/LicenseFile;->getContent()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Lcom/pandora/ttlicense2/License;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/pandora/ttlicense2/LicenseLogger;->getInstance()Lcom/pandora/ttlicense2/LicenseLogger;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Lcom/pandora/ttlicense2/LicenseLogger;->upLoadLicenseLog(Lcom/pandora/ttlicense2/License;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 54
    .line 55
    iget-boolean v0, v0, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->ignoreCache:Z

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/LicenseFile;->isUpdateAble()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/LicenseFile;->cacheKey()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->readCachedLicenseFile(Ljava/lang/String;)Lcom/pandora/ttlicense2/LicenseFile;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 75
    :goto_0
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/pandora/ttlicense2/LicenseFile;->getFileVersion()J

    .line 78
    .line 79
    .line 80
    move-result-wide v1

    .line 81
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/LicenseFile;->getFileVersion()J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    cmp-long v1, v1, v3

    .line 86
    .line 87
    if-lez v1, :cond_2

    .line 88
    .line 89
    new-instance p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    invoke-direct {p1, v1, v0, v2}, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;-><init>(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/LicenseFile;Z)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->result:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    new-instance v0, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-direct {v0, v1, p1, v2}, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;-><init>(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/LicenseFile;Z)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->result:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 109
    .line 110
    :goto_1
    iget-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->callback:Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;

    .line 111
    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->request:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->result:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 117
    .line 118
    invoke-interface {p1, v0, v1}, Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;->onReadCompleteSync(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$Result;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    return-void
.end method

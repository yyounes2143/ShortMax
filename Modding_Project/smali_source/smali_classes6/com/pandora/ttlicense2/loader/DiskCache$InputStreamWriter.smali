.class public Lcom/pandora/ttlicense2/loader/DiskCache$InputStreamWriter;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStreamWriter"
.end annotation


# instance fields
.field private final contentLength:J

.field private final data:Ljava/io/InputStream;

.field private final listener:Lcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/DiskCache$InputStreamWriter;->data:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/pandora/ttlicense2/loader/DiskCache$InputStreamWriter;->contentLength:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/pandora/ttlicense2/loader/DiskCache$InputStreamWriter;->listener:Lcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public write(Ljava/io/File;)V
    .locals 14
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 7
    .line 8
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    move-wide v6, v3

    .line 14
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/pandora/ttlicense2/loader/DiskCache$InputStreamWriter;->data:Ljava/io/InputStream;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, -0x1

    .line 21
    if-eq p1, v1, :cond_1

    .line 22
    .line 23
    int-to-long v3, p1

    .line 24
    add-long/2addr v6, v3

    .line 25
    iget-object v8, p0, Lcom/pandora/ttlicense2/loader/DiskCache$InputStreamWriter;->listener:Lcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;

    .line 26
    .line 27
    if-eqz v8, :cond_0

    .line 28
    .line 29
    iget-wide v11, p0, Lcom/pandora/ttlicense2/loader/DiskCache$InputStreamWriter;->contentLength:J

    .line 30
    .line 31
    const/4 v13, 0x0

    .line 32
    move-wide v9, v6

    .line 33
    invoke-interface/range {v8 .. v13}, Lcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;->update(JJZ)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    move-object v1, v2

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    :goto_1
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v2, v0, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v5, p0, Lcom/pandora/ttlicense2/loader/DiskCache$InputStreamWriter;->listener:Lcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    iget-wide v8, p0, Lcom/pandora/ttlicense2/loader/DiskCache$InputStreamWriter;->contentLength:J

    .line 50
    .line 51
    const/4 v10, 0x1

    .line 52
    invoke-interface/range {v5 .. v10}, Lcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;->update(JJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    .line 57
    .line 58
    :catch_0
    return-void

    .line 59
    :catchall_1
    move-exception p1

    .line 60
    :goto_2
    if-eqz v1, :cond_3

    .line 61
    .line 62
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 63
    .line 64
    .line 65
    :catch_1
    :cond_3
    throw p1
.end method

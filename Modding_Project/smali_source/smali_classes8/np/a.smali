.class Lnp/a;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# direct methods
.method static a(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, p2}, Lnp/b;->a(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-static {p0}, Lio/bidmachine/core/g;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v1, Ljava/io/File;

    .line 11
    .line 12
    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    cmp-long p0, p0, v2

    .line 28
    .line 29
    if-lez p0, :cond_0

    .line 30
    .line 31
    invoke-static {v1}, Lnp/a;->b(Ljava/io/File;)Z

    .line 32
    .line 33
    .line 34
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    invoke-static {p2}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    move-object v0, p2

    .line 43
    goto :goto_4

    .line 44
    :catch_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :try_start_2
    new-instance p0, Ljava/io/FileOutputStream;

    .line 47
    .line 48
    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 49
    .line 50
    .line 51
    const/16 p1, 0x400

    .line 52
    .line 53
    new-array p1, p1, [B

    .line 54
    .line 55
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-lez v2, :cond_1

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0, p1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p0}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lnp/a;->b(Ljava/io/File;)Z

    .line 70
    .line 71
    .line 72
    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    invoke-static {p2}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_2
    :goto_1
    invoke-static {p2}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    goto :goto_4

    .line 85
    :catch_1
    move-exception p0

    .line 86
    move-object p2, v0

    .line 87
    :goto_2
    :try_start_3
    invoke-static {p0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :goto_3
    return-object v0

    .line 92
    :goto_4
    invoke-static {v0}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method private static b(Ljava/io/File;)Z
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {p0, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

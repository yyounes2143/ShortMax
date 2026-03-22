.class public final Lhb/g0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "hmsSdk"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    new-instance p0, Lhb/x;

    .line 12
    .line 13
    const/16 v2, 0x400

    .line 14
    .line 15
    invoke-direct {p0, v2}, Lhb/x;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-array v2, v2, [B

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, -0x1

    .line 25
    if-eq v4, v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v2, v4}, Lhb/x;->a([BI)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_4

    .line 33
    :cond_0
    invoke-virtual {p0}, Lhb/x;->c()I

    .line 34
    .line 35
    .line 36
    move-result v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    invoke-static {v3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0}, Lhb/x;->b()[B

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v4, "UTF-8"

    .line 50
    .line 51
    invoke-direct {v2, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :catch_0
    move-object v2, v3

    .line 59
    goto :goto_1

    .line 60
    :catch_1
    move-object v2, v3

    .line 61
    goto :goto_2

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    goto :goto_3

    .line 64
    :catch_2
    :goto_1
    :try_start_3
    const-string p0, "getInfoFromFile(): stream.read or new string exception"

    .line 65
    .line 66
    invoke-static {v0, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :catch_3
    :goto_2
    :try_start_4
    const-string p0, "getInfoFromFile(): No files need to be read"

    .line 74
    .line 75
    invoke-static {v0, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 79
    .line 80
    .line 81
    return-object v1

    .line 82
    :goto_3
    move-object v3, v2

    .line 83
    :goto_4
    invoke-static {v3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x400

    .line 7
    .line 8
    :try_start_0
    new-array v1, v1, [B

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-string p0, "UTF-8"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {v0}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :goto_1
    invoke-static {v0}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public static c(Ljava/io/Closeable;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const-string p0, "hmsSdk"

    .line 8
    .line 9
    const-string v0, "closeQuietly(): Exception when closing the closeable!"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    return-void
.end method

.method public static d(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "hmsSdk"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 5
    .line 6
    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    .line 9
    :try_start_1
    const-string p0, "UTF-8"

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_4

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    move-object v1, v2

    .line 24
    goto :goto_5

    .line 25
    :catch_0
    move-object v1, v2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-object v1, v2

    .line 28
    goto :goto_2

    .line 29
    :catchall_1
    move-exception p0

    .line 30
    goto :goto_5

    .line 31
    :catch_2
    :goto_0
    :try_start_2
    const-string p0, "saveInfoToFile(): io exc from write info to file!"

    .line 32
    .line 33
    :goto_1
    move-object v2, v1

    .line 34
    goto :goto_3

    .line 35
    :catch_3
    :goto_2
    const-string p0, "saveInfoToFile(): No files need to be read"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :goto_3
    :try_start_3
    invoke-static {v0, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    .line 40
    .line 41
    :goto_4
    invoke-static {v2}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_5
    invoke-static {v1}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method private static e(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const-string p0, "hmsSdk"

    .line 8
    .line 9
    const-string v0, "closeStream(): Exception: close OutputStream error!"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    return-void
.end method

.method public static f(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 1
    const-string v0, "hmsSdk"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const-string v1, "closeQuietly(): Exception when connHttp.getInputStream()!,There may be no network, or no INTERNET permission"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 17
    .line 18
    .line 19
    const-string p0, " connHttp disconnect"

    .line 20
    .line 21
    invoke-static {v0, p0}, Lhb/f1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static g([B)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/zip/Deflater;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/zip/Deflater;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 15
    .line 16
    .line 17
    const/16 p0, 0x400

    .line 18
    .line 19
    new-array p0, p0, [B

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v0, p0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lhb/g0;->e(Ljava/io/OutputStream;)V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

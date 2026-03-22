.class public final Lcom/ss/ttm/player/TTCrashUtil;
.super Ljava/lang/Object;
.source "TTCrashUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addDebugTrackInfo(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/ss/ttm/player/TTCrashUtil;->getDebugTrackFilePath(JLjava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p4, p3}, Lcom/ss/ttm/player/TTCrashUtil;->appendTrackInfo(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static addTrackInfo(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/ss/ttm/player/TTCrashUtil;->getTrackFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1, p3}, Lcom/ss/ttm/player/TTCrashUtil;->appendTrackInfo(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static addTrackInfo(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/ss/ttm/player/TTCrashUtil;->getTrackFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4, p3}, Lcom/ss/ttm/player/TTCrashUtil;->appendTrackInfo(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private static appendTrackInfo(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    .line 3
    .line 4
    invoke-direct {v1, p0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_3

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    goto :goto_3

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    move-object v0, v1

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-object v0, v1

    .line 23
    goto :goto_2

    .line 24
    :catchall_1
    move-exception p0

    .line 25
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catch_2
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_1
    throw p0

    .line 34
    :catch_3
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 35
    .line 36
    .line 37
    :goto_3
    return-void
.end method

.method public static checkLogDir(Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "%s/ttplayer_logs"

    .line 4
    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const-string v1, ","

    .line 21
    .line 22
    const-string/jumbo v2, "ttmp"

    .line 23
    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    array-length v3, p0

    .line 40
    const/4 v4, 0x0

    .line 41
    :goto_0
    if-ge v4, v3, :cond_1

    .line 42
    .line 43
    aget-object v5, p0, v4

    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_0

    .line 50
    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v8, "delete file:"

    .line 57
    .line 58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_3

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v4, "delete dir file:"

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-nez p0, :cond_3

    .line 126
    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v4, "mkdir:"

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    :cond_3
    :goto_1
    return-void
.end method

.method public static checkTrackDir(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "%s/ttplayer_logs"

    .line 4
    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public static compress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x2800

    .line 7
    .line 8
    new-array v1, p1, [B

    .line 9
    .line 10
    :goto_0
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, -0x1

    .line 16
    if-eq v3, v4, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static final copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    new-instance p1, Ljava/io/File;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    new-instance p2, Ljava/io/File;

    .line 35
    .line 36
    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_3

    .line 62
    .line 63
    return v1

    .line 64
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 65
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    .line 66
    .line 67
    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 68
    .line 69
    .line 70
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 71
    .line 72
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    .line 75
    const/16 p0, 0x400

    .line 76
    .line 77
    :try_start_2
    new-array p0, p0, [B

    .line 78
    .line 79
    :goto_1
    invoke-virtual {p2, p0}, Ljava/io/InputStream;->read([B)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    const/4 v3, -0x1

    .line 84
    if-eq p1, v3, :cond_4

    .line 85
    .line 86
    invoke-virtual {v2, p0, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_4

    .line 92
    :catch_0
    move-object p0, v2

    .line 93
    goto :goto_8

    .line 94
    :catch_1
    move-object p0, v2

    .line 95
    goto :goto_c

    .line 96
    :cond_4
    if-eqz p3, :cond_5

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .line 100
    .line 101
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catch_2
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :goto_2
    const/4 p0, 0x1

    .line 113
    return p0

    .line 114
    :catchall_1
    move-exception p1

    .line 115
    move-object v2, p0

    .line 116
    :goto_3
    move-object p0, p1

    .line 117
    goto :goto_4

    .line 118
    :catchall_2
    move-exception p1

    .line 119
    move-object p2, p0

    .line 120
    move-object v2, p2

    .line 121
    goto :goto_3

    .line 122
    :catch_3
    move-object p2, p0

    .line 123
    goto :goto_8

    .line 124
    :catch_4
    move-object p2, p0

    .line 125
    goto :goto_c

    .line 126
    :goto_4
    if-eqz v2, :cond_6

    .line 127
    .line 128
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :catch_5
    move-exception p1

    .line 133
    goto :goto_6

    .line 134
    :cond_6
    :goto_5
    if-eqz p2, :cond_7

    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 137
    .line 138
    .line 139
    goto :goto_7

    .line 140
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    :cond_7
    :goto_7
    throw p0

    .line 144
    :catch_6
    :goto_8
    if-eqz p0, :cond_8

    .line 145
    .line 146
    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 147
    .line 148
    .line 149
    goto :goto_9

    .line 150
    :catch_7
    move-exception p0

    .line 151
    goto :goto_a

    .line 152
    :cond_8
    :goto_9
    if-eqz p2, :cond_9

    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 155
    .line 156
    .line 157
    goto :goto_b

    .line 158
    :goto_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_9
    :goto_b
    return v1

    .line 162
    :catch_8
    :goto_c
    if-eqz p0, :cond_a

    .line 163
    .line 164
    :try_start_6
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 165
    .line 166
    .line 167
    goto :goto_d

    .line 168
    :catch_9
    move-exception p0

    .line 169
    goto :goto_e

    .line 170
    :cond_a
    :goto_d
    if-eqz p2, :cond_b

    .line 171
    .line 172
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 173
    .line 174
    .line 175
    goto :goto_f

    .line 176
    :goto_e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    .line 178
    .line 179
    :cond_b
    :goto_f
    return v1
.end method

.method public static deleteCrashFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static deleteDebugTrackFile(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/ss/ttm/player/TTCrashUtil;->getDebugTrackFilePath(JLjava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/ss/ttm/player/TTCrashUtil;->deleteTrackFile(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static deleteTrackFile(JLjava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/ss/ttm/player/TTCrashUtil;->getTrackFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/ttm/player/TTCrashUtil;->deleteTrackFile(Ljava/lang/String;)V

    return-void
.end method

.method private static deleteTrackFile(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static existLogsFile(JLjava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Ljava/io/File;

    .line 6
    .line 7
    const-string v0, "%s/ttplayer_logs"

    .line 8
    .line 9
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    return v0

    .line 40
    :cond_0
    array-length p2, p1

    .line 41
    move v1, v0

    .line 42
    :goto_0
    if-ge v1, p2, :cond_2

    .line 43
    .line 44
    aget-object v2, p1, v1

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "<TTCrashUtils,existLogsFile,375>file:"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, ",pname:"

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string/jumbo v4, "ttmp"

    .line 76
    .line 77
    .line 78
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_1

    .line 88
    .line 89
    const/4 p0, 0x1

    .line 90
    return p0

    .line 91
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    return v0
.end method

.method public static existsCrashFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static final existsCrashFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Lcom/ss/ttm/player/TTPlayerConfiger;->getAppCrashFilePath(Landroid/content/Context;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    return-object v2

    .line 30
    :cond_1
    invoke-static {p0}, Lcom/ss/ttm/player/TTPlayerConfiger;->getAppCrashFilePath2(Landroid/content/Context;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    new-instance v1, Ljava/io/File;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    invoke-static {p0}, Lcom/ss/ttm/player/TTPlayerConfiger;->getPlugerCrashFilePath(Landroid/content/Context;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    new-instance v1, Ljava/io/File;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_3
    invoke-static {p0}, Lcom/ss/ttm/player/TTPlayerConfiger;->getExternalStorageDirectoryCrashFilePath(Landroid/content/Context;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-eqz p0, :cond_4

    .line 71
    .line 72
    new-instance v0, Ljava/io/File;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    move-object v2, p0

    .line 85
    :goto_0
    return-object v2
.end method

.method public static existsTrackFile(JLjava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/ss/ttm/player/TTCrashUtil;->getTrackFilePath(JLjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static getBase64SampleCrash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static getCrashFileContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p0, "context or path is null.\r\n"

    .line 7
    .line 8
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v2, "\r\n"

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string p0, "file not exist.path:"

    .line 26
    .line 27
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    cmp-long p1, v3, v5

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    const-string p0, "file size is zore."

    .line 48
    .line 49
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    .line 60
    .line 61
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    .line 65
    .line 66
    :try_start_1
    invoke-static {v1, p1}, Lcom/ss/ttm/player/TTCrashUtil;->compress(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .line 83
    .line 84
    return-object p0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    goto :goto_0

    .line 87
    :catch_1
    move-exception p0

    .line 88
    move-object v1, v0

    .line 89
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_2
    move-exception v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 103
    .line 104
    .line 105
    :catch_3
    const-string p1, "gzip file is error.error:"

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    return-object v0
.end method

.method private static getDebugTrackFilePath(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "%s/ttplayer_logs/%d_d.log"

    .line 12
    .line 13
    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static getTrackFileInfos(Ljava/io/File;Ljava/lang/StringBuilder;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x400

    .line 2
    new-array v3, v1, [C

    .line 3
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :cond_1
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/io/Reader;->read([C)I

    move-result p0

    if-lez p0, :cond_2

    .line 5
    invoke-virtual {p1, v3, v2, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    if-ge p0, v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_3

    .line 7
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 8
    :catch_0
    :cond_3
    const-string/jumbo v0, "track message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method private static getTrackFileInfos(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 5

    const/4 v0, 0x0

    .line 9
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 11
    const-string v1, "path"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not exists.\r\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/16 p0, 0x400

    .line 12
    new-array v2, p0, [C

    .line 13
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_1
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/io/Reader;->read([C)I

    move-result v0

    if-lez v0, :cond_2

    .line 15
    invoke-virtual {p1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    if-ge v0, p0, :cond_1

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v0, v4

    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_3

    .line 17
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    :catch_0
    :cond_3
    const-string/jumbo v0, "track message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getTrackFilePath(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "%s/ttplayer_logs/%d.log"

    .line 12
    .line 13
    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final moveFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/ss/ttm/player/TTCrashUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static moveTrackFile(JJLjava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p0, p1, p4}, Lcom/ss/ttm/player/TTCrashUtil;->getTrackFilePath(JLjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/io/File;

    .line 11
    .line 12
    invoke-static {p2, p3, p4}, Lcom/ss/ttm/player/TTCrashUtil;->getTrackFilePath(JLjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public static readDebugTrackInfos(JLjava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/ss/ttm/player/TTCrashUtil;->getDebugTrackFilePath(JLjava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p3}, Lcom/ss/ttm/player/TTCrashUtil;->getTrackFileInfos(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static readLogsInfo(JLjava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 4

    .line 1
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Ljava/io/File;

    .line 6
    .line 7
    const-string v0, "%s/ttplayer_logs"

    .line 8
    .line 9
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    return v0

    .line 40
    :cond_0
    array-length p2, p1

    .line 41
    move v1, v0

    .line 42
    :goto_0
    if-ge v1, p2, :cond_3

    .line 43
    .line 44
    aget-object v2, p1, v1

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    invoke-static {v2, p3}, Lcom/ss/ttm/player/TTCrashUtil;->getTrackFileInfos(Ljava/io/File;Ljava/lang/StringBuilder;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_1

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string p2, "delete file:"

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p2, ","

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string/jumbo p2, "ttmp"

    .line 100
    .line 101
    .line 102
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :cond_1
    return p0

    .line 106
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    return v0
.end method

.method public static readTrackInfos(JLjava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/ss/ttm/player/TTCrashUtil;->getTrackFilePath(JLjava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p3}, Lcom/ss/ttm/player/TTCrashUtil;->getTrackFileInfos(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static final saveException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 20
    .line 21
    .line 22
    :try_start_1
    new-instance v0, Ljava/io/PrintStream;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    :try_start_2
    const-string p1, "EXCE"

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->write([B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 40
    .line 41
    .line 42
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    move-object p1, v0

    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-object p1, v0

    .line 55
    goto :goto_2

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    goto :goto_0

    .line 58
    :catchall_2
    move-exception p0

    .line 59
    move-object v1, p1

    .line 60
    goto :goto_0

    .line 61
    :catch_2
    move-object v1, p1

    .line 62
    goto :goto_2

    .line 63
    :goto_0
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/io/PrintStream;->close()V

    .line 66
    .line 67
    .line 68
    :cond_2
    if-eqz v1, :cond_3

    .line 69
    .line 70
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_3
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_1
    throw p0

    .line 79
    :catch_4
    :goto_2
    if-eqz p1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/io/PrintStream;->close()V

    .line 82
    .line 83
    .line 84
    :cond_4
    if-eqz v1, :cond_5

    .line 85
    .line 86
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_3
    return-void
.end method

.method public static saveLowMemoryInfo(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    .line 18
    .line 19
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "LOWM\r\nrecv low memory warring info.level:"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    move-object p1, v1

    .line 50
    goto :goto_2

    .line 51
    :catch_1
    move-exception p0

    .line 52
    move-object p1, v1

    .line 53
    goto :goto_0

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :catch_2
    move-exception p0

    .line 57
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    :try_start_4
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_1
    return-void

    .line 66
    :goto_2
    if-eqz p1, :cond_2

    .line 67
    .line 68
    :try_start_5
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :catch_3
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_3
    throw p0
.end method

.method public static saveStopInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    .line 18
    .line 19
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "STOP recv stop info:"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ".time:"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/ss/ttm/utils/AVTime;->getFormatNow()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "\r\n"

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :catch_1
    move-exception p0

    .line 68
    goto :goto_0

    .line 69
    :catchall_1
    move-exception p1

    .line 70
    move-object v1, p0

    .line 71
    move-object p0, p1

    .line 72
    goto :goto_2

    .line 73
    :catch_2
    move-exception p1

    .line 74
    move-object v1, p0

    .line 75
    move-object p0, p1

    .line 76
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    .line 78
    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    .line 83
    .line 84
    :cond_1
    :goto_1
    return-void

    .line 85
    :goto_2
    if-eqz v1, :cond_2

    .line 86
    .line 87
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :catch_3
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_3
    throw p0
.end method

.class public Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;
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
    name = "HttpWriter"
.end annotation


# instance fields
.field volatile canceled:Z

.field private final httpUrl:Ljava/lang/String;

.field private final listener:Lcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;->httpUrl:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;->listener:Lcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;->canceled:Z

    .line 3
    .line 4
    return-void
.end method

.method public write(Ljava/io/File;)V
    .locals 10
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
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;->httpUrl:Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 14
    .line 15
    const/16 v2, 0x2710

    .line 16
    .line 17
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 25
    .line 26
    .line 27
    const-string v3, "GET"

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "Content-Type"

    .line 52
    .line 53
    invoke-static {v4, v5}, Lcom/pandora/ttlicense2/utils/IOUtils;->headerValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v6, "Content-Length"

    .line 58
    .line 59
    invoke-static {v4, v6}, Lcom/pandora/ttlicense2/utils/IOUtils;->headerValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4}, Lcom/pandora/ttlicense2/utils/IOUtils;->parseLong(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    const/16 v4, 0xc8

    .line 68
    .line 69
    if-ne v2, v4, :cond_0

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 72
    .line 73
    .line 74
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :try_start_2
    new-instance v3, Lcom/pandora/ttlicense2/loader/DiskCache$InputStreamWriter;

    .line 76
    .line 77
    new-instance v4, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter$1;

    .line 78
    .line 79
    invoke-direct {v4, p0, v2}, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter$1;-><init>(Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;Ljava/io/InputStream;)V

    .line 80
    .line 81
    .line 82
    iget-object v5, p0, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;->listener:Lcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;

    .line 83
    .line 84
    invoke-direct {v3, v4, v6, v7, v5}, Lcom/pandora/ttlicense2/loader/DiskCache$InputStreamWriter;-><init>(Ljava/io/InputStream;JLcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v3, p1}, Lcom/pandora/ttlicense2/loader/DiskCache$Writer;->write(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    .line 90
    invoke-static {v2}, Lcom/pandora/ttlicense2/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 94
    .line 95
    .line 96
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 97
    .line 98
    .line 99
    :catch_0
    return-void

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    move-object v9, v1

    .line 102
    move-object v1, v0

    .line 103
    move-object v0, v2

    .line 104
    :goto_0
    move-object v2, v9

    .line 105
    goto :goto_1

    .line 106
    :catchall_1
    move-exception p1

    .line 107
    move-object v2, v1

    .line 108
    move-object v1, v0

    .line 109
    goto :goto_1

    .line 110
    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 111
    .line 112
    .line 113
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    :try_start_5
    invoke-static {p1}, Lcom/pandora/ttlicense2/utils/IOUtils;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    new-instance v6, Ljava/io/IOException;

    .line 119
    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string/jumbo v8, "url = "

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v8, p0, Lcom/pandora/ttlicense2/loader/DiskCache$HttpWriter;->httpUrl:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v8, " code = "

    .line 137
    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v2, " msg = "

    .line 145
    .line 146
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v2, " contentType = "

    .line 153
    .line 154
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v2, " errorContent = "

    .line 161
    .line 162
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-direct {v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 176
    :catchall_2
    move-exception v2

    .line 177
    move-object v9, v1

    .line 178
    move-object v1, p1

    .line 179
    move-object p1, v2

    .line 180
    goto :goto_0

    .line 181
    :catchall_3
    move-exception p1

    .line 182
    move-object v1, v0

    .line 183
    move-object v2, v1

    .line 184
    :goto_1
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v1}, Lcom/pandora/ttlicense2/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 188
    .line 189
    .line 190
    if-eqz v2, :cond_1

    .line 191
    .line 192
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 193
    .line 194
    .line 195
    :catch_1
    :cond_1
    throw p1
.end method

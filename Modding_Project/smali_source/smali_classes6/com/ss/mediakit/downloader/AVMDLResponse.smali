.class public Lcom/ss/mediakit/downloader/AVMDLResponse;
.super Ljava/lang/Object;
.source "AVMDLResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AVMDLResponse"


# instance fields
.field public call:Lokhttp3/Call;

.field public contentlength:J

.field public isReadErr:Z

.field public readOff:J

.field public request:Lcom/ss/mediakit/downloader/AVMDLRequest;

.field public response:Lokhttp3/Response;

.field public statusCode:I


# direct methods
.method public constructor <init>(Lcom/ss/mediakit/downloader/AVMDLRequest;Lokhttp3/Response;Lokhttp3/Call;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->request:Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->response:Lokhttp3/Response;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->call:Lokhttp3/Call;

    .line 9
    .line 10
    const-wide/16 p2, -0x1

    .line 11
    .line 12
    iput-wide p2, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->contentlength:J

    .line 13
    .line 14
    const/4 p2, -0x1

    .line 15
    iput p2, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->statusCode:I

    .line 16
    .line 17
    iget-wide p1, p1, Lcom/ss/mediakit/downloader/AVMDLRequest;->reqOff:J

    .line 18
    .line 19
    iput-wide p1, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->readOff:J

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->isReadErr:Z

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/ss/mediakit/downloader/AVMDLResponse;->parseResponse()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private parseResponse()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->response:Lokhttp3/Response;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->o()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->statusCode:I

    .line 11
    .line 12
    const/16 v1, 0xc8

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->response:Lokhttp3/Response;

    .line 17
    .line 18
    const-string v1, "Content-Length"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lokhttp3/Response;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/ss/mediakit/downloader/AVMDLResponse;->toInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    int-to-long v0, v0

    .line 29
    iput-wide v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->contentlength:J

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const/16 v1, 0xce

    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->response:Lokhttp3/Response;

    .line 37
    .line 38
    const-string v1, "Content-Range"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lokhttp3/Response;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    const-string v1, "/"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-ltz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    add-int/lit8 v2, v2, -0x1

    .line 63
    .line 64
    if-ge v1, v2, :cond_2

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, -0x1

    .line 73
    invoke-static {v0, v1}, Lcom/ss/mediakit/downloader/AVMDLResponse;->toInt(Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    int-to-long v0, v0

    .line 78
    iput-wide v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->contentlength:J

    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ss/mediakit/downloader/AVMDLResponse;->toInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->call:Lokhttp3/Call;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public isFinish()Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->request:Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/ss/mediakit/downloader/AVMDLRequest;->size:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v3, v1, v3

    .line 8
    .line 9
    if-ltz v3, :cond_0

    .line 10
    .line 11
    iget-wide v3, v0, Lcom/ss/mediakit/downloader/AVMDLRequest;->reqOff:J

    .line 12
    .line 13
    add-long/2addr v3, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v3, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->contentlength:J

    .line 16
    .line 17
    :goto_0
    iget-wide v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->contentlength:J

    .line 18
    .line 19
    cmp-long v2, v3, v0

    .line 20
    .line 21
    if-lez v2, :cond_1

    .line 22
    .line 23
    move-wide v3, v0

    .line 24
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 25
    .line 26
    iget-wide v1, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->readOff:J

    .line 27
    .line 28
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->request:Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 33
    .line 34
    iget-wide v5, v2, Lcom/ss/mediakit/downloader/AVMDLRequest;->reqOff:J

    .line 35
    .line 36
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v5, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->request:Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 41
    .line 42
    iget-wide v5, v5, Lcom/ss/mediakit/downloader/AVMDLRequest;->size:J

    .line 43
    .line 44
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget-wide v6, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->contentlength:J

    .line 49
    .line 50
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    filled-new-array {v1, v2, v5, v6, v7}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "check readoff:%d reqoff:%d reqsize:%d contentlen:%d endoff:%d"

    .line 63
    .line 64
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "AVMDLResponse"

    .line 69
    .line 70
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-wide v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->readOff:J

    .line 74
    .line 75
    cmp-long v0, v0, v3

    .line 76
    .line 77
    if-ltz v0, :cond_2

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v0, 0x0

    .line 82
    :goto_1
    return v0
.end method

.method public isOpenSuccessful()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->statusCode:I

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x12c

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isReadSuccessful()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->isReadErr:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public readData([B)I
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    const-string v0, "AVMDLResponse"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->response:Lokhttp3/Response;

    .line 4
    .line 5
    invoke-virtual {v1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->response:Lokhttp3/Response;

    .line 14
    .line 15
    invoke-virtual {v1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-lez p1, :cond_2

    .line 28
    .line 29
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 30
    .line 31
    const-string v2, "before read off:%d reqoff:%d req size:%d"

    .line 32
    .line 33
    iget-wide v3, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->readOff:J

    .line 34
    .line 35
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->request:Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 40
    .line 41
    iget-wide v4, v4, Lcom/ss/mediakit/downloader/AVMDLRequest;->reqOff:J

    .line 42
    .line 43
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v5, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->request:Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 48
    .line 49
    iget-wide v5, v5, Lcom/ss/mediakit/downloader/AVMDLRequest;->size:J

    .line 50
    .line 51
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v0, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-wide v2, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->readOff:J

    .line 67
    .line 68
    int-to-long v4, p1

    .line 69
    add-long/2addr v2, v4

    .line 70
    iput-wide v2, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->readOff:J

    .line 71
    .line 72
    iget-object v2, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->request:Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 73
    .line 74
    iget-wide v6, v2, Lcom/ss/mediakit/downloader/AVMDLRequest;->reqOff:J

    .line 75
    .line 76
    add-long/2addr v6, v4

    .line 77
    iput-wide v6, v2, Lcom/ss/mediakit/downloader/AVMDLRequest;->reqOff:J

    .line 78
    .line 79
    iget-wide v6, v2, Lcom/ss/mediakit/downloader/AVMDLRequest;->size:J

    .line 80
    .line 81
    const-wide/16 v8, 0x0

    .line 82
    .line 83
    cmp-long v3, v6, v8

    .line 84
    .line 85
    if-lez v3, :cond_1

    .line 86
    .line 87
    sub-long/2addr v6, v4

    .line 88
    iput-wide v6, v2, Lcom/ss/mediakit/downloader/AVMDLRequest;->size:J

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p1

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    const-string v2, "after read,ret:%d off:%d reqoff:%d req size:%d"

    .line 94
    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-wide v4, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->readOff:J

    .line 100
    .line 101
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iget-object v5, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->request:Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 106
    .line 107
    iget-wide v5, v5, Lcom/ss/mediakit/downloader/AVMDLRequest;->reqOff:J

    .line 108
    .line 109
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    iget-object v6, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->request:Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 114
    .line 115
    iget-wide v6, v6, Lcom/ss/mediakit/downloader/AVMDLRequest;->size:J

    .line 116
    .line 117
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    return p1

    .line 133
    :goto_1
    const/4 v1, 0x1

    .line 134
    iput-boolean v1, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->isReadErr:Z

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v2, "read data exception:"

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_2
    const/4 p1, -0x1

    .line 161
    return p1
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->response:Lokhttp3/Response;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->call:Lokhttp3/Call;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->contentlength:J

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->statusCode:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/ss/mediakit/downloader/AVMDLResponse;->isReadErr:Z

    .line 15
    .line 16
    return-void
.end method

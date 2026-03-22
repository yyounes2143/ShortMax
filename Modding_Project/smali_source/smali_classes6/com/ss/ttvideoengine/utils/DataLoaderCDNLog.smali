.class public Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;
.super Ljava/lang/Object;
.source "DataLoaderCDNLog.java"


# instance fields
.field public contentLength:J

.field public fileKey:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public reqEndT:J

.field public reqStartT:J

.field public serverIp:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public xCache:Ljava/lang/String;

.field public xMCache:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string/jumbo v0, "url"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;->url:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/net/URL;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;->url:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;->host:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "server_ip"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;->serverIp:Ljava/lang/String;

    .line 35
    .line 36
    const-string/jumbo v0, "x_cache"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;->xCache:Ljava/lang/String;

    .line 44
    .line 45
    const-string/jumbo v0, "x_m_cache"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;->xMCache:Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "f_key"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;->fileKey:Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, "contentLength"

    .line 63
    .line 64
    const-wide/16 v1, -0x1

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    iput-wide v3, p0, Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;->contentLength:J

    .line 71
    .line 72
    const-string v0, "req_start_t"

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v3

    .line 78
    iput-wide v3, p0, Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;->reqStartT:J

    .line 79
    .line 80
    const-string v0, "req_end_t"

    .line 81
    .line 82
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    iput-wide v0, p0, Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;->reqEndT:J

    .line 87
    .line 88
    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 90
    .line 91
    const-string v0, "log null"

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public static process(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    const-string/jumbo v1, "url"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    new-instance v2, Ljava/net/URL;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const-string v2, "host"

    .line 34
    .line 35
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :cond_1
    return-object p0

    .line 39
    :catch_0
    return-object v0
.end method

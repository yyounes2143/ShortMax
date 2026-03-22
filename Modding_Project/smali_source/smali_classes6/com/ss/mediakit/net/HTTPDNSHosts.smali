.class public Lcom/ss/mediakit/net/HTTPDNSHosts;
.super Ljava/lang/Object;
.source "HTTPDNSHosts.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BatchParseHTTPDNSHosts"

.field private static mTTDNSServer:Ljava/lang/String; = "/q?host="


# instance fields
.field protected mCancelled:Z

.field protected mHandler:Landroid/os/Handler;

.field public mHostnames:[Ljava/lang/String;

.field private mHttpDNSType:I

.field public mId:Ljava/lang/String;

.field protected mNetClient:Lcom/ss/mediakit/net/AVMDLNetClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLNetClient;ILandroid/os/Handler;)V
    .locals 2
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
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mHttpDNSType:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mCancelled:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mNetClient:Lcom/ss/mediakit/net/AVMDLNetClient;

    .line 12
    .line 13
    const-string v1, "BatchParseHTTPDNSHosts"

    .line 14
    .line 15
    if-ne p3, v0, :cond_2

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    array-length v0, p1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput p3, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mHttpDNSType:I

    .line 23
    .line 24
    iput-object p1, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mHostnames:[Ljava/lang/String;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mNetClient:Lcom/ss/mediakit/net/AVMDLNetClient;

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    new-instance p1, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mNetClient:Lcom/ss/mediakit/net/AVMDLNetClient;

    .line 36
    .line 37
    :cond_0
    iput p3, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mHttpDNSType:I

    .line 38
    .line 39
    iput-object p4, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const-string p1, "host array is valid"

    .line 43
    .line 44
    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Ljava/lang/Exception;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p2

    .line 53
    :cond_2
    const-string p1, "create fail type is not own"

    .line 54
    .line 55
    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Ljava/lang/Exception;

    .line 59
    .line 60
    const-string/jumbo p2, "type is not own"

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method private _getURL()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "https://"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalOwnDNSParseHost:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcom/ss/mediakit/net/HTTPDNSHosts;->mTTDNSServer:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    move v2, v1

    .line 35
    :goto_0
    iget-object v3, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mHostnames:[Ljava/lang/String;

    .line 36
    .line 37
    array-length v4, v3

    .line 38
    if-ge v1, v4, :cond_2

    .line 39
    .line 40
    aget-object v3, v3, v1

    .line 41
    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    iget-object v3, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mHostnames:[Ljava/lang/String;

    .line 51
    .line 52
    aget-object v3, v3, v1

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v4, ","

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v4, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mHostnames:[Ljava/lang/String;

    .line 69
    .line 70
    aget-object v4, v4, v1

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0
.end method

.method private _handleResponse(Lorg/json/JSONObject;Lcom/ss/mediakit/net/Error;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mId:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mHttpDNSType:I

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "****http dns id:%s type:%d"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "BatchParseHTTPDNSHosts"

    .line 22
    .line 23
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    iget-object p1, p2, Lcom/ss/mediakit/net/Error;->errStr:Ljava/lang/String;

    .line 29
    .line 30
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, "handle response receive err:%s"

    .line 35
    .line 36
    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_0
    const/4 p2, 0x0

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ss/mediakit/net/HTTPDNSHosts;->parseResult(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v1, "handle response exception:%s"

    .line 70
    .line 71
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 79
    .line 80
    const-string v0, "****parse end"

    .line 81
    .line 82
    new-array p2, p2, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    :goto_1
    const-string p1, "json null err"

    .line 93
    .line 94
    new-array p2, p2, [Ljava/lang/Object;

    .line 95
    .line 96
    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    return-void
.end method

.method static synthetic access$000(Lcom/ss/mediakit/net/HTTPDNSHosts;Lorg/json/JSONObject;Lcom/ss/mediakit/net/Error;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/mediakit/net/HTTPDNSHosts;->_handleResponse(Lorg/json/JSONObject;Lcom/ss/mediakit/net/Error;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private parseResult(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    const-string v0, "dns"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p0, v1}, Lcom/ss/mediakit/net/HTTPDNSHosts;->parserResultForSingleHost(Lorg/json/JSONObject;)Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-static {}, Lcom/ss/mediakit/net/IPCache;->getInstance()Lcom/ss/mediakit/net/IPCache;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, v1, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mHost:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v3, v1}, Lcom/ss/mediakit/net/IPCache;->put(Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLDNSInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void

    .line 43
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "parse json exception"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "BatchParseHTTPDNSHosts"

    .line 61
    .line 62
    invoke-static {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private parserResultForSingleHost(Lorg/json/JSONObject;)Lcom/ss/mediakit/net/AVMDLDNSInfo;
    .locals 13

    .line 1
    iget v0, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mHttpDNSType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    move-wide v10, v0

    .line 16
    move-object v9, v2

    .line 17
    move-object v8, v3

    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_1
    :goto_0
    if-eqz p1, :cond_b

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto/16 :goto_8

    .line 29
    .line 30
    :cond_2
    const-string/jumbo v0, "ttl"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const/16 v0, 0x3c

    .line 45
    .line 46
    :goto_1
    const-string v1, "host"

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move-object v1, v3

    .line 60
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    mul-int/lit16 v0, v0, 0x3e8

    .line 65
    .line 66
    int-to-long v6, v0

    .line 67
    add-long/2addr v4, v6

    .line 68
    const-string v0, "ips"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_b

    .line 75
    .line 76
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_5

    .line 81
    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :cond_5
    const/4 v0, 0x0

    .line 85
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-ge v0, v6, :cond_8

    .line 90
    .line 91
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_4

    .line 96
    :catch_0
    move-exception v6

    .line 97
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    move-object v6, v3

    .line 101
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-nez v7, :cond_7

    .line 106
    .line 107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_6

    .line 112
    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    goto :goto_5

    .line 129
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v2, ","

    .line 138
    .line 139
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    :cond_7
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_8
    move-object v8, v1

    .line 153
    move-object v9, v2

    .line 154
    move-wide v10, v4

    .line 155
    :goto_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    const-string v0, "BatchParseHTTPDNSHosts"

    .line 160
    .line 161
    if-nez p1, :cond_a

    .line 162
    .line 163
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_9

    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_9
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 171
    .line 172
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    filled-new-array {v8, v9, v1}, [Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const-string v2, "parse result host:%s ips:%s expiredT:%d"

    .line 181
    .line 182
    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance p1, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 190
    .line 191
    iget v7, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mHttpDNSType:I

    .line 192
    .line 193
    iget-object v12, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mId:Ljava/lang/String;

    .line 194
    .line 195
    move-object v6, p1

    .line 196
    invoke-direct/range {v6 .. v12}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-object p1

    .line 200
    :cond_a
    :goto_7
    const-string p1, "parse result is null"

    .line 201
    .line 202
    invoke-static {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_b
    :goto_8
    return-object v3
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mCancelled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mCancelled:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mNetClient:Lcom/ss/mediakit/net/AVMDLNetClient;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/ss/mediakit/net/AVMDLNetClient;->cancel()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public start()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/ss/mediakit/net/HTTPDNSHosts;->_getURL()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "batch http dns  url:"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "BatchParseHTTPDNSHosts"

    .line 23
    .line 24
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mNetClient:Lcom/ss/mediakit/net/AVMDLNetClient;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    array-length v2, v0

    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_0
    if-ge v3, v2, :cond_1

    .line 40
    .line 41
    aget-object v4, v0, v3

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-string/jumbo v6, "startTask"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    array-length v4, v4

    .line 61
    const/4 v5, 0x5

    .line 62
    if-ne v4, v5, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mNetClient:Lcom/ss/mediakit/net/AVMDLNetClient;

    .line 65
    .line 66
    new-instance v5, Lcom/ss/mediakit/net/HTTPDNSHosts$1;

    .line 67
    .line 68
    invoke-direct {v5, p0}, Lcom/ss/mediakit/net/HTTPDNSHosts$1;-><init>(Lcom/ss/mediakit/net/HTTPDNSHosts;)V

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    const/4 v3, 0x0

    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/ss/mediakit/net/AVMDLNetClient;->startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/net/HTTPDNSHosts;->mNetClient:Lcom/ss/mediakit/net/AVMDLNetClient;

    .line 82
    .line 83
    new-instance v2, Lcom/ss/mediakit/net/HTTPDNSHosts$2;

    .line 84
    .line 85
    invoke-direct {v2, p0}, Lcom/ss/mediakit/net/HTTPDNSHosts$2;-><init>(Lcom/ss/mediakit/net/HTTPDNSHosts;)V

    .line 86
    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-virtual {v0, v1, v3, v2}, Lcom/ss/mediakit/net/AVMDLNetClient;->startTask(Ljava/lang/String;Ljava/util/Map;Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    return-void
.end method

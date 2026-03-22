.class public Lcom/ss/ttvideoengine/net/HTTPDNS;
.super Lcom/ss/ttvideoengine/net/BaseDNS;
.source "HTTPDNS.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HTTPDNS"

.field private static mTTDNSServerHost:Ljava/lang/String; = ""


# instance fields
.field private mHttpDNSType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/ttvideoengine/net/TTVNetClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/net/BaseDNS;-><init>(Ljava/lang/String;Lcom/ss/ttvideoengine/net/TTVNetClient;)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/ss/ttvideoengine/net/HTTPDNS;->mHttpDNSType:I

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string p2, "DNS use HTTPDNS"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    if-ne p3, p2, :cond_0

    .line 18
    .line 19
    const-string p2, "_TT"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p2, "_ALI"

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p2, "HTTPDNS"

    .line 32
    .line 33
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private _getURL()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/net/HTTPDNS;->getTTDNSServerHost()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "https://"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/ss/ttvideoengine/net/HTTPDNS;->mTTDNSServerHost:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, "/q?host="

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "http dns parse url is"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "HTTPDNS"

    .line 63
    .line 64
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method private _handleResponse(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 7

    .line 1
    const-string v0, "kTTVideoErrorDomainHTTPDNS"

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iput-object v0, p2, Lcom/ss/ttvideoengine/utils/Error;->domain:Ljava/lang/String;

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    const-string p2, "HTTP dns empty"

    .line 10
    .line 11
    const-string v1, "ALI_"

    .line 12
    .line 13
    const-string v2, "TT_"

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    const/16 v4, -0x270d

    .line 17
    .line 18
    if-eqz p1, :cond_5

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_1

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_1
    const-string v5, "ips"

    .line 28
    .line 29
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    if-eqz v5, :cond_3

    .line 34
    .line 35
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :try_start_0
    const-string/jumbo p2, "time"

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string p2, "dns_type"

    .line 53
    .line 54
    const-string v0, "httpDNS"

    .line 55
    .line 56
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p2

    .line 61
    invoke-static {p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifySuccess(Lorg/json/JSONObject;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    :goto_1
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 69
    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    iget v6, p0, Lcom/ss/ttvideoengine/net/HTTPDNS;->mHttpDNSType:I

    .line 76
    .line 77
    if-ne v6, v3, :cond_4

    .line 78
    .line 79
    move-object v1, v2

    .line 80
    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-direct {p1, v0, v4, p2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    move-object p2, p1

    .line 94
    goto :goto_4

    .line 95
    :cond_5
    :goto_3
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 96
    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    iget v6, p0, Lcom/ss/ttvideoengine/net/HTTPDNS;->mHttpDNSType:I

    .line 103
    .line 104
    if-ne v6, v3, :cond_6

    .line 105
    .line 106
    move-object v1, v2

    .line 107
    :cond_6
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-direct {p1, v0, v4, p2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :goto_4
    invoke-virtual {p0, p2}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/net/HTTPDNS;Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/net/HTTPDNS;->_handleResponse(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getTTDNSServerHost()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/net/HTTPDNS;->mTTDNSServerHost:Ljava/lang/String;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public static setTTDNSServerHost(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sput-object p0, Lcom/ss/ttvideoengine/net/HTTPDNS;->mTTDNSServerHost:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mCancelled:Z

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
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mCancelled:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/net/TTVNetClient;->cancel()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public start()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/net/HTTPDNS;->_getURL()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v2, v0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const-string/jumbo v6, "startTask"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    array-length v4, v4

    .line 39
    const/4 v5, 0x5

    .line 40
    if-ne v4, v5, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 43
    .line 44
    new-instance v5, Lcom/ss/ttvideoengine/net/HTTPDNS$1;

    .line 45
    .line 46
    invoke-direct {v5, p0}, Lcom/ss/ttvideoengine/net/HTTPDNS$1;-><init>(Lcom/ss/ttvideoengine/net/HTTPDNS;)V

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/net/TTVNetClient;->startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 60
    .line 61
    new-instance v2, Lcom/ss/ttvideoengine/net/HTTPDNS$2;

    .line 62
    .line 63
    invoke-direct {v2, p0}, Lcom/ss/ttvideoengine/net/HTTPDNS$2;-><init>(Lcom/ss/ttvideoengine/net/HTTPDNS;)V

    .line 64
    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-virtual {v0, v1, v3, v2}, Lcom/ss/ttvideoengine/net/TTVNetClient;->startTask(Ljava/lang/String;Ljava/util/Map;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.class public Lcom/ss/ttvideoengine/net/DNSParser;
.super Lcom/ss/ttvideoengine/net/BaseDNS;
.source "DNSParser.java"

# interfaces
.implements Lcom/ss/ttvideoengine/net/DNSCompletionListener;


# static fields
.field public static final DNS_RESULT_IP:Ljava/lang/String; = "ip"

.field public static final DNS_TYPE_HTTP_ALI:I = 0x1

.field public static final DNS_TYPE_HTTP_TT:I = 0x2

.field public static final DNS_TYPE_LOCAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DNSParser"


# instance fields
.field private hasRecAndExpired:Z

.field private mClearTime:J

.field private mContext:Landroid/content/Context;

.field private mCurrentDNS:Lcom/ss/ttvideoengine/net/BaseDNS;

.field private mDNSCount:I

.field private mDnsInfo:Lorg/json/JSONObject;

.field private mDnsTime:J

.field private mExpiredTime:I

.field private mForceReparse:Z

.field private mIPCache:Lcom/ss/ttvideoengine/net/IPCache;

.field private mIPFromCache:Z

.field private mIPFromServer:Z

.field private mIndex:I

.field private mParserIndex:[I

.field private mUseDNSCache:Z

.field private mUseServerDNS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ss/ttvideoengine/net/TTVNetClient;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/ss/ttvideoengine/net/BaseDNS;-><init>(Ljava/lang/String;Lcom/ss/ttvideoengine/net/TTVNetClient;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIndex:I

    .line 6
    .line 7
    const/4 p3, 0x2

    .line 8
    filled-new-array {p2, p3}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mParserIndex:[I

    .line 13
    .line 14
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->hasRecAndExpired:Z

    .line 15
    .line 16
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mForceReparse:Z

    .line 17
    .line 18
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mUseDNSCache:Z

    .line 19
    .line 20
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mUseServerDNS:Z

    .line 21
    .line 22
    const/16 v1, 0x78

    .line 23
    .line 24
    iput v1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mExpiredTime:I

    .line 25
    .line 26
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPFromCache:Z

    .line 27
    .line 28
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPFromServer:Z

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mDnsInfo:Lorg/json/JSONObject;

    .line 32
    .line 33
    const-wide/16 v1, 0x0

    .line 34
    .line 35
    iput-wide v1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mDnsTime:J

    .line 36
    .line 37
    iput-wide v1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mClearTime:J

    .line 38
    .line 39
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    array-length p1, v0

    .line 42
    iput p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mDNSCount:I

    .line 43
    .line 44
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->getDNSType()[I

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v0, 0x1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    array-length v1, p1

    .line 52
    if-lez v1, :cond_2

    .line 53
    .line 54
    :goto_0
    array-length v1, p1

    .line 55
    if-ge p2, v1, :cond_3

    .line 56
    .line 57
    aget v1, p1, p2

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    if-eq v1, v0, :cond_0

    .line 62
    .line 63
    if-eq v1, p3, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mParserIndex:[I

    .line 67
    .line 68
    aput p3, v1, p2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mParserIndex:[I

    .line 72
    .line 73
    aput v1, v2, p2

    .line 74
    .line 75
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->isHttpDnsFirst()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    iget-object p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mParserIndex:[I

    .line 85
    .line 86
    aput p3, p1, p2

    .line 87
    .line 88
    aput p2, p1, v0

    .line 89
    .line 90
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string p2, "DNSType:"

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mParserIndex:[I

    .line 101
    .line 102
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string p2, "DNSParser"

    .line 114
    .line 115
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/ss/ttvideoengine/net/IPCache;->getInstance()Lcom/ss/ttvideoengine/net/IPCache;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPCache:Lcom/ss/ttvideoengine/net/IPCache;

    .line 123
    .line 124
    return-void
.end method

.method private DNSParseAsync()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mParserIndex:[I

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIndex:I

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/net/HTTPDNS;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 21
    .line 22
    invoke-direct {v0, v2, v3, v1}, Lcom/ss/ttvideoengine/net/HTTPDNS;-><init>(Ljava/lang/String;Lcom/ss/ttvideoengine/net/TTVNetClient;I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mCurrentDNS:Lcom/ss/ttvideoengine/net/BaseDNS;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Lcom/ss/ttvideoengine/net/HTTPDNS;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 33
    .line 34
    invoke-direct {v0, v2, v3, v1}, Lcom/ss/ttvideoengine/net/HTTPDNS;-><init>(Ljava/lang/String;Lcom/ss/ttvideoengine/net/TTVNetClient;I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mCurrentDNS:Lcom/ss/ttvideoengine/net/BaseDNS;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    new-instance v0, Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/net/LocalDNS;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mCurrentDNS:Lcom/ss/ttvideoengine/net/BaseDNS;

    .line 48
    .line 49
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mCurrentDNS:Lcom/ss/ttvideoengine/net/BaseDNS;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/net/BaseDNS;->setCompletionListener(Lcom/ss/ttvideoengine/net/DNSCompletionListener;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mCurrentDNS:Lcom/ss/ttvideoengine/net/BaseDNS;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/net/BaseDNS;->start()V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method private recordIPInfo(Lorg/json/JSONObject;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPCache:Lcom/ss/ttvideoengine/net/IPCache;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/ss/ttvideoengine/net/IPCache$IpInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/ss/ttvideoengine/net/IPCache$IpInfo;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/ss/ttvideoengine/net/IPCache$IpInfo;->ip_json:Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const-wide/16 v3, 0x3e8

    .line 17
    .line 18
    mul-long/2addr p2, v3

    .line 19
    add-long/2addr v1, p2

    .line 20
    iput-wide v1, v0, Lcom/ss/ttvideoengine/net/IPCache$IpInfo;->ip_expiretime:J

    .line 21
    .line 22
    iget-object p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPCache:Lcom/ss/ttvideoengine/net/IPCache;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, p2, v0}, Lcom/ss/ttvideoengine/net/IPCache;->put(Ljava/lang/String;Lcom/ss/ttvideoengine/net/IPCache$IpInfo;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
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
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mCurrentDNS:Lcom/ss/ttvideoengine/net/BaseDNS;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/net/BaseDNS;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public getIsUseDNSCache()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mUseDNSCache:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsUseServerDNS()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mUseServerDNS:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTypeStr()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPFromCache:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "FromCache"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPFromServer:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v0, "FromServer"

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mParserIndex:[I

    .line 16
    .line 17
    iget v1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIndex:I

    .line 18
    .line 19
    aget v0, v0, v1

    .line 20
    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_3

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    .line 29
    const-string v0, ""

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_2
    const-string v0, "TT_HTTP"

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_3
    const-string v0, "HTTP AL"

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_4
    const-string v0, "local"

    .line 39
    .line 40
    return-object v0
.end method

.method public onCancelled()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 8

    .line 1
    const-string v0, "dns_type"

    .line 2
    .line 3
    const-string/jumbo v1, "time"

    .line 4
    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mCancelled:Z

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->hasRecAndExpired:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mForceReparse:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifyCancelled()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void

    .line 22
    :cond_2
    if-nez p2, :cond_a

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    const-string p2, "ips"

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const/4 p2, 0x0

    .line 34
    :goto_0
    const-string v2, "DNSParser"

    .line 35
    .line 36
    if-eqz p2, :cond_8

    .line 37
    .line 38
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_4

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .line 49
    .line 50
    :try_start_0
    const-string v4, "ip"

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    const-string/jumbo p2, "ttl"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    const-wide/16 v6, 0x0

    .line 68
    .line 69
    cmp-long p2, v4, v6

    .line 70
    .line 71
    if-nez p2, :cond_5

    .line 72
    .line 73
    iget p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mExpiredTime:I

    .line 74
    .line 75
    int-to-long v4, p2

    .line 76
    :cond_5
    invoke-direct {p0, v3, v4, v5}, Lcom/ss/ttvideoengine/net/DNSParser;->recordIPInfo(Lorg/json/JSONObject;J)V

    .line 77
    .line 78
    .line 79
    iget-boolean p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->hasRecAndExpired:Z

    .line 80
    .line 81
    if-eqz p2, :cond_6

    .line 82
    .line 83
    iget-boolean p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mForceReparse:Z

    .line 84
    .line 85
    if-eqz p2, :cond_7

    .line 86
    .line 87
    :cond_6
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_1
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-virtual {p0, v3}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifySuccess(Lorg/json/JSONObject;)V

    .line 111
    .line 112
    .line 113
    :cond_7
    return-void

    .line 114
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mParserIndex:[I

    .line 115
    .line 116
    iget p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIndex:I

    .line 117
    .line 118
    aget p1, p1, p2

    .line 119
    .line 120
    const-string p2, "dns result empty,type:"

    .line 121
    .line 122
    const/16 v0, -0x270d

    .line 123
    .line 124
    if-nez p1, :cond_9

    .line 125
    .line 126
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mParserIndex:[I

    .line 137
    .line 138
    iget v3, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIndex:I

    .line 139
    .line 140
    aget p2, p2, v3

    .line 141
    .line 142
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    const-string v1, "kTTVideoErrorDomainLocalDNS"

    .line 150
    .line 151
    invoke-direct {p1, v1, v0, p2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_9
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 159
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object p2, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mParserIndex:[I

    .line 169
    .line 170
    iget v3, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIndex:I

    .line 171
    .line 172
    aget p2, p2, v3

    .line 173
    .line 174
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    const-string v1, "kTTVideoErrorDomainHTTPDNS"

    .line 182
    .line 183
    invoke-direct {p1, v1, v0, p2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 187
    .line 188
    .line 189
    :goto_3
    const-string p1, "ips empty"

    .line 190
    .line 191
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_a
    iget p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIndex:I

    .line 196
    .line 197
    iget v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mDNSCount:I

    .line 198
    .line 199
    add-int/lit8 v0, v0, -0x1

    .line 200
    .line 201
    if-ne p1, v0, :cond_d

    .line 202
    .line 203
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->hasRecAndExpired:Z

    .line 204
    .line 205
    if-eqz p1, :cond_b

    .line 206
    .line 207
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mForceReparse:Z

    .line 208
    .line 209
    if-eqz p1, :cond_c

    .line 210
    .line 211
    :cond_b
    invoke-virtual {p0, p2}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 212
    .line 213
    .line 214
    :cond_c
    return-void

    .line 215
    :cond_d
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->hasRecAndExpired:Z

    .line 216
    .line 217
    if-eqz p1, :cond_e

    .line 218
    .line 219
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mForceReparse:Z

    .line 220
    .line 221
    if-eqz p1, :cond_f

    .line 222
    .line 223
    :cond_e
    invoke-virtual {p0, p2}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifyRetry(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 224
    .line 225
    .line 226
    :cond_f
    iget p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIndex:I

    .line 227
    .line 228
    add-int/lit8 p1, p1, 0x1

    .line 229
    .line 230
    iput p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIndex:I

    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/net/DNSParser;->start()V

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method public onRetry(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setDNSExpiredTimeInS(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mExpiredTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setDnsInfo(Lorg/json/JSONObject;Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mDnsInfo:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iput-wide p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mDnsTime:J

    .line 8
    .line 9
    return-void
.end method

.method public setForceReparse()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mForceReparse:Z

    .line 3
    .line 4
    return-void
.end method

.method public setIsUseDNSCache(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mUseDNSCache:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIsUseServerDNS(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mUseServerDNS:Z

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 15

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
    iget v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIndex:I

    .line 7
    .line 8
    iget v1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mDNSCount:I

    .line 9
    .line 10
    if-lt v0, v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/net/DNSServerIP;->updateDNSServerIP()V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mForceReparse:Z

    .line 17
    .line 18
    if-nez v0, :cond_13

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mUseDNSCache:Z

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mUseServerDNS:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto/16 :goto_8

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/ss/ttvideoengine/net/NetUtils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, -0x1

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move v3, v1

    .line 56
    move-object v0, v2

    .line 57
    :goto_0
    iget-object v4, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPCache:Lcom/ss/ttvideoengine/net/IPCache;

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/net/IPCache;->getCurNetType()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const-string v5, "DNSParser"

    .line 64
    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v7, 0x1

    .line 67
    if-eq v3, v1, :cond_6

    .line 68
    .line 69
    if-eq v3, v4, :cond_4

    .line 70
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v8

    .line 75
    iput-wide v8, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mClearTime:J

    .line 76
    .line 77
    :goto_1
    move v8, v7

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iget-object v8, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPCache:Lcom/ss/ttvideoengine/net/IPCache;

    .line 80
    .line 81
    invoke-virtual {v8}, Lcom/ss/ttvideoengine/net/IPCache;->getCurNetExtraInfo()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    if-eqz v8, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-nez v8, :cond_7

    .line 94
    .line 95
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    iput-wide v8, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mClearTime:J

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    const-string/jumbo v8, "start:NetWork may hava some problems"

    .line 103
    .line 104
    .line 105
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_7
    move v8, v6

    .line 109
    :goto_2
    iget-boolean v9, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mUseServerDNS:Z

    .line 110
    .line 111
    if-eqz v9, :cond_9

    .line 112
    .line 113
    iget-wide v9, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mClearTime:J

    .line 114
    .line 115
    const-wide/16 v11, 0x3e8

    .line 116
    .line 117
    div-long/2addr v9, v11

    .line 118
    iget-wide v11, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mDnsTime:J

    .line 119
    .line 120
    sub-long/2addr v9, v11

    .line 121
    if-eqz v8, :cond_8

    .line 122
    .line 123
    if-ne v4, v1, :cond_8

    .line 124
    .line 125
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPCache:Lcom/ss/ttvideoengine/net/IPCache;

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/net/IPCache;->setCurNetExtraInfo(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPCache:Lcom/ss/ttvideoengine/net/IPCache;

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Lcom/ss/ttvideoengine/net/IPCache;->setCurNetType(I)V

    .line 133
    .line 134
    .line 135
    move v8, v6

    .line 136
    goto :goto_3

    .line 137
    :cond_8
    const-wide/16 v13, 0x0

    .line 138
    .line 139
    cmp-long v1, v9, v13

    .line 140
    .line 141
    if-lez v1, :cond_9

    .line 142
    .line 143
    cmp-long v1, v11, v13

    .line 144
    .line 145
    if-lez v1, :cond_9

    .line 146
    .line 147
    move v8, v7

    .line 148
    :cond_9
    :goto_3
    if-eqz v8, :cond_a

    .line 149
    .line 150
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPCache:Lcom/ss/ttvideoengine/net/IPCache;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/net/IPCache;->clear()V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPCache:Lcom/ss/ttvideoengine/net/IPCache;

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/net/IPCache;->setCurNetExtraInfo(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPCache:Lcom/ss/ttvideoengine/net/IPCache;

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/net/IPCache;->setCurNetType(I)V

    .line 163
    .line 164
    .line 165
    invoke-direct {p0}, Lcom/ss/ttvideoengine/net/DNSParser;->DNSParseAsync()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_a
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mUseServerDNS:Z

    .line 170
    .line 171
    const-string v1, "dns_type"

    .line 172
    .line 173
    const-string/jumbo v3, "time"

    .line 174
    .line 175
    .line 176
    if-eqz v0, :cond_e

    .line 177
    .line 178
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mDnsInfo:Lorg/json/JSONObject;

    .line 179
    .line 180
    if-eqz v0, :cond_e

    .line 181
    .line 182
    iget-object v4, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-eqz v0, :cond_d

    .line 189
    .line 190
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-nez v4, :cond_b

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_b
    new-instance v4, Lorg/json/JSONObject;

    .line 198
    .line 199
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 200
    .line 201
    .line 202
    :try_start_0
    const-string v5, "ip"

    .line 203
    .line 204
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    .line 210
    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    invoke-virtual {v4, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 216
    .line 217
    .line 218
    const-string v0, "httpDNS"

    .line 219
    .line 220
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    :goto_4
    iput-boolean v7, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPFromServer:Z

    .line 229
    .line 230
    iget v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mExpiredTime:I

    .line 231
    .line 232
    int-to-long v0, v0

    .line 233
    invoke-direct {p0, v4, v0, v1}, Lcom/ss/ttvideoengine/net/DNSParser;->recordIPInfo(Lorg/json/JSONObject;J)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mListener:Lcom/ss/ttvideoengine/net/DNSCompletionListener;

    .line 237
    .line 238
    if-eqz v0, :cond_c

    .line 239
    .line 240
    invoke-interface {v0, v4, v2}, Lcom/ss/ttvideoengine/net/DNSCompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 241
    .line 242
    .line 243
    :cond_c
    return-void

    .line 244
    :cond_d
    :goto_5
    const-string v0, "dns_info ips empty"

    .line 245
    .line 246
    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_e
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mUseDNSCache:Z

    .line 250
    .line 251
    if-eqz v0, :cond_12

    .line 252
    .line 253
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPCache:Lcom/ss/ttvideoengine/net/IPCache;

    .line 254
    .line 255
    if-eqz v0, :cond_f

    .line 256
    .line 257
    iget-object v4, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v0, v4}, Lcom/ss/ttvideoengine/net/IPCache;->get(Ljava/lang/String;)Lcom/ss/ttvideoengine/net/IPCache$IpInfo;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    goto :goto_6

    .line 264
    :cond_f
    move-object v0, v2

    .line 265
    :goto_6
    if-eqz v0, :cond_12

    .line 266
    .line 267
    const-string v4, "DNS from cache"

    .line 268
    .line 269
    invoke-static {v5, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 273
    .line 274
    .line 275
    move-result-wide v4

    .line 276
    iget-wide v8, v0, Lcom/ss/ttvideoengine/net/IPCache$IpInfo;->ip_expiretime:J

    .line 277
    .line 278
    cmp-long v4, v4, v8

    .line 279
    .line 280
    if-ltz v4, :cond_10

    .line 281
    .line 282
    iput-boolean v7, p0, Lcom/ss/ttvideoengine/net/DNSParser;->hasRecAndExpired:Z

    .line 283
    .line 284
    invoke-direct {p0}, Lcom/ss/ttvideoengine/net/DNSParser;->DNSParseAsync()V

    .line 285
    .line 286
    .line 287
    :cond_10
    iput-boolean v7, p0, Lcom/ss/ttvideoengine/net/DNSParser;->mIPFromCache:Z

    .line 288
    .line 289
    :try_start_1
    iget-object v4, v0, Lcom/ss/ttvideoengine/net/IPCache$IpInfo;->ip_json:Lorg/json/JSONObject;

    .line 290
    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 292
    .line 293
    .line 294
    move-result-wide v5

    .line 295
    invoke-virtual {v4, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 296
    .line 297
    .line 298
    iget-object v3, v0, Lcom/ss/ttvideoengine/net/IPCache$IpInfo;->ip_json:Lorg/json/JSONObject;

    .line 299
    .line 300
    const-string v4, "localDNS"

    .line 301
    .line 302
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    .line 304
    .line 305
    goto :goto_7

    .line 306
    :catch_1
    move-exception v1

    .line 307
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 308
    .line 309
    .line 310
    :goto_7
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mListener:Lcom/ss/ttvideoengine/net/DNSCompletionListener;

    .line 311
    .line 312
    if-eqz v1, :cond_11

    .line 313
    .line 314
    iget-object v0, v0, Lcom/ss/ttvideoengine/net/IPCache$IpInfo;->ip_json:Lorg/json/JSONObject;

    .line 315
    .line 316
    invoke-interface {v1, v0, v2}, Lcom/ss/ttvideoengine/net/DNSCompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 317
    .line 318
    .line 319
    :cond_11
    return-void

    .line 320
    :cond_12
    invoke-direct {p0}, Lcom/ss/ttvideoengine/net/DNSParser;->DNSParseAsync()V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :cond_13
    :goto_8
    invoke-direct {p0}, Lcom/ss/ttvideoengine/net/DNSParser;->DNSParseAsync()V

    .line 325
    .line 326
    .line 327
    return-void
.end method

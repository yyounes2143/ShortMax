.class public Lcom/ss/mediakit/net/HTTPDNS;
.super Lcom/ss/mediakit/net/BaseDNS;
.source "HTTPDNS.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HTTPDNS"

.field private static mGoogleDNSServer:Ljava/lang/String; = "/resolve?name="

.field private static mTTDNSServer:Ljava/lang/String; = "/q?host="


# instance fields
.field private mHttpDNSType:I

.field private mSource:Ljava/lang/Object;

.field private mSourceId:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLNetClient;ILandroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/ss/mediakit/net/BaseDNS;-><init>(Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLNetClient;Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/ss/mediakit/net/HTTPDNS;->mHttpDNSType:I

    .line 5
    .line 6
    return-void
.end method

.method private _getURL()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->isIPv4Reachable()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->isIPv4Reachable()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget v3, p0, Lcom/ss/mediakit/net/HTTPDNS;->mHttpDNSType:I

    .line 15
    .line 16
    const-string v4, "https://"

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x2

    .line 20
    if-eq v3, v6, :cond_1

    .line 21
    .line 22
    if-ne v3, v5, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v7, 0x3

    .line 26
    if-ne v3, v7, :cond_2

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v4, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalGoogleDNSParseHost:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    sget-object v4, Lcom/ss/mediakit/net/HTTPDNS;->mGoogleDNSServer:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    sget-object v4, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalOwnDNSParseHost:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    sget-object v4, Lcom/ss/mediakit/net/HTTPDNS;->mTTDNSServer:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v3, p0, Lcom/ss/mediakit/net/HTTPDNS;->mHttpDNSType:I

    .line 85
    .line 86
    if-eq v3, v6, :cond_3

    .line 87
    .line 88
    if-ne v3, v5, :cond_6

    .line 89
    .line 90
    :cond_3
    const-string v3, "&source=vod"

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getConfig()Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_6

    .line 104
    .line 105
    iget v3, v3, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableNetworkChangeNotify:I

    .line 106
    .line 107
    if-ne v3, v5, :cond_6

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    const-string v1, "&f=0"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    if-eqz v1, :cond_5

    .line 120
    .line 121
    const-string v1, "&f=1"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    if-eqz v2, :cond_6

    .line 128
    .line 129
    const-string v1, "&f=2"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    return-object v0
.end method

.method private _handleResponse(Lorg/json/JSONObject;Lcom/ss/mediakit/net/Error;)V
    .locals 10

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/ss/mediakit/net/HTTPDNS;->mHttpDNSType:I

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 12
    .line 13
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "****http dns id:%s type:%d host:%s"

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "HTTPDNS"

    .line 24
    .line 25
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 29
    .line 30
    iget v4, p0, Lcom/ss/mediakit/net/HTTPDNS;->mHttpDNSType:I

    .line 31
    .line 32
    iget-object v5, p0, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 33
    .line 34
    const-wide/16 v7, 0x0

    .line 35
    .line 36
    iget-object v9, p0, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    move-object v3, v1

    .line 40
    invoke-direct/range {v3 .. v9}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    iget-object p1, p2, Lcom/ss/mediakit/net/Error;->errStr:Ljava/lang/String;

    .line 46
    .line 47
    iput-object p1, v1, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mErrorStr:Ljava/lang/String;

    .line 48
    .line 49
    const-string p2, "handle response receive err:%s"

    .line 50
    .line 51
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_0
    const/4 p2, 0x0

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ss/mediakit/net/HTTPDNS;->parserResult(Lorg/json/JSONObject;)Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 75
    .line 76
    .line 77
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v3, "handle response exception:%s"

    .line 91
    .line 92
    invoke-static {v0, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 p1, 0x0

    .line 100
    :goto_0
    if-nez p1, :cond_2

    .line 101
    .line 102
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 103
    .line 104
    const-string v0, "info null err"

    .line 105
    .line 106
    new-array p2, p2, [Ljava/lang/Object;

    .line 107
    .line 108
    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v1, p1, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mIpList:Ljava/lang/String;

    .line 121
    .line 122
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v1, "****parse suc for host:%s iplist:%s"

    .line 127
    .line 128
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-static {v2, p2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/ss/mediakit/net/IPCache;->getInstance()Lcom/ss/mediakit/net/IPCache;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    iget-object v0, p0, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p2, v0, p1}, Lcom/ss/mediakit/net/IPCache;->put(Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/ss/mediakit/net/BaseDNS;->notifySuccess(Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_3
    :goto_1
    new-instance p1, Lcom/ss/mediakit/net/Error;

    .line 149
    .line 150
    iget v3, p0, Lcom/ss/mediakit/net/HTTPDNS;->mHttpDNSType:I

    .line 151
    .line 152
    iget-object v4, p0, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 153
    .line 154
    iget-object v5, p0, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    const-string v7, "HTTP dns empty, type:%d"

    .line 165
    .line 166
    invoke-static {v0, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-direct {p1, v3, v4, v5, v6}, Lcom/ss/mediakit/net/Error;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string p1, "json null err"

    .line 174
    .line 175
    new-array p2, p2, [Ljava/lang/Object;

    .line 176
    .line 177
    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :goto_2
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 185
    .line 186
    iget-object p2, p0, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 187
    .line 188
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    const-string v0, "****parse failed for host:%s"

    .line 193
    .line 194
    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v1}, Lcom/ss/mediakit/net/BaseDNS;->notifyError(Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method static synthetic access$000(Lcom/ss/mediakit/net/HTTPDNS;Lorg/json/JSONObject;Lcom/ss/mediakit/net/Error;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/mediakit/net/HTTPDNS;->_handleResponse(Lorg/json/JSONObject;Lcom/ss/mediakit/net/Error;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private parserResult(Lorg/json/JSONObject;)Lcom/ss/mediakit/net/AVMDLDNSInfo;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "data"

    .line 6
    .line 7
    const-string v4, "TTL"

    .line 8
    .line 9
    const-string/jumbo v5, "type"

    .line 10
    .line 11
    .line 12
    iget v0, v1, Lcom/ss/mediakit/net/HTTPDNS;->mHttpDNSType:I

    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    const-string v7, ","

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    const-string v9, "receive expiredtime:%d force expiredtime:%d "

    .line 19
    .line 20
    const-string v10, "HTTPDNS"

    .line 21
    .line 22
    const/4 v11, 0x1

    .line 23
    const-string v12, ""

    .line 24
    .line 25
    const/16 v14, 0x3c

    .line 26
    .line 27
    if-eq v0, v6, :cond_1

    .line 28
    .line 29
    if-ne v0, v11, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-wide/16 v15, 0x0

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    :cond_2
    const/4 v2, 0x0

    .line 46
    goto/16 :goto_c

    .line 47
    .line 48
    :cond_3
    const-string/jumbo v0, "ttl"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_4

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v14

    .line 61
    :cond_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 62
    .line 63
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    sget v15, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalForceExpiredTime:I

    .line 68
    .line 69
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v15

    .line 73
    filled-new-array {v6, v15}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-static {v0, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v10, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget v0, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalForceExpiredTime:I

    .line 85
    .line 86
    if-lez v0, :cond_5

    .line 87
    .line 88
    move v14, v0

    .line 89
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v15

    .line 93
    mul-int/lit16 v0, v14, 0x3e8

    .line 94
    .line 95
    move/from16 v17, v14

    .line 96
    .line 97
    int-to-long v13, v0

    .line 98
    add-long/2addr v15, v13

    .line 99
    const-string v0, "ips"

    .line 100
    .line 101
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    if-eqz v13, :cond_6

    .line 106
    .line 107
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_7

    .line 112
    .line 113
    :cond_6
    const/4 v2, 0x0

    .line 114
    goto/16 :goto_c

    .line 115
    .line 116
    :cond_7
    move v14, v8

    .line 117
    const/4 v0, 0x0

    .line 118
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-ge v14, v6, :cond_a

    .line 123
    .line 124
    :try_start_0
    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    move-object v6, v0

    .line 131
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    const/4 v0, 0x0

    .line 135
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-nez v6, :cond_9

    .line 140
    .line 141
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_8

    .line 146
    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    :goto_3
    move-object v12, v6

    .line 163
    goto :goto_4

    .line 164
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    goto :goto_3

    .line 183
    :cond_9
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_a
    move-object v6, v0

    .line 187
    move/from16 v14, v17

    .line 188
    .line 189
    :goto_5
    iget v0, v1, Lcom/ss/mediakit/net/HTTPDNS;->mHttpDNSType:I

    .line 190
    .line 191
    const/4 v13, 0x3

    .line 192
    if-ne v0, v13, :cond_11

    .line 193
    .line 194
    :try_start_1
    const-string v0, "Answer"

    .line 195
    .line 196
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-ge v8, v2, :cond_f

    .line 205
    .line 206
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    if-eqz v13, :cond_e

    .line 215
    .line 216
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v13

    .line 220
    if-ne v13, v11, :cond_e

    .line 221
    .line 222
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v13

    .line 226
    if-eqz v13, :cond_b

    .line 227
    .line 228
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v14

    .line 232
    goto :goto_7

    .line 233
    :catch_1
    move-exception v0

    .line 234
    goto :goto_a

    .line 235
    :cond_b
    :goto_7
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    if-eqz v13, :cond_c

    .line 240
    .line 241
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    :cond_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-nez v2, :cond_e

    .line 250
    .line 251
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_d

    .line 256
    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    :goto_8
    move-object v12, v2

    .line 273
    goto :goto_9

    .line 274
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    goto :goto_8

    .line 293
    :cond_e
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_f
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 297
    .line 298
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    sget v3, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalForceExpiredTime:I

    .line 303
    .line 304
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-static {v0, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {v10, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    sget v0, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalForceExpiredTime:I

    .line 320
    .line 321
    if-lez v0, :cond_10

    .line 322
    .line 323
    move v14, v0

    .line 324
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 325
    .line 326
    .line 327
    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 328
    mul-int/lit16 v14, v14, 0x3e8

    .line 329
    .line 330
    int-to-long v4, v14

    .line 331
    add-long v15, v2, v4

    .line 332
    .line 333
    :cond_11
    move-object v6, v12

    .line 334
    move-wide v7, v15

    .line 335
    goto :goto_b

    .line 336
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 337
    .line 338
    .line 339
    const/4 v2, 0x0

    .line 340
    return-object v2

    .line 341
    :goto_b
    new-instance v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 342
    .line 343
    iget v4, v1, Lcom/ss/mediakit/net/HTTPDNS;->mHttpDNSType:I

    .line 344
    .line 345
    iget-object v5, v1, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 346
    .line 347
    iget-object v9, v1, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 348
    .line 349
    move-object v3, v0

    .line 350
    invoke-direct/range {v3 .. v9}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 351
    .line 352
    .line 353
    return-object v0

    .line 354
    :goto_c
    return-object v2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/mediakit/net/BaseDNS;->mCancelled:Z

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
    iput-boolean v0, p0, Lcom/ss/mediakit/net/BaseDNS;->mCancelled:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/mediakit/net/BaseDNS;->mNetClient:Lcom/ss/mediakit/net/AVMDLNetClient;

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
    invoke-direct {p0}, Lcom/ss/mediakit/net/HTTPDNS;->_getURL()Ljava/lang/String;

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
    const-string v2, "http dns url:"

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
    const-string v2, "HTTPDNS"

    .line 23
    .line 24
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/ss/mediakit/net/BaseDNS;->mNetClient:Lcom/ss/mediakit/net/AVMDLNetClient;

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
    iget-object v0, p0, Lcom/ss/mediakit/net/BaseDNS;->mNetClient:Lcom/ss/mediakit/net/AVMDLNetClient;

    .line 65
    .line 66
    new-instance v5, Lcom/ss/mediakit/net/HTTPDNS$1;

    .line 67
    .line 68
    invoke-direct {v5, p0}, Lcom/ss/mediakit/net/HTTPDNS$1;-><init>(Lcom/ss/mediakit/net/HTTPDNS;)V

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
    iget-object v0, p0, Lcom/ss/mediakit/net/BaseDNS;->mNetClient:Lcom/ss/mediakit/net/AVMDLNetClient;

    .line 82
    .line 83
    new-instance v2, Lcom/ss/mediakit/net/HTTPDNS$2;

    .line 84
    .line 85
    invoke-direct {v2, p0}, Lcom/ss/mediakit/net/HTTPDNS$2;-><init>(Lcom/ss/mediakit/net/HTTPDNS;)V

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

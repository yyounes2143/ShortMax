.class public Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;
.super Ljava/lang/Object;
.source "BytedanceHTTPDNSParser.java"

# interfaces
.implements Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParser;


# static fields
.field public static final DNS_TYPE_CUSTOM_INNER_BYTEDANCE_HTTPDNS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BytedanceHTTPDNSParser"


# instance fields
.field private final mByteDanceHttpDnsDepend:Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "new parser depend:"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "BytedanceHTTPDNSParser"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->mByteDanceHttpDnsDepend:Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->setHttpDnsDepend()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->mByteDanceHttpDnsDepend:Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;

    .line 2
    .line 3
    return-object p0
.end method

.method private setHttpDnsDepend()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedancehttpdns/httpdns/HttpDns;->getService()Lcom/bytedancehttpdns/httpdns/HttpDns;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser$1;-><init>(Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedancehttpdns/httpdns/HttpDns;->setHttpDnsDepend(Lcom/bytedancehttpdns/httpdns/IHttpDnsDepend;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public listToIPList(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v2, ","

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public parseHost(Ljava/lang/String;)Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParserResult;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "parseHost "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BytedanceHTTPDNSParser"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-static {}, Lcom/bytedancehttpdns/httpdns/HttpDns;->getService()Lcom/bytedancehttpdns/httpdns/HttpDns;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/bytedancehttpdns/httpdns/HttpDns;->getHttpDnsResultForHostSyncBlock(Ljava/lang/String;)Lcom/bytedancehttpdns/httpdns/DnsResult;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    sub-long/2addr v4, v2

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "parseHost result:"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v3, ", time:"

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    if-nez v0, :cond_0

    .line 70
    .line 71
    const-string p1, "parseHost result DnsResult is null"

    .line 72
    .line 73
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v2

    .line 77
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v4, v0, Lcom/bytedancehttpdns/httpdns/DnsResult;->ipv4List:Ljava/util/List;

    .line 83
    .line 84
    if-eqz v4, :cond_1

    .line 85
    .line 86
    iget-object v4, v0, Lcom/bytedancehttpdns/httpdns/DnsResult;->ipv4List:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-lez v4, :cond_1

    .line 93
    .line 94
    iget-object v4, v0, Lcom/bytedancehttpdns/httpdns/DnsResult;->ipv4List:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object v4, v0, Lcom/bytedancehttpdns/httpdns/DnsResult;->ipv6List:Ljava/util/List;

    .line 100
    .line 101
    if-eqz v4, :cond_2

    .line 102
    .line 103
    iget-object v4, v0, Lcom/bytedancehttpdns/httpdns/DnsResult;->ipv6List:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-lez v4, :cond_2

    .line 110
    .line 111
    iget-object v4, v0, Lcom/bytedancehttpdns/httpdns/DnsResult;->ipv6List:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    .line 115
    .line 116
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-gtz v4, :cond_3

    .line 121
    .line 122
    const-string p1, "parseHost result DnsResult ipList is null"

    .line 123
    .line 124
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v2

    .line 128
    :cond_3
    invoke-virtual {p0, v3}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->listToIPList(Ljava/util/List;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-wide v3, v0, Lcom/bytedancehttpdns/httpdns/DnsResult;->ttl:J

    .line 133
    .line 134
    long-to-int v0, v3

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v4, "parseHost result host:"

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v4, "ipList:"

    .line 149
    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v4, ", ttl:"

    .line 157
    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-static {v1, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance v1, Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParserResult;

    .line 172
    .line 173
    invoke-direct {v1, p1, v2, v0}, Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParserResult;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    return-object v1
.end method

.method public start()I
    .locals 3

    .line 1
    const-string v0, "BytedanceHTTPDNSParser"

    .line 2
    .line 3
    const-string/jumbo v1, "start"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/16 v0, 0x467

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x7

    .line 16
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x5a

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x5b

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x5c

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 34
    .line 35
    .line 36
    const/16 v0, 0x8

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setCustomHttpDNSParser(Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParser;)V

    .line 42
    .line 43
    .line 44
    return v1
.end method

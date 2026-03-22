.class Lcom/ss/mediakit/net/CustomHTTPDNS$1;
.super Ljava/lang/Object;
.source "CustomHTTPDNS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/mediakit/net/CustomHTTPDNS;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/mediakit/net/CustomHTTPDNS;


# direct methods
.method constructor <init>(Lcom/ss/mediakit/net/CustomHTTPDNS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/ss/mediakit/net/CustomHTTPDNS;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/ss/mediakit/net/CustomHTTPDNS;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v2, Lcom/ss/mediakit/net/AVMDLDNSParser;->mCustomHttpDNSParser:Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParser;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v3

    .line 15
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "----call custom httpdns, host:%s custom parser:%d"

    .line 24
    .line 25
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "CustomHTTPDNS"

    .line 30
    .line 31
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/ss/mediakit/net/AVMDLDNSParser;->mCustomHttpDNSParser:Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParser;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v4, p0, Lcom/ss/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/ss/mediakit/net/CustomHTTPDNS;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v1, v4}, Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParser;->parseHost(Ljava/lang/String;)Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParserResult;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v1, 0x0

    .line 48
    :goto_1
    iget-object v4, p0, Lcom/ss/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/ss/mediakit/net/CustomHTTPDNS;

    .line 49
    .line 50
    invoke-static {v4, v3}, Lcom/ss/mediakit/net/CustomHTTPDNS;->access$002(Lcom/ss/mediakit/net/CustomHTTPDNS;Z)Z

    .line 51
    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    iget-object v3, v1, Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParserResult;->mIPList:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_2
    sget v3, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalDefaultExpiredTime:I

    .line 65
    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    sget v4, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalForceExpiredTime:I

    .line 71
    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const-string v4, "****default expiredtime:%d force expiredtime:%d "

    .line 81
    .line 82
    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v2, v3}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget v3, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalForceExpiredTime:I

    .line 90
    .line 91
    if-lez v3, :cond_3

    .line 92
    .line 93
    int-to-long v3, v3

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    iget-wide v3, v1, Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParserResult;->mTTL:J

    .line 96
    .line 97
    :goto_2
    new-instance v12, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 98
    .line 99
    iget-object v5, p0, Lcom/ss/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/ss/mediakit/net/CustomHTTPDNS;

    .line 100
    .line 101
    iget-object v7, v5, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v8, v1, Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParserResult;->mIPList:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v5

    .line 109
    const-wide/16 v9, 0x3e8

    .line 110
    .line 111
    mul-long/2addr v3, v9

    .line 112
    add-long v9, v5, v3

    .line 113
    .line 114
    iget-object v3, p0, Lcom/ss/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/ss/mediakit/net/CustomHTTPDNS;

    .line 115
    .line 116
    iget-object v11, v3, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 117
    .line 118
    const/4 v6, 0x4

    .line 119
    move-object v5, v12

    .line 120
    invoke-direct/range {v5 .. v11}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/ss/mediakit/net/IPCache;->getInstance()Lcom/ss/mediakit/net/IPCache;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget-object v4, p0, Lcom/ss/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/ss/mediakit/net/CustomHTTPDNS;

    .line 128
    .line 129
    iget-object v4, v4, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v3, v4, v12}, Lcom/ss/mediakit/net/IPCache;->put(Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lcom/ss/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/ss/mediakit/net/CustomHTTPDNS;

    .line 135
    .line 136
    invoke-virtual {v3, v12}, Lcom/ss/mediakit/net/BaseDNS;->notifySuccess(Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v1, Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParserResult;->mIPList:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v3, p0, Lcom/ss/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/ss/mediakit/net/CustomHTTPDNS;

    .line 142
    .line 143
    iget-object v3, v3, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 144
    .line 145
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v3, "****end call custom httpdns, suc iplist:%s host:%s"

    .line 150
    .line 151
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/ss/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/ss/mediakit/net/CustomHTTPDNS;

    .line 160
    .line 161
    iget-object v1, v1, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 162
    .line 163
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const-string v3, "****end call custom httpdns, result null or iplist null host:%s"

    .line 168
    .line 169
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/ss/mediakit/net/CustomHTTPDNS$1;->this$0:Lcom/ss/mediakit/net/CustomHTTPDNS;

    .line 177
    .line 178
    new-instance v8, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 179
    .line 180
    iget-object v3, v0, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 181
    .line 182
    const-wide/16 v5, 0x0

    .line 183
    .line 184
    iget-object v7, v0, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 185
    .line 186
    const/4 v2, 0x4

    .line 187
    const/4 v4, 0x0

    .line 188
    move-object v1, v8

    .line 189
    invoke-direct/range {v1 .. v7}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v8}, Lcom/ss/mediakit/net/BaseDNS;->notifyError(Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

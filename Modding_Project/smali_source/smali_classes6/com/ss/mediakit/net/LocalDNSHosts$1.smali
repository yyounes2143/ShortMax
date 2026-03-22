.class Lcom/ss/mediakit/net/LocalDNSHosts$1;
.super Ljava/lang/Object;
.source "LocalDNSHosts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/mediakit/net/LocalDNSHosts;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/mediakit/net/LocalDNSHosts;


# direct methods
.method constructor <init>(Lcom/ss/mediakit/net/LocalDNSHosts;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/mediakit/net/LocalDNSHosts$1;->this$0:Lcom/ss/mediakit/net/LocalDNSHosts;

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
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    const-string v0, "----call local dns batch parse"

    .line 2
    .line 3
    const-string v1, "BatchParseLocalDNSHosts"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    move v2, v0

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/ss/mediakit/net/LocalDNSHosts$1;->this$0:Lcom/ss/mediakit/net/LocalDNSHosts;

    .line 11
    .line 12
    iget-object v4, v3, Lcom/ss/mediakit/net/LocalDNSHosts;->mHosts:[Ljava/lang/String;

    .line 13
    .line 14
    array-length v5, v4

    .line 15
    if-ge v2, v5, :cond_6

    .line 16
    .line 17
    aget-object v3, v4, v2

    .line 18
    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/ss/mediakit/net/LocalDNSHosts$1;->this$0:Lcom/ss/mediakit/net/LocalDNSHosts;

    .line 28
    .line 29
    iget-object v4, v3, Lcom/ss/mediakit/net/LocalDNSHosts;->mHosts:[Ljava/lang/String;

    .line 30
    .line 31
    aget-object v4, v4, v2

    .line 32
    .line 33
    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v3, v4}, Lcom/ss/mediakit/net/LocalDNSHosts;->access$002(Lcom/ss/mediakit/net/LocalDNSHosts;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    const-string v3, ""

    .line 41
    .line 42
    move-object v7, v3

    .line 43
    move v3, v0

    .line 44
    :goto_1
    iget-object v4, p0, Lcom/ss/mediakit/net/LocalDNSHosts$1;->this$0:Lcom/ss/mediakit/net/LocalDNSHosts;

    .line 45
    .line 46
    invoke-static {v4}, Lcom/ss/mediakit/net/LocalDNSHosts;->access$000(Lcom/ss/mediakit/net/LocalDNSHosts;)[Ljava/net/InetAddress;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    array-length v4, v4

    .line 51
    if-ge v3, v4, :cond_3

    .line 52
    .line 53
    iget-object v4, p0, Lcom/ss/mediakit/net/LocalDNSHosts$1;->this$0:Lcom/ss/mediakit/net/LocalDNSHosts;

    .line 54
    .line 55
    invoke-static {v4}, Lcom/ss/mediakit/net/LocalDNSHosts;->access$000(Lcom/ss/mediakit/net/LocalDNSHosts;)[Ljava/net/InetAddress;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    aget-object v4, v4, v3

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_2

    .line 70
    .line 71
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_1

    .line 76
    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    :goto_2
    move-object v7, v4

    .line 93
    goto :goto_3

    .line 94
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v6, ","

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    goto :goto_2

    .line 115
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 119
    .line 120
    iget-object v4, p0, Lcom/ss/mediakit/net/LocalDNSHosts$1;->this$0:Lcom/ss/mediakit/net/LocalDNSHosts;

    .line 121
    .line 122
    iget-object v4, v4, Lcom/ss/mediakit/net/LocalDNSHosts;->mHosts:[Ljava/lang/String;

    .line 123
    .line 124
    aget-object v4, v4, v2

    .line 125
    .line 126
    filled-new-array {v4, v7}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const-string v5, "host:%s pasrse suc result:%s"

    .line 131
    .line 132
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-static {v1, v4}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_5

    .line 144
    .line 145
    sget v4, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalDefaultExpiredTime:I

    .line 146
    .line 147
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    sget v5, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalForceExpiredTime:I

    .line 152
    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    const-string v5, "****default expiredtime:%d force expiredtime:%d "

    .line 162
    .line 163
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v1, v3}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sget v3, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalForceExpiredTime:I

    .line 171
    .line 172
    if-lez v3, :cond_4

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_4
    sget v3, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalDefaultExpiredTime:I

    .line 176
    .line 177
    :goto_4
    new-instance v11, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 178
    .line 179
    iget-object v4, p0, Lcom/ss/mediakit/net/LocalDNSHosts$1;->this$0:Lcom/ss/mediakit/net/LocalDNSHosts;

    .line 180
    .line 181
    iget-object v4, v4, Lcom/ss/mediakit/net/LocalDNSHosts;->mHosts:[Ljava/lang/String;

    .line 182
    .line 183
    aget-object v6, v4, v2

    .line 184
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 186
    .line 187
    .line 188
    move-result-wide v4

    .line 189
    mul-int/lit16 v3, v3, 0x3e8

    .line 190
    .line 191
    int-to-long v8, v3

    .line 192
    add-long/2addr v8, v4

    .line 193
    iget-object v3, p0, Lcom/ss/mediakit/net/LocalDNSHosts$1;->this$0:Lcom/ss/mediakit/net/LocalDNSHosts;

    .line 194
    .line 195
    iget-object v10, v3, Lcom/ss/mediakit/net/LocalDNSHosts;->mId:Ljava/lang/String;

    .line 196
    .line 197
    const/4 v5, 0x0

    .line 198
    move-object v4, v11

    .line 199
    invoke-direct/range {v4 .. v10}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/ss/mediakit/net/IPCache;->getInstance()Lcom/ss/mediakit/net/IPCache;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    iget-object v4, p0, Lcom/ss/mediakit/net/LocalDNSHosts$1;->this$0:Lcom/ss/mediakit/net/LocalDNSHosts;

    .line 207
    .line 208
    iget-object v4, v4, Lcom/ss/mediakit/net/LocalDNSHosts;->mHosts:[Ljava/lang/String;

    .line 209
    .line 210
    aget-object v4, v4, v2

    .line 211
    .line 212
    invoke-virtual {v3, v4, v11}, Lcom/ss/mediakit/net/IPCache;->put(Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :catchall_0
    move-exception v3

    .line 217
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 218
    .line 219
    iget-object v5, p0, Lcom/ss/mediakit/net/LocalDNSHosts$1;->this$0:Lcom/ss/mediakit/net/LocalDNSHosts;

    .line 220
    .line 221
    iget-object v5, v5, Lcom/ss/mediakit/net/LocalDNSHosts;->mHosts:[Ljava/lang/String;

    .line 222
    .line 223
    aget-object v5, v5, v2

    .line 224
    .line 225
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    const-string v5, "host:%s pasrse err:%s"

    .line 234
    .line 235
    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-static {v1, v3}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_6
    const/4 v0, 0x1

    .line 247
    invoke-static {v3, v0}, Lcom/ss/mediakit/net/LocalDNSHosts;->access$102(Lcom/ss/mediakit/net/LocalDNSHosts;Z)Z

    .line 248
    .line 249
    .line 250
    const-string v0, "****end call local dns batch parse"

    .line 251
    .line 252
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    return-void
.end method
